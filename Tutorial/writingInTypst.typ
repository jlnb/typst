#set page(
  paper: "a6",
  margin: (x: 1.8cm, y: 1.5cm),
)
#set heading(numbering: "1.")
#set text(
  font: "New Computer Modern",
  size: 10pt,
)
#set par(
  justify: true,
  leading: 0.52em,
)
#show "SMSgroup": name => box[
  SMS
  #box(image(
    "SMS_logo.svg",
    height: 0.8em,
  ))
  group
]

= Introduction
In this report, we will explore the
various factors that influence _fluid
dynamics_ in glaciers and how they
contribute to the formation and
behaviour of these natural structures.

+ The climate
  - Temperature
  - Precipitation
+ The topography
+ The geology

There is a cat shown in @cats. But more will be shown in @methods. Here is a
test how the show function changes SMSgroup. Wow, this is pretty cool!

#figure(
  image("Cats_Glasses_Book_476440.jpg", width: 70%),
  caption: [
    _Cats_ read english books.
  ],
)<cats>

= Methods<methods>

We follow some thing and then cite it. As written in @Mengel2016a.
The equation $Q = rho A v + C$ defines glacial flow rate. The flow
rate of a glacier is defined by the following equation:

$ Q = rho A v + C $

This seems to be truly awesome with Typst.

$ 7.32 beta + sum_(i=0)^nabla (Q_i (a_i - epsilon)) / 2 $

Then, there are vectors:

$ v := vec(x_1, x_2, x_3) . $

The syntax seems to be easier compared to LaTeX.

$ a arrow.squiggly b $

== Background
#lorem(12)

== Methods
#lorem(15)

#bibliography("literatur.bib")
