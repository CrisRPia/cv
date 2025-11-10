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
    titles: (en: "Main Languages", es: "Lenguajes Principales"),
    content: ([C\#], [Python], [Rust], [Typescript], [Bash]),
  ),
  (
    titles: (en: "Backend", es: "Backend"),
    content: ([ASP.NET], [Fastify], [Node.js]),
  ),
  (
    titles: (en: "Frontend", es: "Frontend"),
    content: ([Angular], [Svelte], [Tailwind]),
  ),
  (
    titles: (en: "AI/ML", es: "IA/ML"),
    content: ([TensorFlow], [PyTorch], [OpenAI], [Gemini], [PydanticAI]),
  ),
  (
    titles: (en: "DevOps & Tools", es: "DevOps y Herramientas"),
    content: ([Docker], [Git], [GitHub], [CI/CD], [Jira]),
  ),
)

#for item in skills {
  [
    === #item.titles.at(language)
    #skill-entry(accent-color, multicol, alignment, skills: item.content)
  ]
}
