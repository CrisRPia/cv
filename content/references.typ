#let meta = toml("../info.toml")

#import "@preview/grotesk-cv:1.0.5": reference-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.references
#let language = meta.personal.language
#let include-icon = meta.personal.include_icons


= #if include-icon [#fa-icon(icon) #h(5pt)] #if (
  language == "en"
) [References] else if language == "es" [Referencias]

#v(5pt)

#if language == "en" [
  References available upon request.
] else if language == "es" [
  Referencias disponibles a petición.
]
