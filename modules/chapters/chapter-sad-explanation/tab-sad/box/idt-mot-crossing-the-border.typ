#import "../../../../../lib/sad-box.typ": *

#let title = [ប្រអប់ទី២១ - អត្តសញ្ញាណនៃមធ្យោបាយដឹកជញ្ជូនឆ្លងកាត់]
#let overview = [
  #text(tracking:0.02em)[
    សេចក្ដីពន្យល់
  ]
]
#let filling-condition = [#filling-condition-option.optional]
#let filling-method = [
  របៀបនៃការបំពេញ
]
#let reference-code = [កូដយោង #text(weight: "bold")[ឧបសម្ព័ន្ធ]]
#let example = [
  ឧទាហរណ៍
]
#let common-error = [
  កំហុសដែលកើតមានជាចំបង
]
#let note = [
  កំណត់ចំណាំ
]
#let reference-document = [
  - ឯកសារយោងទី១
  - ឯកសារយោងទី២
]

// ============ Content Generation ============

#let content = [
  === #{title}
  #overview
  #align(center)[#idt-mot-crossing-the-border-box()]
  #generate-sad-explanation(filling-condition, filling-method, reference-code, example, common-error, note, reference-document)
  #pagebreak()
]