#let meta = toml("../info.toml")
#import meta.import.fontawesome: *

#let icon = meta.section.icon.profile
#let language = meta.personal.language
#let include-icon = meta.personal.include_icons

// = Summary
= #if include-icon [#fa-icon(icon) #h(5pt)] #if (
  language == "en"
) [Summary] else if language == "es" [Resumen]

#v(5pt)

#if language == "en" [

  Software developer with experience building conversational AI solutions and backend systems. Focused on code quality, maintainable architectures, and improving developer workflows in complex codebases.

] else if language == "es" [

  Desarrollador de software con experiencia construyendo soluciones de IA conversacional y sistemas backend. Enfocado en calidad de código, arquitecturas mantenibles y mejora de flujos de trabajo de desarrollo en bases de código complejas.

]
