#import "../layout/theme.typ": *
#import "../layout/template.typ": *

#let filling-area(value, width, height: 100%) = (
  box(
    width: width,
    height: height,
    stroke: (
      top: none,
      bottom: table-border-size + sad-table-border-color-secondary,
      left: none,
      right: none,
    ),
  )[#text(fill: body-font-color)[#value]]
)

#let filling-area-height(value, width, height) = (
  box(
    width: width,
    height: height,
    stroke: (
      top: none,
      bottom: table-border-size + sad-table-border-color-secondary,
      left: none,
      right: none,
    ),
  )[#text(fill: body-font-color)[#value]]
)

#let blank-box(width, height: 100%) = (
  box(
    width: width,
    height: height
  )
)

#let checkbox(checked: false) = {
  let checkmark = "☐"
  if checked == true {
    checkmark = "🗹"
  }
  [#checkmark]
}

#let gray-out-text(text_) = {
  align(center)[
    #text(
      fill: luma(65%),
    )[#text_]
  ]
}


#let small-v-gap-table = 0.5em