#import "@local/touying-htwk-stripes:1.0.0": *

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
  customDate: false,
  date: datetime.today(),
  institution: [University of Example],
  logoInstitution: image("assets/uoe.svg"),
  logoFaculty: image("assets/foe.svg"),
  sourcesTitle: "Bibliography"
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
