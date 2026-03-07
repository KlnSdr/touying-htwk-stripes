#import "@preview/touying:0.6.1": *

= Grundlagen
== Kernkonzepte von Design by Contract
#grid(
  columns: (1fr, 1.5fr),
  gutter: .5cm,
  [
    #figure(
      image("../assets/account.svg", width: 100%)
    )
  ],
  [
    #pause
    === Voraussetzungen #uncover("5-")[\= Preconditions]
    - $"balance" >= "amount"$
    - $"amount > 0"$

    @DbCImproveSoftVigilance
    @Meyer1992Applying
    #pause
    === Garantien #uncover("6-")[\= Postcondition]
    - $"balance" = "old balance" - "amount"$
    - $"target.balance" = "old target.balance" + "amount"$
    #pause
    === Konsistenzbedingung #uncover("7-")[\= Invariante]
    - $"balance" >= 0$
  ]
)
#uncover("8-")[
  #align(center)[
    Vertrag $colon.eq "Preconditions" and "Invariante" ==> "Postconditions" and "Invariante"$
  ]
]

==
#align(center)[
=== Neue Anforderung
Die Benutzer*in muss sich vor einer Überweisung angemeldet haben.
]

== Temporale Logik
- Erweiterung der klassischen Aussagenlogik
- Aussagen über zeitliche Abläufe formulieren
- unterschiedliche Zeitauffassungen möglich:
  - lineare Zeit
  - verzweigende Zeit
- formale Grundlage für Spezifikation dynamischer Systeme

== Linear Temporale Logik
#grid(
  columns: (1.3fr, 1fr),
  [
    - diskrete geordnete Zeit
    - temporale Operatoren:
      - $F p$: $p$ gilt in einem zukünftigen Zustand
      - $G p$: $p$ gilt in allen folgenden Zuständen
      - $X p$: $p$ gilt im nächsten Zustand
      - $p U q$: $p$ gilt solange, bis $q$ gilt
  ],
  [
    #figure(
      image("../assets/ltl.png", height: 70%),
      caption: [LTL Operatoren],
    )
  ]
)

== Computational Tree Logic
#grid(
  columns: (1.3fr, 1fr),
  [
    - Zeit als Baum modelliert
    - jeder Pfad ist eine mögliche Zukunft
    - temporale Operatoren: LTL +
      - $A O p$: für alle zukünftigen Pfade gilt $O p$
      - $E O p$: es gibt mindestens einen zukünftigen Pfad auf dem $O p$ gilt
  ],
  [
    #figure(
      image("../assets/ctl.png", width: 100%),
      caption: [CTL Operatoren nach],
    )
  ]
)
