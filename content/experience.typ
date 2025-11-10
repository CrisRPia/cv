#let meta = toml("../info.toml")

#import "@preview/grotesk-cv:1.0.5": experience-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.experience
#let language = meta.personal.language
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] #if (
  language == "en"
) [Experience] else if language == "es" [Experiencia]

#v(5pt)

#if language == "en" [

  #experience-entry(
    title: [Python Software Developer],
    date: [May 2025 - Present],
    company: [Delto],
    location: [Montevideo, Montevideo, Uruguay],
  )

  - Integrated AI solutions into a banking conversational solution.
  - Developed and executed pipelines and guidelines to increase product quality and developer experience in a large legacy codebase.
  - Enhanced the company's internal metrics system to meet flexible client-specific needs.

] else if language == "es" [
  #experience-entry(
    title: [Desarrollador de Software Python],
    date: [Mayo 2025 - Presente],
    company: [Delto],
    location: [Montevideo, Montevideo, Uruguay],
  )

  - Integración de soluciones de IA en una solución conversacional bancaria.
  - Desarrollo y ejecución de pipelines y directrices para aumentar la calidad del producto y la experiencia del desarrollador en una gran base de código heredado.
  - Mejora del sistema de métricas interno de la empresa para satisfacer las necesidades específicas de cada cliente de forma flexible.
]

#v(5pt)

#text(style: "italic")[
  #if language == "en" [
    Notable public personal projects pinned at #underline(link("https://github.com/CrisRPia")[github.com/CrisRPia]). \
    You may also #underline(link("https://web-hexsweeper.vercel.app/")[play my game]). Currently working on an enhanced Bevy WebAssembly version.
  ] else if language == "es" [
    Proyectos personales públicos destacados fijados en #underline(link("https://github.com/CrisRPia")[github.com/CrisRPia]). \
    También puede #underline(link("https://web-hexsweeper.vercel.app/")[jugar mi juego]). Actualmente trabajando en una versión mejorada con Bevy WebAssembly.
  ]
]
