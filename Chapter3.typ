/*
3. 高级样式
*/

// 将论文标题保存为变量
// 这样不必为页眉与页脚输入两次
#let title = [
  A fluid dynamic model for glacier flow
]

// 3.2 规则
// 对于页脚页码，可以设置为：(1/1)。显示当前页和总页数
#set page(
  paper: "us-letter", // 页面大小为美国信纸大小
  header: align(right + horizon, title),
  numbering: "1", // 页脚中央编号
)

#set par(
  justify: true, // 段落校正
)

#set text(font: ("Linux Libertine"), size: 11pt)

// 3.3.1 标题
#align(center, text(17pt)[
  *#title*
])

// 3.3.2 作者

#grid( // 网格功能创建布局
  columns: (1fr, 1fr), // 基本布局
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ],
)

// 3.3.3 摘要

// 内容块的范围是风格化的，在一个内容块中设置的任何东西都只会影响该块中的内容
#align(center)[
  #set par(justify: false)
  *Abstract*\
  #lorem(80)
]

// 3.4.1 主体文本双栏
#show: rest =>columns(2, rest)

// 3.4.2 标题
#show heading:it=>[ // 将标题作为参数传递
  #set align(center) // 居中
  #set text(12pt, weight: "regular") // 字体设置
  #block(smallcaps(it.body)) /* 标题默认为粗体，使用该函数以小写字母呈现标题内容 */ ]

// 3.4.3 标题级别
// 通过选择器
#show heading.where(
  level: 1, // 一级标题
):it=>block(width: 100%)[
  #set align(center)
  #set text(13pt, weight: "regular")
  #smallcaps(it.body)
]

#show heading.where(
  level: 2, // 二级标题
):it=>text(
  size: 11pt,
  weight: "regular", // 字重：常规
  style: "italic", // 斜体
  it.body + [.], // 分节标题末尾自动增加一个句号
)

= Introduction

This paper introduces a cutting-edge fluid dynamic model that encapsulates the
intricate processes governing glacier flow, employing principles from continuum
mechanics, thermodynamics, and ice rheology. The core of the model is rooted in
the Navier-Stokes equations, which have been extended and adapted to account for
the unique characteristics of glacial ice, treating it as a non-Newtonian fluid.
This adaptation includes variables such as temperature, pressure, and strain
rate, all of which significantly influence ice deformation, alongside basal
sliding mechanisms and internal ice fabric.

= Related Work
Our model innovatively integrates a sophisticated computational method that
solves this complex system of equations. It allows for high-resolution
simulations that capture the spatial and temporal variability inherent in
glacier dynamics. By leveraging advanced numerical techniques like adaptive mesh
refinement, robust iterative solvers, and specialized algorithms for boundary
condition handling, our model offers unprecedented accuracy and efficiency.

== Motivation
The validity and reliability of this novel model are substantiated through
meticulous comparisons with empirical data collected from field observations and
existing theoretical models. A series of case studies are presented, ranging
from glacier surges to calving events and responses to climate-driven melting
scenarios. These simulations not only validate the model's predictive
capabilities but also offer fresh perspectives on the fundamental physics
governing glacier motion.

== Problem Statement
Furthermore, the implications of our findings extend beyond academic inquiry,
providing a powerful tool for forecasting glacier evolution under varying
climatic conditions. This model can potentially enhance predictions related to
sea-level rise projections and freshwater resource assessments, thus
contributing to more informed decision-making in climate change mitigation and
adaptation strategies.

== conclusion
This fluid dynamic model represents a significant advancement in the
understanding and simulation of glacier flow, bridging the gap between
theoretical glaciology and practical applications in Earth system science and
environmental management.

== Keywords
Glacier dynamics, Non-Newtonian fluid modeling, Ice rheology, Continuum
mechanics, Computational fluid dynamics, Climate change impact, Sea-level rise
prediction, Freshwater resources.