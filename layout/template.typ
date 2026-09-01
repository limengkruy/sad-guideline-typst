#import "theme.typ": *
#import "@preview/cuti:0.4.0": fakeitalic

#let margin-x = 2cm
#let margin-y = 2.4cm
#let line-spacing = 1.2em
#let vertical-spacing = 1em

#let first-line-indent = 3em
#let hanging-indent = 0em

#let cell-width-1x = 12mm
#let cell-width-half-x = cell-width-1x * 0.5
#let cell-width-1-quarter-x = cell-width-1x * 0.25
#let cell-width-3-quarter-x = cell-width-1x * 0.75
#let cell-width-5-quarter-x = cell-width-1x * 1.25
#let cell-width-6-quarter-x = cell-width-1x * 1.5
#let cell-width-7-quarter-x = cell-width-1x * 1.75
#let cell-width-1-half-x = cell-width-1x * 1.5
#let cell-width-2x = cell-width-1x * 2
#let cell-width-2-half-x = cell-width-1x * 2.5
#let cell-width-3x = cell-width-1x * 3
#let cell-width-3-half-x = cell-width-1x * 3.5
#let cell-width-4x = cell-width-1x * 4
#let cell-width-4-half-x = cell-width-1x * 4.5
#let cell-width-5x = cell-width-1x * 5
#let cell-width-6x = cell-width-1x * 6
#let cell-width-7x = cell-width-1x * 7
#let cell-width-8x = cell-width-1x * 8
#let cell-width-9x = cell-width-1x * 9
#let cell-width-10x = cell-width-1x * 10

#let cell-height-1x = 6mm
#let cell-height-half-x = cell-height-1x * 0.5
#let cell-height-1-half-x = cell-height-1x * 1.5
#let cell-height-2x = cell-height-1x * 2
#let cell-height-2-half-x = cell-height-1x * 2.5
#let cell-height-3x = cell-height-1x * 3
#let cell-height-4x = cell-height-1x * 4
#let cell-height-5x = cell-height-1x * 5
#let cell-height-6x = cell-height-1x * 6
#let cell-height-7x = cell-height-1x * 7
#let cell-height-8x = cell-height-1x * 8
#let cell-height-9x = cell-height-1x * 9
#let cell-height-10x = cell-height-1x * 10

#let table-border-size = 0.5pt

#let bullet-size = 0.5em
#let bullet-margin = 0em
#let bullet-text-indent = 0.6em

#let cover-page-template(body) = {
  // Page setup
  set page(
    background: context {
      image(
        "../asset/image/page/cover-page-background.svg", 
        width: 101%
      )
    }
  )
  body
}

#let content-page-template(body) = {
  // Page setup
  set page(
    background: context {
      // Watermark content: centered text
      set text(font: watermark-font, size: watermark-font-size, fill: luma(50%).lighten(100% - watermark-opacity))
      
      image(
        "../asset/image/page/page-frame-01.svg", 
        width: 101%
      )

      place(
        center,
        dy: -500pt,
        rotate(-45deg)[
          #watermark-text
        ]
      )
      // ]
      // block(
      //   width: 100%,
      //   height: 100%,
      // )[
      //     #watermark-text
      // ]
      // align(center, )[
      //   #rotate(-45deg)[
      //     #watermark-text
      //   ]
      // ]
    }
  )
  body
}

#let layout-template(body) = {
  // Page setup
  set page(
    paper: "a4",
    margin: (x: margin-x, y: margin-y),
    numbering: "1",
    header: context {
    },
    footer: context {
      // Footer content: centered page number
      set text(size: footer-font-size, font: footer-font, fill: footer-font-color, style: footer-font-style, weight: footer-font-weight)
      align(center)[
        #v(vertical-spacing)  // vertical spacing
        #box(
          radius: 50%,
          fill: primary-color.lighten(15%),
          inset: 5pt,
          outset: 5pt,
          width: 6mm,
          height: 6mm
        )[
          #counter(page).display()  // uses page.numbering automatically
        ]
        // #counter(page).display()  // uses page.numbering automatically
      ]
    },
  )

  // Global text defaults
  set text(font: body-font, size: body-font-size)
  show text.where(weight: "bold").or(strong): set text(stroke: 0.06em + body-font-color)
  show text.where(style: "italic"): it => [#skew(ax: -12deg)[#it]]
  // show text.where(style: "italic"): it => [#fakeitalic[#it]]
  set par(
    justify: true,
    leading: line-spacing,
    spacing: line-spacing,
    first-line-indent: (amount: first-line-indent, all: true),
    )

  // Heading defaults and numbering
  set heading(numbering: (..nums) => numbering("1.", ..nums.pos().slice(1)))

  // Hide numbering for level 1 headings only
  show heading.where(level: 1): set heading(numbering: none)

  // Level 1 heading
  show heading.where(level: 1): it => align(center, block(
    above: line-spacing,
    below: line-spacing,
  )[
    #set heading(numbering: none)
    #set text(
      font: heading-1-font, 
      size: heading-1-font-size,
      fill: heading-1-font-color, 
      style: heading-1-font-style, 
      weight: heading-1-font-weight, 
      stroke: if heading-1-font-weight == "bold" { (paint: heading-1-font-color, thickness: 0.06em) } else { none }
      )
    #it.body
  ])

  // Level 2 heading
  show heading.where(level: 2): it => align(left, block(
    above: line-spacing,
    below: line-spacing,
  )[
    #set heading(numbering: "1.")
    #set text(
      font: heading-2-font,
      size: heading-2-font-size,
      fill: heading-2-font-color,
      style: heading-2-font-style, weight: heading-2-font-weight)
    #show text.where(weight: "bold").or(strong): set text(stroke: 0.06em + heading-2-font-color)
    #it
  ])

  // Level 3 heading
  show heading.where(level: 3): it => align(left, block(
    above: line-spacing,
    below: line-spacing,
    inset: (left: first-line-indent)
  )[
    #set heading(numbering: "1.1.")
    #set par(first-line-indent: (amount: hanging-indent, all: true))
    #set text(font: heading-3-font, size: heading-3-font-size,
              fill: heading-3-font-color, style: heading-3-font-style, weight: heading-3-font-weight)
    #show text.where(weight: "bold").or(strong): set text(stroke: 0.06em + heading-3-font-color)
    #it
  ])

  // Outline / TOC styling
  show outline.entry.where(level: 1): it => [
    // Heading 1 style in TOC – regular
    #set text(
      font: heading-1-font,
      size: heading-1-font-size,
      weight: heading-1-font-weight,
      fill: heading-1-font-color
    )
    #show text.where(weight: "bold").or(strong): set text(stroke: 0.0em + heading-1-font-color)
    #it
  ]

  show outline.entry.where(level: 2): it => [
    // Heading 2 style in TOC – regular
    #set text(
      font: heading-2-font,
      size: heading-2-font-size,
      weight: heading-2-font-weight,
      fill: heading-2-font-color
    )
    #show text.where(weight: "bold").or(strong): set text(stroke: 0.0em + heading-2-font-color)
    #it
  ]

  show outline.entry.where(level: 3): it => [
    // Heading 3 style in TOC – bold
    #set text(
      font: heading-3-font,
      size: heading-3-font-size,
      weight: heading-3-font-weight,
      fill: heading-3-font-color
    )
    #show text.where(weight: "bold").or(strong): set text(stroke: 0.0em + heading-3-font-color)
    #it
  ]

  
  // Apply to document body
  body
}