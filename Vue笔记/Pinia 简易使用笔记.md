# Pinia 简易使用笔记

## 一、安装

```bash
npm i pinia
```

## 二、初始化

### 1. `main.ts`

```js
import { createPinia } from 'pinia'
const pinia = createPinia()
createApp(App).use(pinia).mount('#app')
```

### 2.新建 `store/index.ts`

```js
import {defineStore} from 'pinia'
export const mainStore = defineStore('main',{
    state:()=>{
        return {}
    },
    getters:{},
    actions:{}
})
```

## 三、基本使用

### 1. `state`

```js
import { mainStore } from '../store/index'
const store = mainStore()

/*	template中使用 state中的xxx变量，修改state数据直接修改即可，具有响应式
	{{ store.xxx }}
*/
```

### 2.解构state

解构时，用普通方法会失去响应式

```js
// 使用这种方法可将数据变成响应式
import { mainStore } from '../store/index'
import {storeToRefs} from 'pinia'
const store = mainStore()
const {name} = storeToRefs(store)

// 使用: {{name}}
```

### 3.第二种修改方法

store.$patch ，可用于同时修改多个，vue有优化

```js
const handleClick = ()=>{
    store.$patch({
        name: store.name++
        // xxx
    })
}
```

### 4. 第三种修改方法

store.$patch 传递函数

```js
store.$patch((state)=>{
    state.name + = 1
    // xxx
})
```

### 5.第四种修改方法

配合action实现逻辑复杂的修改

```js
// store/index.ts
action:{
    // 不要使用箭头函数
    changeState(){
        // 在此处修改state
        this.name += 1
        // this.xxx = xx
    }
}
// 使用：store.changeState()
// @click="store.changeState"
```

### 6.getters

与vuex的getters一致，类似于计算属性，具有缓存机制，如果重复调用，只会调用一次

```js
// 示例 修改手机号码中间四位，使其变成*号
// store/index.ts ,state里面有个phone变量
getters:{
    phoneHidden(state){
        return state.phone.toString().replace(/^(\d{3})\d{4}(\d{4})$/,'$1****$2')
    }
}

// 第二种写法
getters:{
    phoneHidden():String{
        return this.phone.toString().replace(/^(\d{3})\d{4}(\d{4})$/,'$1****$2')
    }
}
```



## 四、多个store互相调用

新建一个 store/test.ts 

```js
import { defineStore } from 'pinia'
export const testStore = defineStore('testStore',{
    state:()=>{
        return {
            list:['小红','小东','小兰']
        }
    }
}
```

在 store/index.ts 中引入

```js
import { testStore } from './test'

// 使用：
getters:{
    testData(){
        // 引入的是方法，所以得加()
        console.log(testStore().list)
    }
}
```

