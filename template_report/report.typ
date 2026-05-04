// Import packages
#import "@preview/fletcher:0.5.8" as fletcher

#let bericht(
  titel: "Projektbericht Titel",
  autor: "Dein Name",
  abteilung: "Abteilung Marketing",
  logo: none,
  header_links: "Unternehmen GmbH",
  header_mitte: image("my_logo.pdf", height: 1cm),
  header_rechts: "",
  footer_links: "Vertraulich",
  footer_mitte: none,
  footer_rechts: none,
  bibliografie: none, // Standardmäßig keine Literaturliste
  zitierstil: "apa",
  body,
) = {
  // Set context-dependent default values
  let footer_mitte = if footer_mitte == none { context counter(page).display("1 / 1", both: true) } else {
    footer_mitte
  }
  let footer_rechts = if footer_rechts == none { context datetime.today().display("[day].[month].[year]") } else {
    footer_rechts
  }
  // Dokument-Metadaten
  set document(title: titel, author: autor)

  // Seitenkonfiguration
  set page(
    paper: "a4",
    margin: (x: 2.5cm, y: 3cm),
    header: [
      #set text(size: 9pt, fill: gray)
      #grid(
        columns: (1fr, 1fr, 1fr),
        align: (left, center, right),
        header_links, header_mitte, header_rechts,
      )
      #v(-0.5em)
      #line(length: 100%, stroke: 0.5pt + gray)
    ],
    footer: [
      #line(length: 100%, stroke: 0.5pt + gray)
      #set text(size: 9pt, fill: gray)
      #grid(
        columns: (1fr, 1fr, 1fr),
        align: (left, center, right),
        footer_links, footer_mitte, footer_rechts,
      )
    ],
  )

  // Textstyling
  set text(font: "Libertinus Serif", size: 11pt, lang: "en")
  set par(justify: true)
  set heading(numbering: "1.")
  show heading: set block(above: 1.5em, below: 1em)

  // Titelseite (optional)
  align(center + horizon)[
    #text(size: 24pt, weight: "bold")[#titel] \
    #v(1em)
    #text(size: 14pt)[#autor] \
    #text(size: 12pt, fill: gray)[#abteilung]
  ]
  pagebreak()

  body

  // Literaturverzeichnis am Ende einfügen, falls eine Datei angegeben wurde
  if bibliografie != none {
    pagebreak()
    bibliography(bibliografie, style: zitierstil)
  }
}

// --- ANWENDUNG DES TEMPLATES ---

#show: bericht.with(
  titel: "Quartalsbericht Q2",
  autor: "Max Mustermann",
  header_rechts: "PROJEKT-ID: 12345",
  footer_links: "Interne Verwendung",
)

= Introduction
Hier beginnt dein Bericht. Die Kopf- und Fußzeilen sind automatisch auf jeder Seite vorhanden und in drei Bereiche unterteilt.

== Subsection
Dank der `grid`-Funktion im Template bleibt die Ausrichtung (links, mittig, rechts) immer exakt erhalten, egal wie lang der Text ist.

#figure(
  fletcher.diagram(
    spacing: (15mm, 10mm), // columns, rows
    node-stroke: 1pt, // outline node shapes
    edge-stroke: 1pt, // make lines thicker
    mark-scale: 60%, // make arrowheads smaller
    fletcher.edge((-2, 0), "r,u,r", "-|>", $f$, label-side: left),
    fletcher.node((-1, -1), text(white, size: 8pt, $ circle $), inset: 0pt, fill: white),
    fletcher.edge((-2, 0), "r,d,r", "..|>", $g$),
    fletcher.node((0, -1), $F(s)$),
    fletcher.node((0, +1), $G(s)$),
    fletcher.node(enclose: ((0, -1), (0, +1)), stroke: teal, inset: 10pt, snap: false), // prevent edges snapping to this node
    fletcher.edge((0, +1), (1, 0), "..|>", corner: left),
    fletcher.edge((0, -1), (1, 0), "-|>", corner: right),
    fletcher.node((1, 0), text(black, $ plus.o $), inset: 1pt, fill: white),
    fletcher.edge("-|>"),
  ),
  caption: [
    My first Fletcher diagram
  ],
)<fletcher>


#figure(
  fletcher.diagram(
    spacing: (15mm, 10mm), // columns, rows
    node-stroke: 1pt, // outline node shapes
    edge-stroke: 1pt, // make lines thicker
    mark-scale: 60%, // make arrowheads smaller
    fletcher.edge((-2, -1), "r", "-|>", $ W(s) $, label-side: left),
    fletcher.node((-1, -1), text(white, size: 8pt, $ circle $), inset: 0pt, fill: white),
    fletcher.edge((-1, -1), "r", "-|>", $ E(s) $, label-side: left),
    fletcher.node((0, -1), text(black, $ G_C $)),
    fletcher.edge((0, -1), "r", "-|>", $ U(s) $, label-side: left),
    fletcher.node((1, -1), text(black, $ G_P $)),
    fletcher.edge((1, -1), "r", "-|>", $ Y(s) $, label-side: left),
    fletcher.node((2, -1), text(white, size: 8pt, $ circle $), inset: 0pt, fill: white),
    fletcher.edge((2, -1), "r", "-|>", $ Y_m(s) $, label-side: left),
    fletcher.edge((2, -2), "d", "-|>", $ D(s) $, label-side: right),
  ),
  caption: [
    My first Fletcher diagram
  ],
)<std_fbk_loop>
