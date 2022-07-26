# Webpack

## 1.安装

```bash
npm i webpack -d
npm i webpack-cli -d
```

## 2.使用

新建 webpack.config.js

```js
const path = require('path')
module.exports = {
    entry:'xxx.js',   // 入口文件
    output:{
        filename:'xxx.js',
        path:path.resolve(__dirname,'./dist')
        clean:'true'     // 清除上次的打包文件
    },
    mode:'none'
}
```

```bash
npx webpack
```

## 3.HtmlWebpackPlugin

自动在生成html入口文件并引入js

```bash
npm i html-webpack-plugin -d
```

```js
// webpack.config.js
plugins:[
    // 实例化插件
    new HtmlWebpackPlugin({
        template:'./index.html',
        filename:'app.html'，          // 生成的文件名字
        inject:'body'，					// 指定在哪里插入script标签	
    }) 
]
```

## 4.devtool

```js
// 配置devtool 用于让打包后的代码正常显示，并且错误指向原js文件
mode：'development',
devtool:'inline-source-map',
```

## 5.npx webpack --watch

自动编译

## 6.自动刷新

放到内存里，删掉dist也可以

```bash
npm install webpack-dev-server -d
```

```js
devServer:{
    static:'./dist'
}
```

```bash
npx webpack-dev-server
```

## 7.Resource资源

```js
module:{
    rules:[
        {
            test:/\.png$/,
            type:'asset/resource',
            generator:{
                filename:'images/[contenthash][ext]'
            }
        }
    ]
}
```

```js
// generator 可以用 output配置项代替 1优先级高
output:{
 	assetModuleFilename:'images/[contenthash][ext]'
}
```

