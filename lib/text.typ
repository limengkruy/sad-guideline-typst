#import "../layout/theme.typ": *
#import "../layout/template.typ": *

// Space Character settings
#let space-character = " "
#let blank-character = "​"

#let colon-character = "៖"

// SAD Guideline settings
#let filling-condition-text = "លក្ខខណ្ឌបំពេញ"
#let filling-method-text = "របៀបនៃការបំពេញ"
#let reference-code-text = "កូដយោង"
#let reference-code-and-description-text = "កូដយោង និងសេចក្ដីពន្យល់"
#let example-text = "ឧទាហរណ៍"
#let common-error-text = "កំហុសដែលមានជាចំបង"
#let note-text = "កំណត់ចំណាំ"
#let reference-document-text = "ឯកសារយោង"


#let filling-condition-option = (
  required: "តម្រូវឱ្យបំពេញ",
  optional: "អាចបំពេញឬមិនបំពេញ",
  not-applicable: "មិនអាចអនុវត្តបាន",
  autocomplete: "បំពេញដោយស្វ័យប្រវត្តិ"
)

// SAD
#let sad-bullet-marker-1 = "◉"
#let sad-bullet-marker-2 = "•"
#let sad-bullet-marker-3 = "☉"
#let sad-bullet-marker-4 = "◦"
#let sad-bullet-marker-5 = "-"

#let sad-bullet-marker(level) = {
  let marker = sad-bullet-marker-1
  if level == 2 {
    marker = sad-bullet-marker-2
  } else if level == 3 {
    marker = sad-bullet-marker-3
  } else if level == 4 {
    marker = sad-bullet-marker-4
  } else if level == 5 {
    marker = sad-bullet-marker-5
  }
  [#text(fill: sad-bullet-color,
  size: sad-bullet-size,)[#marker]]
}

#let sad-bullet-explanation-title(title) = {
  [#text(
    font: sad-bullet-font,
    weight: sad-bullet-font-weight,
    size: sad-bullet-font-size,
    fill: sad-bullet-font-color,
  )[#title#colon-character]]
}

#let box-light-color(value) = {
  set par(first-line-indent: (amount: 0em, all: true))
  box(
    stroke: accent-color,
    fill: accent-color-light,
    inset: 5pt,
    outset: 5pt,
    radius: 5pt,
    width: 100%
  )[#value]
}

#let box-warning-color(value) = {
  set par(first-line-indent: (amount: 0em, all: true))
  box(
    stroke: warning-color,
    fill: warning-color-light,
    inset: 5pt,
    outset: 5pt,
    radius: 5pt,
    width: 100%
  )[#value]
}

#let generate-sad-explanation(filling-condition, filling-method, reference-code, example, common-error, note, reference-document) = {
  set list(
    marker: (
      [#sad-bullet-marker(1)],
      [#sad-bullet-marker(2)],
      [#sad-bullet-marker(3)],
      [#sad-bullet-marker(4)],
      [#sad-bullet-marker(5)]
    ),
    indent: bullet-margin,
    body-indent: bullet-text-indent,
    spacing: line-spacing,
  )

  if filling-condition != [] {
    [- #sad-bullet-explanation-title(filling-condition-text) #filling-condition]
  }
  if filling-method != [] {
    [- #sad-bullet-explanation-title(filling-method-text) #filling-method]
  }
  if reference-code != [] {
    [- #sad-bullet-explanation-title(reference-code-and-description-text) #reference-code]
  }
  if common-error != [] {
    [- #sad-bullet-explanation-title(common-error-text) #common-error]
  }
  if example != [] {
    [- #sad-bullet-explanation-title(example-text) #example]
  }
  if note != [] {
    v(6pt)
    box-warning-color([#sad-bullet-explanation-title(note-text) #note])
  }
  if reference-document != [] {
    v(6pt)
    box-light-color([#sad-bullet-explanation-title(reference-document-text) #reference-document])
  }
}