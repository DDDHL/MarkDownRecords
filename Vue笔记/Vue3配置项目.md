## vue3-vite-ts

### 1.配置别名
```js
// vite.config.ts
import path from 'path'
export default defineConfig({
  plugins: [...],
  ...
  resolve: {
    alias: [
      {
        find: '@',
        replacement: path.resolve('./src')
      }
    ]
  }
})
```

### 3.配置env变量

- src/env.d.ts

```js
interface ImportMetaEnv {
  VITE_APP_TITLE: string
  VITE_SOFEDATA_URL: string
}
```

- src/.env.development
```js
ENV='development'
VITE_SOFEDATA_URL = 'http://localhost:8887'
```

- src/.env.production
```js
ENV='production'
VITE_SOFEDATA_URL = 'http://localhost:8887'
```

- JS中使用
```js
import.meta.env.VITE_SOFEDATA_URL
```

### 4.自动导入vue组件\hook
- 安装
```bash
npm i -D unplugin-auto-import
```
- 配置
```js
// vite.config.ts
import AutoImport from "unplugin-auto-import/vite"
export default defineConfig({
  plugins: [
    ...
     AutoImport ({
      imports: ["vue", "vue-router"], // 自动导入vue和vue-router相关函数
      dts: "src/auto-import.d.ts" // 生成 `auto-import.d.ts` 全局声明
    })
  ]
})
```