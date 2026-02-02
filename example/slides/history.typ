#import "@preview/touying:0.6.1": *

= Historisches
== Historischer Hintergrund
#grid(
  columns: (1.5fr, 1fr),
  [
    - steigende Komplexität und Kapselung der Software
      - Sprungziele und Labels
      - Methoden und Prozeduren
      - OOP
      - verteilte Systeme
      - ML und KI
    - hochkarätige Misserfolge
  ],
  grid(
    rows: (1fr, 1fr),
    [
    #figure(
      image("../assets/ariane5.jpg", height: 60%),
      caption: [Jungfernflug Ariane 5]
    )
    ],
    [
      
    #figure(
      image("../assets/mco.jpg", height: 60%),
      caption: [Mars Climate Orbiter]
    )
    ]
  )
)
  
== Ada
#columns(2, gutter: 2cm)[
    - Fokus auf:
      - Zuverlässigkeit
      - Wartbarkeit
      - Effizienz
    - viele Compiletime Checks
    - starke Typisierung
    - wurde Standard für:
      - Militär
      - Luft- & Raumfahrt
  \
  \
  #rect(
    fill: rgb("f7f7f7"),
    stroke: 1pt,
    radius: 6pt,
    inset: 1cm,
  )[
    *Nice to know*
    
    - Auftragsarbeit des USDoD
    - Benannt nach Ada Lovelace
  ]
  ]

== Eiffel
#columns(2, gutter: 1cm)[
  - beeinflusst von Ada
  - rein objektorientiert
  - gewünschte Programmeigenschaften:
    - robust
    - modular
    - fehlerarm
    - wart-/erweiterbar
  \
  #rect(
    fill: rgb("f7f7f7"),
    stroke: 1pt,
    radius: 6pt,
    inset: 1cm,
  )[
    *Nice to know*
    
    - In den 1980ern ursprünglich als internes Projekt von Interactive Software Engineering Inc. entstanden
    - Benannt nach dem Eiffelturm als Metapher für die Stabilität der entstehenden Software
  ]
  ]
  #pause
  Einführung von *Design by Contract* $->$ Fokus auf Spezifikation und klar definierte Schnittstellen
