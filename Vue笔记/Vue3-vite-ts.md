# Vue3 + vite + element-plus + ts

## 一、安装

```bash
npm init vite@latest
npm i
```

## 二、修改端口

```js
// vite.config.ts
server:{
    host:'0.0.0.0',
    port:8080,
    open:true
}
```

## 三、配置别名

vite

```bash
// 使用 dirname才需要安装，但是目前使用没毛病，不安装
npm i @types/node --save--dev
```

```js
// vite.config.ts 
import { resolve } from 'path' // 注意导入的包是path
resolve:{
    alias:[
      {
        find:'@',
        replacement:resolve(__dirname,'src')
      }
    ]
  }
```

跳到第六步

## 四、配置路由

扩展禁用 `Vetur` 使用 `Vue Language Features (Volar)  `

```bash
npm i vue-router
```

router/index.ts

```ts
import {createRouter,createWebHistory,RouteRecordRaw} from 'vue-router'
const routes:Array<RouteRecordRaw> = [
  {
    path:'/',
    name:'home',
    component:()=>import('@/components/HelloWorld.vue')
  }
]
const router = createRouter({
  history:createWebHistory(),
  routes
})
export default router
```

main.ts

```js
import router from './router/index'
createApp(App).use(router).mount('#app')
```

App.vue

```js
<router-view />
```

## 五、安装vuex

```bash
npm i vuex@next -s
```

store/index.ts

```js
import { InjectionKey } from 'vue'
import { createStore, useStore as baseUseStore, Store } from 'vuex'

export interface State {
  count: number
}

export const key: InjectionKey<Store<State>> = Symbol()

export const store = createStore<State>({
  state: {
    count: 0
  },
  mutations:{
    setCount(state:State,count:number){
      state.count = count
    }
  },
  getters:{
    getCount(state:State){
      return state.count
    }
  }
})

// 定义自己的 `useStore` 组合式函数
export function useStore () {
  return baseUseStore(key)
}
```

main.ts

```js
import {store,key} from './store/index'
createApp(App).use(router).use(store,key).mount('#app')
```

组件中使用

```js
<script setup lang="ts">
import { ref,computed } from "vue";
import {useStore} from '@/store'
const store = useStore();
const count = ref(0);
const showCount = computed(()=>{
  return store.getters['getCount']
})
const addBtn = ()=>{
  store.commit('setCount',++count.value)
}
</script>

<template>
  <button type="button" @click="addBtn">count is: {{ count }}</button>

</template>

<style scoped>
</style>
```

## 六、配置 ts 别名引入 @

tsconfig.json

```js
// compilerOptions下
 "baseUrl": ".",
    "paths": {
      "@/*": [
        "src/*"
      ]
    },
```

ts排除文件

```js
// 最外层最底部
"exclude":["node_modules"]
```

## 七、sass

```bash
npm i -d sass sass-loader
```

## 八、element-plus

```bash
npm i element-plus -s
```

自动按需引入

```bash
npm install -D unplugin-vue-components unplugin-auto-import
```

vite.config.ts

```js
// vite.config.ts
import AutoImport from 'unplugin-auto-import/vite'
import Components from 'unplugin-vue-components/vite'
import { ElementPlusResolver } from 'unplugin-vue-components/resolvers'

export default {
  plugins: [
    // ...
    AutoImport({
      resolvers: [ElementPlusResolver()],
    }),
    Components({
      resolvers: [ElementPlusResolver()],
    }),
  ],
}
```

# 九、defineProps、defineEmits

在 `scripit setup` 中无需引入直接使用

```js
// 父组件
// <Test :test-Data="a" @test="sendData"></Test> 
// js
const a = '父props'
function sendData(e){
  console.log('父:',e)
}
```

```js
// 子组件
// {{testData}}
defineProps({
    testData: String
})
const emits = defineEmits(['test'])
emits('test','zs')
```



