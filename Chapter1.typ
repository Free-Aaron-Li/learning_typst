#set page(paper: "a4")

#set text(
  size: 14pt,
  font: ("Times New Roman", "Source Han Serif SC"),
  lang: "zh",
  region: "cn",
)

/*
1. 用Typst写作
*/

In this report, we will explore the various factors that influence fluid
dynamics in glaciers and how they contribute to the formation and behavior of
these natural structures.

// = 标题， _word_ 表示强调

= Introduction

In this report, we will explore the various factors that influence _fluid dynamics_ in
glaciers and how they contribute to the formation and behavior of these natural
structures.

// 列表：+ & -， +有序，-无序

+ The Climate
  - Temperature
  - Precipitation
+ The topography
+ The geology

/*
1.1 增加图形
*/

// Typst支持PNG、JPEG、GIF和SVG格式图像
// Typst仅对最常见的东西保留标记符号，其他东西都是用函数插入方式实现。

// image参数:
// string:图片路径
// int:图片宽度(width)
#image("asset/image/glaciers.jpg", width: 70%)

// figure函数，将图内容作为位置参数，可选标题作为命令参数
#figure(image("asset/image/glaciers.jpg", width: 70%), caption: [
  _Glaciers_ form an important part of the earth's climate system.
])

// 标题由任意的标记组成，为了给一个函数做标记，我们把它放在方括号里面。这种结构称为内容块
// 内容块可以包含任何其他类型的标记、函数调用等等

// 标签，作为文件中唯一地标识一个元素，将名称放在角括号里。作为引用使用
#figure(image("asset/image/glaciers.jpg", width: 70%), caption: [
  _Glaciers_ form an important part of the earth's climate system.
])<glaciers>

Glaciers as the one shown in @glaciers will cease to exist if we don't take
action soon!

/*
1.2 增加参考书目
*/

= Methods

// 当文件中包含了书目（例如下方的thesis-ref.bib文件），便可以引用其中的标签（例如：goossens97）。
// Typst支持不同的引文和书目样式
We follow the glacier melting models established in @goossens97,@talbot97。

#bibliography("asset/reference/thesis-ref.bib")

/*
1.3 数学
*/

// Typst内置数学模板与其自己的数学符号
// 使用$$包围表示数学表达式

The equation $Q=rho A v + C$ defines the glacial flow rate

// 数学表达式（方程）默认内行排版（即与周围文字处于同一行）。如果想要放在自己行，则需要在开始与结尾处各插入一个空格。

$ Q=rho A v + C $

// Typst数学模式下，会逐字显示单字母，但是对于多字母则会被解释为符号、变量或函数名。如果想要由多个字母组成的变量，需要用引号括起来。

The flow rate of a glacier is given by the following equation:

$ Q=rho A v+ "time offset"*1 $

// Typst中有许多的特定符号，例如求和sum
Total displaced soil by glacial flow:
$ 7.32 beta+sum_(i=0)^nabla Q_i/2 $ // 下标用_，上标用^

$ 7.32beta+
sum_(i=0)^nabla
(Q_i (a_i -epsilon )) / 2 $

// 当然，不是所有的数学结构都有特殊语法，可以使用函数来解释特定的数学格式
$ v := vec(x_1, x_2, x_3) $

// 有些功能仅在数学模式下可用：
// 例如一些函数（如cal,用于排版常用于套装的书法字体）
// 一些符号的变体，例如arrow.squiggly（通常是`符号`.`修饰语`）
$ a arrow.squiggly b $