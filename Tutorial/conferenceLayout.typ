#set document(title: [A Fluid Dynamic Model for Glacier Flow])
#set page(
  paper: "us-letter",
  header: align(
    right + horizon,
    context document.title,
  ),
  numbering: "1",
  columns: 2,
)
#set par(justify: true)
#set text(
  font: "Libertinus Serif",
  size: 11pt,
)

#show title: set text(size: 17pt)
#show title: set align(center)
#show title: set block(below: 1.2em)

#show heading.where(level: 1): set align(center)
#show heading.where(level: 1): set text(
  size: 13pt,
  weight: "regular",
)
#show heading.where(level: 1): smallcaps

#show heading.where(level: 2): set text(
  size: 11pt,
  weight: "regular",
  style: "italic",
)
#show heading.where(level: 2): it => {
  it.body + [.]
}

#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em,
)[
  #title()

  #grid(
    columns: (1fr, 1fr),
    align(center)[
      Winnie Puh \
      Honey Plant \
      #link("mailto:puh@bear.org")
    ],
    align(center)[
      Donkey Dong \
      Sad Industries \
      #link("mailto:donkey@sadindustries.com")
    ],
  )

  #align(center)[
    #set par(justify: false)
    *Abstract* \
    #lorem(80)
  ]
]

= Introduction
#lorem(300)

Here, I would like to add some more content. Not sure if
this is the best way to do it.

== Motivation
#lorem(13)


= Related Work
#lorem(200)
