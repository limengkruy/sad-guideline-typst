#import "../layout/theme.typ": *

#let content = {
  set page(
    numbering: none,
    footer: [],        // override any global footer
  )

  // Centered cover content
  align(horizon + center)[
    #text(
      size: base-font-1-size, 
      weight: base-font-1-weight, 
      font: base-font-1,
      // fill: base-font-1-color,
      fill: white-color
      )[
        #image(
          "../asset/image/logo/gdce.png", 
          width: 40%
        )
      មគ្គុទ្ទេសក៍
      #linebreak()
      ការបំពេញប្រតិវេទន៍គយ
    ]
  ]

  align(center + bottom)[
    // #text(
    //   size: base-font-2-size, 
    //   weight: base-font-2-weight, 
    //   font: base-font-2,
    //   fill: base-font-2-color
    // )[
    //   អគ្គនាយកដ្ឋានគយនិងរដ្ឋាករកម្ពុជា
    // ]

    #v(1em)

    #text(
      size: base-font-3-size,
      // weight: base-font-3-weight,
      font: base-font-3,
      // fill: base-font-3-color
      fill: white-color,
      stroke: 0.04em + white-color
    )[
      ឆ្នាំ ២០២៦
    ]
  ]

  pagebreak()  // move to next page
}