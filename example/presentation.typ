#import "@preview/touying-htwk-stripes:1.0.0": *

#set text(lang: "de")

#show: htwk-stripes-theme.with(
  aspect-ratio: "4-3",
  font: "Arimo",
  title: [Your Presentation Title],
  subtitle: [Subtitle],
  authors: ("Author A", "Author B", "Author C"),
  authors-title-slide:
  [
    Author A
    #linebreak()
    Author B
    #linebreak()
    Author C
  ],
  custom-date: false,
  date: datetime.today(),
  institution: [University of Example],
  logo-institution: image("assets/uoe.svg"),
  logo-faculty: image("assets/foe.svg"),
  sources-title: "Bibliography"
)

#htwk-title-slide()

#htwk-outline(title: "Outline")
= First Section
== First Slide
Hello

== Second Slide
World

= Second Section
== Third Slide
How are you? @EMuster

#htwk-sources(title: "Bibliography", bibliography(title: none,"sources.bib"))
