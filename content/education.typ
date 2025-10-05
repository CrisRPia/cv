#let meta = toml("../info.toml")

#import "@preview/grotesk-cv:1.0.5": education-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.education
#let language = meta.personal.language
#let include-icon = meta.personal.include_icons


= #if include-icon [#fa-icon(icon) #h(5pt)] #if (
  language == "en"
) [Education] else if language == "es" [Educación]

#v(5pt)


#if language == "en" [
  #education-entry(
    degree: [Technical Degree, Computer Software Engineering],
    date: [2023 - 2027 est.],
    institution: [Universidad Católical del Uruguay\ "Dámaso Antonio Larrañaga"],
    location: [\ Salto and Montevideo, Uruguay],
  )

  #education-entry(
    degree: [IT High School],
    date: [2020 - 2022],
    institution: [UTU - Dirección General de Educación Técnico - Profesional],
    location: [Salto, Salto, Uruguay],
  )

  #education-entry(
    degree: [English Proficiency - Certificate],
    date: [2022],
    institution: [Cambridge English],
    location: [Salto, Salto, Uruguay],
  )

  #education-entry(
    degree: [CS50x - Certificate],
    date: [2023],
    institution: [Harvard University],
    location: [Online],
  )

  #education-entry(
    degree: [CS50 AI - Certificate],
    date: [2024],
    institution: [Harvard University],
    location: [Online],
  )

] else if language == "es" [
  #education-entry(
    degree: [Tecnicatura en Ingeniería de Software],
    date: [2023 - 2027 est.],
    institution: [Universidad Católica del Uruguay "Dámaso Antonio Larrañaga"],
    location: [Salto y Montevideo, Uruguay],
  )

  #education-entry(
    degree: [Bachillerato en Informática],
    date: [2020 - 2022],
    institution: [UTU - Dirección General de Educación Técnico - Profesional],
    location: [Salto, Salto, Uruguay],
  )

  #education-entry(
    degree: [English Proficiency - Certificado],
    date: [2022],
    institution: [Cambridge English],
    location: [Salto, Salto, Uruguay],
  )

  #education-entry(
    degree: [CS50x - Certificado],
    date: [2023],
    institution: [Harvard University],
    location: [En línea],
  )

  #education-entry(
    degree: [CS50 AI - Certificado],
    date: [2024],
    institution: [Harvard University],
    location: [En línea],
  )
]
