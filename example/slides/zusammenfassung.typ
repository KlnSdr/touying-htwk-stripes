#import "@preview/touying:0.6.1": *

#show table.cell.where(y: 0): strong
#set table(
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  align: top,
  row-gutter: 10pt
)

= Fazit
== Zusammenfassung
- hohe Formalisierung und präzise Definition von Verantwortlichkeiten und Voraussetzungen in der Software
- Unterstützung bei der Verwendung von unbekanntem Code
#pause
#table(
  columns: 2,
  table.header(
    [*Vorteile*],[*Nachteile*]
  ),
  [höhere Codequalität], [geringe native Unterstützung in Programmiersprachen],
  [nachvollziehbarere Dokumentation], [initialer Mehraufwand bei Neueinführung in Projekten],
  [höhere Wart- und Wiederverwendbarkeit],[]
)
// - Vorteile:
//   - höhere Codequalität
//   - nachvollziehbarere Dokumentation
//   - höhere Wart- und Wiederverwendbarkeit
// - Herausforderungen:
//   - geringe native Unterstützung in Programmiersprachen
//   - initialer Mehraufwand bei Neueinführung in Projekten
#pause
$->$ Synergieffekt zwischen KI und DbC: reduzierter Spezifikationsaufwand und Qualitätssteigerung KI-generierten Codes