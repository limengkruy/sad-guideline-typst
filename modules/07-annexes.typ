#import "annexes/_main_.typ": content as annexes
#import "../layout/theme.typ": *

#let content = {
  set page(
    numbering: none,
    footer: [],
  )

  // Centered cover content
  align(horizon + center)[
    #text(
      size: base-font-1-size, 
      weight: base-font-1-weight, 
      font: base-font-1,
      fill: base-font-1-color
      )[
        ឧបសម្ព័ន្ធ
    ]
  ]
  pagebreak()  // move to next page
  annexes
  pagebreak()
}