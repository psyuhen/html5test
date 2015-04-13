HTML5培训内容
=============

什么是 HTML5?
-------------
HTML5 是下一代的 HTML,它将成为 HTML、XHTML 以及 HTML DOM 的新标准，目前它仍处于完善之中，但大部分现代浏览器已经具备了某些 HTML5 支持，
它由W3C和WHATWG合作的结果。

HTML5时间轴
-----------
![HTML5时间轴](D:/learn/书籍/html/img/时间轴.png "HTML5时间轴")

如图，在2012年，将会由W3C发布候选推荐版，这个版本的发布就代表着HTML5的规范编写已经完成了。而2022年推出的计划推荐版，则意味着至少会有两个浏览器会完全的支持HTML5的所有特性

为什么要使用HTML5
-----------------

* 易用性
    - 提供了更加多的标签,如:`&lt;header&gt;,&lt;footer&gt;,&lt;nav&gt;,&lt;section&gt;,&lt;aside>`等等,使得阅读者更加容易去访问内容
* 视频和音频支持
    - `<video data-osrc=""/>`
* Doctype
    - `<!doctype html>`
* 更清晰的代码
    - 使用更加语义的标签比使用DIV来得更加清晰易于阅读
* 更聪明的存储
    - HTML5中最酷的特性就是本地存储。（像cookie和客户端数据库）
* 更好的互动
    - 动画
* 游戏开发
* 遗留及其跨浏览器支持
    - 虽然老旧浏览器不支持html5，但可以使用javascript来模板支持：
    - `<!--[if lt IE 9]> <script data-osrc="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->`
* 移动，移动还是移动
    - 手机端也支持哟，Adobe都放弃移动flash开发咯。
* 它是未来，开始用吧！

HTML5新特性
----

##### 语义化
语义化的网路是可以让电脑能够更加理解网页的内容，对于像是搜寻引擎的优化（SEO）或是推荐系统可以有很大的帮助。<br/> 
New tags – 新的标签，像是`<header>、<section>`等 <br/>
Application tags – 也是新的标签，像是`<meter>、<progress>`等 <br/>
Microdata – 加入语意的资料让搜寻引擎等网站可以正确显示 <br/>
Form type – `<form>` 可以加入的type便多了，包含email和tel等属性，浏览器会协助进行资料格式的验证  
```html
<input type=email />  … 限制用户输入email格式
<input type=url /> … 限制用户输入网址格式
<input type=date  />… 限制用户输入日期格式
<input type=time /> … 限制用户输入时间格式
<input type=month /> … 限制用户输入月份格式
<input type=week  />… 限制用户输入周格式
<input type=number />  … 限制用户输入数字格式
<input type=range /> … 一个滑动条效果
<input type=search /> … 搜索格式 results="n"
<input type=color /> … 选择颜色格式
```

![语义化](D:/learn/书籍/html/img/语义.png "语义化")


##### 离线功能

HTML5透过JavaScript提供了数种不同的离线储存功能，相对于传统的Cookie而言有更好的弹性以及架构，并且可以储存更多的内容。 <br/>
WebStorage – 比Cookies更大、更有弹性的的储存 <br/>
Web SQL Database – 本地端的SQL  <br/>
Indexed DB – Key-value的本地  <br/>
Application Cache – 将部分常用的网页内容cache起来 <br/>

如图： 
![离线功能](D:/learn/书籍/html/img/离线图.jpg "离线功能") 

例子： 
```html

```
 
##### 即时通讯
以往网站由于HTTP协定以及浏览器的设计，即时的互动性相当的受限，只能使用一些技巧来「模拟」即时的通讯效果，但HTML5提供了完善的即时通讯支援。 
什么轮询、第三方的统统不要，自已来实现。 
WebSocket – 即时的socket连线 
Web Workers – 以往JavaScript都是single thread，透过Worker可以有多个运算 
Notifications – 塬生的提示讯息，类似像OS X的Growl提示 

如淘宝的Web客服使用WebSocket 
![淘宝的Web客服](D:/learn/书籍/html/img/chat.png "淘宝的Web客服")

 
##### 文件以及硬件支持

不知道大家有没有发现，在Gmail等新的网页程式当中，已经可以透过拖拉的方式将档案作为邮件附件？这就是这部份HTML5档案的功能中的Drag’n  Drop和File API。 
Drag’n Drop – HTML元素的拖拉 
File API – 读取使用者本机电脑的内容 
Geolocation – 地理定位 
Device orientation – 手持装置的方向 (用在移动端比较多，如：摇一摇等)
Speech input – 语音输入 


##### 多媒体

Audio、Video的标签支援以及Canvas的功能应该是大家对于HTML5最熟悉的部份了，也是许多人认为Flash会被取代的主要原因。 
Audio video – 影片和音乐的源生播放支援 
Canvas – 2D的绘图功能支援 
Canvas 3D – 3D的绘图功能支援 
SVG – 向量图支援 


##### CSS3

CSS3支援了字体的嵌入、版面的排版，以及最令人印象深刻的动画功能 
Selector – 更有弹性的选择器 
Webfonts – 嵌入式字体 
Layout – 多样化的排版选择 
Stlying radius gradient shadow – 圆角、渐层、阴影 
Border background – 边框的背景支援 
Transition – 元件的移动效果 
Transform – 元件的变形效果 
Animation – 将移动和变形加入动画支援 


## HTML5适用于哪些项目?

开放讨论.....

## 资源
* [html5 DEMO](http://html5demos.com/) 
* [Canvas放大镜](http://neofreeman.freepgs.com/experiments/zoomr/puggy.html) 
* [WebStorage](http://dev.w3.org/html5/webstorage/) 
* [CSS3](http://www.w3.org/TR/css3-transitions/) 
* [html5test](http://html5test.com/)

谢谢
----

![thank you](D:/learn/书籍/html/img/thanks.png)

