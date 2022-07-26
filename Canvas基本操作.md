# Canvas基本操作

## 0.拓展

`随机颜色`

```js
// #
parseInt((Math.random()*0xFFFFFF).toString(16))
// rgb
Math.floor(Math.random() * 256);
```

`vue3 组合式api获取dom`

```js
// <canvas width="500" height="500" ref="canvas">xxx<canvas>
import {ref,onMounted} from "vue"
const canvas = ref()
onMounted(()=>{
    console.log(canvas.value)
})
```

## 1.新建画布

使其左右居中，可以用 `display:block;margin:0 auto;`

```html
// 不兼容的浏览器会显示文字
<canvas width="300" height="300">您的浏览器不兼容，请升级或者更换浏览器！</canvas>
```

## 2.画直线

```js
// 示例
// 获取画布
var canvas = document.getElementById('canvas')
// 获取上下文对象
var c = canvas.getContext('2d')
// 开启一条路径
c.beginPath()
// 确定起始点 100,100 为坐标
c.moveTo(100,100)
// 到哪去，确定结束点
c.lineTo(200,200)
// 属性设置或返回用于笔触的颜色、渐变或模式
c.strokeStyle = 'green' // rgb也行
// 设置线宽
c.lineWidth = 5
// 上色
c.stroke()
// 关闭路径
c.closePath()
```

## 3.画虚线

```js
// 横向虚线
drawLine(100,100,105,100)
drawLine(110,100,115,100)
drawLine(120,100,125,100)
drawLine(130,100,135,100)
// for改进
for(var i = 0;i<30;i++){
    drawLine(100+10*i,100,105+10*i,100)
}
```

## 4.画矩形

x,y 左上角坐标，width,height 矩形的长宽

- 普通矩形，可填充

```js
// 如果需要描边和填充，注意先填充再描边
c.rect(x,y,width,height)
// 填充
c.fillStyle = 'red'
c.fill()
// 设置边样式
c.strokeStyle = 'red'
c.lineWidth = 5
// 描边
c.stroke()
```

- 实心矩形

```js
// 实心矩形不可描边
c.fillStyle = 'red'
c.fillRect(x,y,width,height)
```

- 空心矩形

```js
// 空心矩形
c.strokeStyle = 'red'
c.lineWidth = 5
c.strokeRect(x,y,width,height)
```

## 5.清除画布

x,y 左上角坐标，width,height 矩形的长宽

```js
c.clearRect(x,y,width,height)
```

## 6.画圆

| *x*                | 圆的中心的 x 坐标。                                          |
| ------------------ | ------------------------------------------------------------ |
| *y*                | 圆的中心的 y 坐标。                                          |
| *r*                | 圆的半径。radius                                             |
| *sAngle*           | 起始角，以弧度计（弧的圆形的三点钟位置是 0 度）。startAngle  |
| *eAngle*           | 结束角，以弧度计。endAngle                                   |
| *counterclockwise* | 可选。规定应该逆时针还是顺时针绘图。False = 顺时针，true = 逆时针。 |

```js
c.beginPath()
c.arc(x,y,r,sAngle,eAngle,counterclockwise)
// 示例
// 如果有其他线存在，可能会导致起始角连接线，这时只需要重新设置canvas的moveTo为起始角坐标即可
// c.moveTo(450,250)
c.arc(250,250,200,0,Math.PI*2,false)
c.fillStyle = 'red'
c.strokeStyle = 'green'
c.lineWidth = 'yellow'
c.stroke()
c.fill()
```

注意点：

- `beginPath()` 后,会在前面自动执行一次`closePath()`，相当于重新画，而不是沿着之前的末尾坐标画。
- 在圆描边前 `closePath()` 会把未闭合的圆用线连接
- 3点钟开始顺时针方向角度为 0 ~`Math.PI*2`

## 7.碰撞检测

