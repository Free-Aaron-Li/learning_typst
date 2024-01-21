/*
设置参考模板
*/

// 标题设置默认值，这样就可以在不指定标题的情况下调用该模板
// 作者为字典数组，键：姓名、所属单位和单位邮件
#let conf(
  title: none, // 标题设置默认值
  authors: (), // 作者设置为字典数组
  abstract: [],
  doc,
)={
  // 页面
  // 大小、页边距、页眉、页脚
  set page(
    paper: "us-letter",
    margin: (x: 1.8cm, y: 1.5cm),
    header: align(right + horizon, title),
    numbering: "(1/1)",
  )
  // 段落
  // 段落矫正、行距
  set par(justify: true, leading: 0.8em)
  // 文本
  // 字体家族、大小、颜色
  set text(
    font: "Linux Libertine",
    size: 11pt,
    fill: black, // 颜色
  )

  // 设置全局对齐为中心对齐
  set align(center)
  // 作者排序
  let counter = authors.len() // 作者数目
  let ncols = calc.min(counter, 3) // 作者数目取余
  // 标题
  text(17pt)[*#title*]
  // 作者
  grid(columns: (1fr,) * ncols, row-gutter: 24pt, ..authors.map(author=>[
    #author.name \
    #author.affiliation \
    #link("mailto:" + author.email)
  ]))
  // 摘要
  par(justify: false)[
    *Abstract* \
    #abstract
  ]
  // 正文
  set align(left)
  columns(2, doc)
}

