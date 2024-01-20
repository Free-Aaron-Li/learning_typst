/*
2.3 设置页面
*/

// 设置规则，用于根据特定样式的元素类型选择函数
// 常见的规则函数：
// text：设置字体家族、大小、颜色和文本的其他属性
// page：设置页面大小、页边距、页眉、启用列和页脚
// par：设置段落的对齐方式、设置行距等等
// heading：设置标题的外观并启用编号
// document：设置PDF输出中包含的元数据，如标题和作者
#set page(paper: "a6", margin: (x: 1.8cm, y: 1.5cm))

#set par(justify: true, leading: 0.52em)

#set text(
  size: 10pt,
  font: ("Times New Roman", "Source Han Serif SC"),
  lang: "zh",
  region: "cn",
)

#set heading(numbering: "1.")

= Introduction

// 占位符
#lorem(10)

== Background

#lorem(12)

== Methods

#lorem(15)

/*
2.格式
*/

// 为了与其他文档（或之前的文档）相匹配，还需要对格式进行修改以保证一致性

/*
2.1 设置格式
*/

// par函数证明它所在段落的合理性
#par(
  justify: true,
)[
  = Background

  In the case of glaciers, fluid dynamics principles can be used to understand how
  the movement and behavior of the ice is influenced by factors such as
  temperature, pressure, and the presence of other fluids (such as water).
]

// 如果想要运用在整个文件上，则可以使用set关键字：
// 用于设置规则
// #set par(justify:true)

#align(center + bottom)[
  #image("asset/image/glaciers.jpg", width: 70%)
  *Glaciers form an important part of the earth's climate system.*
]

/*
2.5 显示规则
*/

// 当需要对某个项目添加额外的标志时
// 防止logo和名字之间出现换行
// 设置显示规则以改变文本在整个文档中的显示方式
#show "ArtosFlow":name => box[
  #box(image("asset/image/logo.png", height: 0.7em))
  #name
]

This report is embedded in the ArtosFlow project. ArtosFlow is a project of the
Artos Institute. #image("asset/image/logo.png", height: 0.7em)

