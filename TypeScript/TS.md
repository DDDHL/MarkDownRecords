# TS

# 一、初始化

## 1.全局安装ts

```bash
npm i -g typescript
```

## 2.将ts转成js

```bash
tsc xxx.ts
```

## 3.优化编译

### （1）解决TS和JS冲突问题

```bash
tsc --init  # 生成配置文件
```

### （2）自动编译

```ba
tsc --watch
```

### （3）发出错误

```bash
tsc -noEmitOnError xxx.ts
```

# 二、开始

## 1.降级编译

将编译后的js向下兼容(自动转换)，比如es2015 转成 es5

`tsconfig.json`文件中修改`"target":"es5"`

## 2.严格模式

`tsconfig.json`文件中修改 `"strict":true`, `"noImplicitAny":true`, `"strictNullChecks":true`

## 3.基元类型

```js
let str:string = 'hello ts'
let num: number = 100
let bool: boolean = true
```

## 4.数组

两种写法 `type[]` , `Array<type>`

```js
// 示例
let arr: number[] = [1,2,3]
let arr1: Array<number> = [1,2,3] 
```

## 5.函数返回类型注释

```js
function greet(name: string): void {
    console.log("Hello," + name)
}
```

## 6.对象类型

```js
function printCoord(pt: {x:number, y: number}){
    console.log(pt.x)
    console.log(pt.y)
}
printCoord({
    x:3,
    y:7
})
```

last? 代表用户可传可不传

```js
function printName(obj:{first: string, last?: string}){
    // last不传时的检测办法1
    //if(obj.last !== undefined){
    //    console.log(boj.last)
    //}
    // last不传时的检测办法2
    console.log(obj.last?.toUpperCase())
}
printName({
    first:'LHD'
})
printName({
    first:'LHD',
    last:'999'
})
```

## 7.联合类型

可以写多种类型，内部使用某些类型方法时需要先判断类型

```js
let id: number | string
```

## 8.类型别名

type 只是定义类型 , type 添加字段不能用同名方式，而接口可以

```js
type Point = {
    x: number,
    y: number
}
function printCoord(pt: Point){
    
}
printCoord({
    x: 100,
    y: 100
})

type ID = number | string
function printId(id: ID){
    
}
printId(100)
printId('hellow')
```

交叉拓展 类型别名

```js
// 交叉拓展 类型别名
type Animal = {
    name: string
}
type Bear = Animal & {
    honey: boolean
}
const bear: Bear = {
    name: 'lhd',
    honey: true
}
```

## 9.接口

接口 专注于结构功能

```js
interface Point {
    x: number,
    y: number
}
function printPoint(pt: Point){
    
}
printPoint({
    x: 100,
    y: 200
})

```

拓展接口

```js
// 拓展接口
interface Animal {
    name: string
}
interface Bear extends Animal {
    honey: boolean
}
const bear: Bear = {
    name: 'lhd',
    honey: true
}
```

向现有类型添加字段

```js
interface MyWindow {
    count: number
}
interface MyWindow {
    title: string
}
const w: MyWindow {
    title: 'hello ts',
    conunt: 100
}
```

## 10.类型断言

当不知道具体类型时使用断言

```js
const myCanvas = document.getElementById("main_canvas") as HTMLCanvasElement
const myCanvas = <HTMLCanvasElement>document.getElementById("main_canvas")
const x = ('hello' as unknown) as number
const x = ('hello' as any) as number

//示例 用法 变量 as 类型 <类型>变量
s = e as string
s = <string>e
```

## 11.文字类型

```js
let x: 'hello' = 'hello'
// x = 'world' 报错
function printText(s: string, alignment: 'left' | 'right'){
    
}
printText('hello','lhd') // 报错
function compare(a: string, b: string): -1 | 0 | 1 {
    return a === b ? 0 : a>b ? 1: -1  // 返回其他值就会报错
}
```

### 12.未知参数个数

```js
let c: {name: string, [proName:string]: any}
```



## 三、拓展

### 1.类型断言跳过编译

类型断言有时会有红色下划线报错，这时加个 `!` 在末尾即可跳过ts编译，相当于声明它必有值

### 2. ? 和 ?? 和 !! 的作用

? 代表值可有可无 `name?: string`

!! 将一个其他类型转换成boolean类型，类似于Boolean()

?? 空值合并操作符，当操作符的左侧是null或者undefined时，返回其右侧操作数，否则返回左侧操作数

```js
console.log(ss??'你好');  // 若ss为null或者undefined 显示右侧
```



















