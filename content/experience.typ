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


  #v(5pt)

  #experience-entry(
    title: [English Teacher],
    date: [2021 - 2022],
    company: [Self-Employed],
    location: [Salto, Salto, Uruguay],
  )

  - Provided one-on-one English language instruction to Spanish-speaking students at levels ranging from A1 (beginner) to B2 (upper-intermediate), creating personalized lessons tailored to individual learning objectives.

] else if language == "es" [
  #experience-entry(
    title: [Desarrollador de Software Python],
    date: [Mayo 2025 - Presente],
    company: [Delto],
    location: [Montevideo, Montevideo, Uruguay],
  )

  - Integración de soluciones de IA en una solución conversacional bancaria.
  - Desarrollo y ejecución de pipelines y directrices para aumentar la calidad del producto y la experiencia del desarrollador en una gran base de código heredado.

  #v(5pt)

  #experience-entry(
    title: [Profesor de Inglés],
    date: [2021 - 2022],
    company: [Autónomo],
    location: [Salto, Salto, Uruguay],
  )

  - Impartí clases particulares de inglés a estudiantes hispanohablantes de niveles desde A1 (principiante) hasta B2 (intermedio-alto), creando lecciones personalizadas y adaptadas a los objetivos de aprendizaje individuales.
]
