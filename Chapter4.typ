/*
4. 制作模板
*/
#set page(paper: "a4")

#set text(
  size: 14pt,
  font: ("Times New Roman", "Source Han Serif SC"),
  lang: "zh",
  region: "cn",
)

// 4.1 玩具模板
// 模板是一种函数，可以用它来包装自己的整个文档。
#let amazed(term, color: blue)={
  text(color, box[❤️‍🔥 #term ❤️‍🔥])
}
You are #amazed[beautiful]!

// 写法1
I am #amazed("amazed",color: purple)
// 写法2
I am #amazed(color:purple)[amazed]

// 通过使用“一切”显示规则
#show: amazed
I choose to focus on the good in my life and let go of any negative thoughts or beliefs. In fact, I am amazing!

// 4.2 嵌入集和显示规则
// 为了给我们的模板应用一些设置和显示规则，我们可以在函数中的一个内容块内使用设置和显示，然后将文件插入该内容块中
#let template(doc)=[
    #set text(font: "Noto Sans CJK SC")
    #show "something cool":[Typst]
    #doc
]

#show: template
I am learning something cool today. It's going great so far!

#let conf(title,doc)={
    set par(justify:true)
    set text(
        font:"Linux LIbertine",
        size:11pt,
    )
    columns(2,doc)
}

#show:doc=>conf(
    [Paper title],
    doc,
)

= Introduction

#lorem(90)

// 4.3 具有命名参数的模板
// 查看 conf.typ




















