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

#show heading: set align(center)
#show heading: set text(
  size: 13pt,
  weight: "regular",
)
#show heading: smallcaps

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

= Related Work
#lorem(200)
