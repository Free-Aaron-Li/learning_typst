#import "conf.typ": conf
#let title = [Toward Improved Modelling]
#show:doc=>conf(
  title: title, // 标题
  // 作者字典
  authors: (
    // 作者1
    (
      name: "Theresa Tungsten",
      affiliation: "Artos Institute",
      email: "tung@artos.edu",
    ),
    // 作者2
    (
      name: "Eugene Deklan",
      affiliation: "Honduras State",
      email: "e.deklan@hstate.hn",
    ),
    // 作者3
    (
      name: "aaron li",
      affiliation: "pzhu University",
      email: "wuhu@pzhu.edu",
    ),
    // 作者4
    (
        name:"san zhang",
        affiliation:"pzhu University",
        email:"zhangsan@pzhu.edu"
    ),
  ),
  // 摘要
  abstract: lorem(80),
  // 正文
  doc,
)

= Introduction
#lorem(90)
== Motivation
#lorem(140)
== Problem Statement
#lorem(50)
= Related Work
#lorem(200)