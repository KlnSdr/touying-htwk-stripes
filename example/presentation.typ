#import "@preview/touying:0.6.1": *
#import "/src/lib.typ": *

#set text(lang: "de")

#show: htwk-theme.with(
  aspect-ratio: "4-3",
  font: "Arimo",
  config-info(
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
    date: datetime.today(),
    institution: [HTWK Leipzig],
  ),
  config-common(handout: false)
)

#title-slide()

== Outline <touying:hidden>
#htwk-outline()


#include "slides/history.typ"
#include "slides/basics.typ"
#include "slides/zusammenfassung.typ"
#title-slide()
