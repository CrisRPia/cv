#let meta = toml("../info.toml")

#import "@preview/grotesk-cv:1.0.5": skill-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.skills
#let language = meta.personal.language
#let include-icon = meta.personal.include_icons
#let accent-color = meta.layout.accent_color
#let multicol = true
#let alignment = center


= #if include-icon [#fa-icon(icon) #h(5pt)] #if (
  language == "en"
) [Skills] else if language == "es" [Habilidades]

#v(0pt)

#let skills = (
  (
    titles: (
      en: "Main programming languages",
      es: "Lenguajes de programación principales",
    ),
    content: (
      (
        [C\#],
        [Python],
        [Rust],
        [Typescript],
        [Bash],
      )
    ),
  ),
  (
    titles: (en: "Tools", es: "Herramientas"),
    content: (
      [Git],
      [Github],
      [Bitbucket],
      [Jira],
      [Confluence],
      [Slack],
    ),
  ),
  (
    titles: (en: "AI/ML", es: "IA/Aprendizaje Automático"),
    content: (
      [TensorFlow],
      [PyTorch],
      [OpenAI],
      [Gemini],
      [PydanticAI],
    ),
  ),
  (
    titles: (en: "DevOps", es: "DevOps"),
    content: (
      [Docker],
      [Pipelines],
    ),
  ),
)

#for item in skills {
 [
    === #item.titles.at(language)
    #skill-entry(accent-color, multicol, alignment, skills: item.content)
 ]
}
