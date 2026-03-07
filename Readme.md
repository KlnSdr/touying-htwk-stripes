# touying-htwk-stripes

> [!WARNING]
> This theme is **NOT** an official theme of Leipzig University of Applied Sciences (HTWK Leipzig).

**touying-htwk-stripes** is a [Touying](https://github.com/touying-typ/touying) theme for creating presentation slides in [Typst](https://github.com/typst/typst), inspired by the presentation template provided by [Leipzig University of Applied Sciences (HTWK Leipzig)](https://www.htwk-leipzig.de/). It is an **unofficial** theme and it is **NOT** affiliated with the HTWK.

## Example

The [example folder](https://github.com/klnsdr/touying-htwk-stripes/tree/main/example) contains a simple example showcasing the usage of the theme.

<!-- todo image -->

## Usage

```typst
#import "@preview/touying-htwk-stripes:1.0.0": *

#show: htwk-stripes-theme.with(
  aspect-ratio: "4-3",
  title: [Title],
  subtitle: [Subtitle],
  authors: ("Author A",),
  authors-title-slide:
  [
    Author A
  ],
  date: datetime.today(),
  institution: [HTWK Leipzig],
  logoInstitution: image("htwk.png"),
  logoFaculty: image("fim.png"),
)

#htwk-title-slide()

#htwk-outline()

= Example Section Title
== Example Slide
A slide with *important information*.

= Second Section
== First Slide
Hello

== Second Slide
World

#htwk-sources(title: "Bibliography", bibliography(title: none,"sources.bib"))
```

### htwk-stripes-theme

| Name                | Description                                                                                                                                                                                                                  | Type               | Default              |
| ------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ | -------------------- |
| title               | Sets the title of the presentation. Used on the title slide and in the footer of each slide.                                                                                                                                 | str\| content      | `""`                 |
| subtitle            | Sets the subtitle of the presentation. Used on the title slide and in the footer of each slide. If `subtitle` is set the footer will containt `<title> - <subtitle>`. Otherwise `title`.                                     | str\| content      | `""`                 |
| authors             | A list of authors that is joined with `,` displayed in the footer of each non-title slide.                                                                                                                                   | array<str>         | `()`                 |
| authors-title-slide | The Content displayed on the title slide to show the authors.                                                                                                                                                                | content            | `[]`                 |
| customDate          | A flag used to indicate if `date` should be interpreted as `datetime` or `content`.                                                                                                                                          | bool               | `false`              |
| date                | The date displayed on the title slide and in the footer of each slide. If `customDate` is `false` and a valid `datetime` is given the date is displayed as `[d]d. M yyyy` with `M` beeing the german full name of the month. | datetime\| content | `datetime.today()`   |
| institution         | The institution for wich the presenter works.                                                                                                                                                                                | str\|content       | `""`                 |
| aspect-ratio        | The aspect ratio used for the slides. It is passed unchanged to touying.                                                                                                                                                     | str                | `"4-3"`              |
| font                | The font used to display the slide contents and titles, nav bar, etc.                                                                                                                                                        | str                | `"Libertinus Serif"` |
| primaryColor        | The color used in the stripes, bullet points, bold text and level 3 headings.                                                                                                                                                | color              | `rgb("#009ee3")`     |
| textColorDark       | The color used to display text like titles, authors, institution and normal content. When setting the color globally outside of the theme only unformatted text on the slides is affected.                                   | color              | `rgb("#000000")`     |
| logoInstitution     | The logo of the institution for which the presenter works. Is used on the upper left corner of the title slide and in the lower right corner of each slide.                                                                  | content            | `none`               |
| logoFaculty         | The logo of the faculty the presenter works for. Is used in the upper right corner of the title slide.                                                                                                                       | content            | `none`               |
| sourcesTitle        | The title of the slide containing the bibliography. If set to the acutal value, the slide will not be part of the navigation in the header.                                                                                  | str                | `"Quellen"`          |
