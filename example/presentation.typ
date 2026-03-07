#import "@preview/touying:0.6.1": *
#import "@local/touying-htwk-theme:1.0.0": *

#set text(lang: "de")

#show: htwk-theme.with(
  aspect-ratio: "4-3",
  font: "Arimo",
  title: [Design by Contract],
  subtitle: [Softwareengineering],
  authors: ("Author A", "Author B", "Author C"),
  authors-title-slide:
  [
    Author A
    #linebreak()
    Author B
    #linebreak()
    Author C
  ],
  customDate: false,
  date: datetime.today(),
  institution: [HTWK Leipzig],
  logoInstitution: image("assets/htwk.png"),
  logoFaculty: image("assets/fim.png"),
  sourcesTitle: "Quellen",
  config-common(handout: false)
)

#htwk-title-slide()

#htwk-outline(title: "Inhalt")


#include "slides/history.typ"
#include "slides/basics.typ"
#include "slides/zusammenfassung.typ"

#htwk-sources(title: "Quellen", bibliography(title: none,"/example/sources.bib"))

#htwk-title-slide()
