#set document(title: [A Fluid Dynamic Model for Glacier Flow])
#set page(
  paper: "us-letter",
  header: align(right)[
    #context document.title
  ],
  numbering: "1",
)
#set par(justify: true)
#set text(
  font: "Libertinus Serif",
  size: 11pt,
)

#show title: set text(size: 17pt)
#show title: set align(center)
#show title: set block(below: 1.2em)

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

#lorem(600)
