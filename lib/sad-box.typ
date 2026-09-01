#import "../layout/theme.typ": *
#import "../layout/template.typ": *
#import "text.typ": *
#import "area.typ": *
#import table: cell, header

// Box A - Office of Lodgement-Destination
#let office-of-lodgement-destination-box(
  office-code: "",
  office-name: "",
  checkbox-1: false,
  box-1: "",
  box-2: "",
  box-3: "",
  checkbox-2: false,
  submit-date: "",
  sad-type: "",
  sad-number: "",
  sad-date: "",
  manifest: "",
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  if office-code == "" {
    office-code = gray-out-text("(1)")
  }
  if office-name == "" {
    office-name = gray-out-text("(2)")
  }
  if box-1 == "" {
    box-1 = gray-out-text("(3)")
  }
  if box-2 == "" {
    box-2 = gray-out-text("(4)")
  }
  if box-3 == "" {
    box-3 = gray-out-text("(5)")
  }
  if submit-date == "" {
    submit-date = gray-out-text("(6)")
  }
  if sad-type == "" {
    sad-type = gray-out-text("(7)")
  }
  if sad-number == "" {
    sad-number = gray-out-text("(8)")
  }
  if sad-date == "" {
    sad-date = gray-out-text("(9)")
  }
  if manifest == "" {
    manifest = gray-out-text("(10)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-8x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[A OFFICE OF LODGEMENT / DESTINATION],

    // second row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(office-code, 20%)
        #blank-box(1mm)
        #filling-area(office-name, 75%)
      ],
    
    // third row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      )[
        #checkbox(checked: checkbox-1)
        #blank-box(1mm)
        #filling-area(box-1, 5%)
        #blank-box(1mm)
        #filling-area(box-2, 22%)
        #blank-box(1mm)
        #filling-area(box-3, 23%)
        #blank-box(1mm)
        #checkbox(checked: checkbox-2)
        #blank-box(1mm)
        #filling-area(submit-date, 23%)
      ],

    // fourth row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        Customs Reference
      ],

    // fifth row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(sad-type, 5%)
        #blank-box(1mm)
        #filling-area(sad-number, 43%)
        #blank-box(1mm)
        #filling-area(sad-date, 43%)
      ],

    // sixth row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        Manifest
        #blank-box(1mm)
        #filling-area(manifest, 78%)
      ],
  )
  v(small-v-gap-table)
}

// Box 1 - Declaration
#let declaration-box(flow: "", procedure: "", indicator: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  if flow == "" {
    flow = gray-out-text("(1)")
  }
  if procedure == "" {
    procedure = gray-out-text("(2)")
  }
  if indicator == "" {
    indicator = gray-out-text("(3)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-1x, cell-width-1x, cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[1],
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: center + horizon
      )[DECLARATION],

    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      fill: sad-table-cell-background-color,
      align: left + horizon
    )[#filling-area(flow, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(procedure, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      fill: sad-table-cell-background-color,
      align: left + horizon
      )[#filling-area(indicator, 100%)],
  )
  v(small-v-gap-table)
}

// Box 2 - Exporter / Consignor
#let exporter-consignor-box(no: "", description: "", note: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  
  if no == "" {
    no = gray-out-text("(1)")
  }
  if description == "" {
    description = gray-out-text("(2)")
  }
  if note == "" {
    note = gray-out-text("(3)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-5x, cell-width-5x),
    rows: (cell-height-1-half-x, cell-height-5x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[2 Exporter/Consignor],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        No.
        #blank-box(1mm)
        #filling-area(no, 80%)
      ],

    // second row
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(description, 100%)
      ],
    
    // third row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(note, 100%)
      ],
  )
}

// Box 3 - Forms
#let forms-box(current: "", all: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if current == "" {
    current = gray-out-text("(1)")
  }
  if all == "" {
    all = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-1x, cell-width-1x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[3 Forms],

    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(current, 100%)
      ],
      cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(all, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 4 - Load List
#let load-list-box(list: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if list == "" {
    list = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[4 Load List],
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(list, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 5 - Items
#let items-box(item: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if item == "" {
    item = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[5 Items],

    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(item, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 6 - Number of Packages
#let nbr-packages-box(package: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if package == "" {
    package = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-3x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[6 Nbr Packages],

    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(package, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 7 - Reference Number
#let reference-number-box(ref_year: "", ref_number: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if ref_year == "" {
    ref_year = gray-out-text("(1)")
  }
  if ref_number == "" {
    ref_number = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-3x, cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[7 Reference Number],

    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[
        #filling-area(ref_year, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(ref_number, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 8 - Importer / Consignee
#let importer-consignee-box(no: "", description: "", note: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if no == "" {
    no = gray-out-text("(1)")
  }
  if description == "" {
    description = gray-out-text("(2)")
  }
  if note == "" {
    note = gray-out-text("(3)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-5x, cell-width-5x),
    rows: (cell-height-1-half-x, cell-height-2x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[8 Importer/Consignee],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        No.
        #blank-box(1mm)
        #filling-area(no, 80%)
      ],

    // second row
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(description, 100%)
      ],
    
    // third row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(note, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 9 - Occasional Consignee
#let occasional-consignee-box(code: "", id: "", name: "", date: "", address: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if( code == "") {
    code = gray-out-text("(1)")
  }
  if( id == "") {
    id = gray-out-text("(2)")
  }
  if( name == "") {
    name = gray-out-text("(3)")
  }
  if( date == "") {
    date = gray-out-text("(4)")
  }
  if( address == "") {
    address = gray-out-text("(5)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-3x, cell-width-3x, cell-width-3x, cell-width-3x),
    rows: (cell-height-1-half-x, cell-height-2x, cell-height-2x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[9 Occasional Consignee/Exporter],
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#filling-area(code, 100%)],

    // second row
    cell(
      rowspan: 2,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[
        ID#linebreak()
        Name#linebreak()
        Address
        ],
    cell(
      colspan: 3,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(id, 21%)
        #blank-box(1mm)
        #filling-area(name, 36%)
        #blank-box(1mm)
        #filling-area(date, 36%)
      ],

    // third row
    cell(
      colspan: 3,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#filling-area(address, 100%)]
  )
  v(small-v-gap-table)
}

// Box 10 - Country of Last Clearance / First Destination
#let country-lc-fd-box(code: "", box_x: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code == "" {
    code = gray-out-text("(1)")
  }
  if box_x == "" {
    box_x = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[10 Country LC/FD],

    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code, 100%)
      ],
      cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(box_x, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 11 - Trading Country
#let trading-country-box(code: "", box_x: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code == "" {
    code = gray-out-text("(1)")
  }
  if box_x == "" {
    box_x = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[11 Trading Country],

    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code, 100%)
      ],
      cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(box_x, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 12 - Value Details
#let value-details-box(value: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if value == "" {
    value = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[12 Value Details],

    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(value, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 13 - Special Condition
#let special-condition-box(box_1: "", box_2: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if box_1 == "" {
    box_1 = gray-out-text("(1)")
  }
  if box_2 == "" {
    box_2 = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-3x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[13 Special Condition],

    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[
        #filling-area(box_1, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(box_2, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 14 - Declarant
#let declarant-box(no: "", description: "", note: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if no == "" {
    no = gray-out-text("(1)")
  }
  if description == "" {
    description = gray-out-text("(2)")
  }
  if note == "" {
    note = gray-out-text("(3)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-5x, cell-width-5x),
    rows: (cell-height-1-half-x, cell-height-2x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[14 Declarant],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        No.
        #blank-box(1mm)
        #filling-area(no, 80%)
      ],

    // second row
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(description, 100%)
      ],
    
    // third row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(note, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 15 - Country of Export
#let country-of-export-box(country: "", code_a: "", code_b: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if country == "" {
    country = gray-out-text("(1)")
  }
  if code_a == "" {
    code_a = gray-out-text("(2)")
  }
  if code_b == "" {
    code_b = gray-out-text("(3)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-5x, cell-width-2x, cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      fill: sad-table-cell-background-color,
      )[15 Country of Export],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[15 C.E.],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#align(right)[Code]],
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      fill: sad-table-cell-background-color,
      )[
        #filling-area(country, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        a
        #blank-box(1mm)
        #filling-area(code_a, 65%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        b
        #blank-box(1mm)
        #filling-area(code_b, 65%)
      ],
  )
  v(small-v-gap-table)
}

// Box 16 - Country of Origin
#let country-of-origin-box(country: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if country == "" {
    country = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-5x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      )[15 Country of Origin],
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      )[
        #filling-area(country, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 17 - Country of Destination
#let country-of-destination-box(country: "", code_a: "", code_b: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if country == "" {
    country = gray-out-text("(1)")
  }
  if code_a == "" {
    code_a = gray-out-text("(2)")
  }
  if code_b == "" {
    code_b = gray-out-text("(3)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-5x, cell-width-2x, cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x, cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(rowspan: 2)[],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[17 C.D.],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#align(right)[Code]],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        a
        #blank-box(1mm)
        #filling-area(code_a, 65%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        b
        #blank-box(1mm)
        #filling-area(code_b, 65%)
      ],

    
    // third row
    cell(
      colspan: 3,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      fill: sad-table-cell-background-color,
      )[17 Country of Destination],

    // fourth row
    cell(
      colspan: 3,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      fill: sad-table-cell-background-color,
      )[
        #filling-area(country, 100%)
      ],
    
  )
  v(small-v-gap-table)
}

// Box 18 - IDT MOT at Arrival / Departure
#let idt-mot-at-arrival-departure-box(identity: "", nationality: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if identity == "" {
    identity = gray-out-text("(1)")
  }
  if nationality == "" {
    nationality = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-10x, cell-width-1x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[18 Identity and nationality of Means of Transport at Arrival/Departure],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(identity, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(nationality, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 19 - Containerize
#let containerize-box(checked: false) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[19 Ctr.],
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #align(center)[#checkbox(checked: checked)]
      ],
  )
  v(small-v-gap-table)
}

// Box 20 - Delivery Terms
#let delivery-terms-box(incoterms: "", delivery_place: "", box_x: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if incoterms == "" {
    incoterms = gray-out-text("(1)")
  }
  if delivery_place == "" {
    delivery_place = gray-out-text("(2)")
  }
  if box_x == "" {
    box_x = gray-out-text("(3)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-1x, cell-width-10x, cell-width-1x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      colspan: 3,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[20 Delivery Terms],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(incoterms, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(delivery_place, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(box_x, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 21 - Identity of Means of Transport Crossing the Border
#let idt-mot-crossing-the-border-box(identity: "", mot: "", nationality: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if identity == "" {
    identity = gray-out-text("(1)")
  }
  if mot == "" {
    mot = gray-out-text("(2)")
  }
  if nationality == "" {
    nationality = gray-out-text("(3)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-10x, cell-width-1x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[21 Identity of Means of Transport Crossing the Border],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(identity, 80%)
        #blank-box(2mm)
        #filling-area(mot, 15%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(nationality, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 22 - Currency of Total Invoice Amount
#let currency-total-invoice-amount-box(currency: "", amount: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if currency == "" {
    currency = gray-out-text("(1)")
  }
  if amount == "" {
    amount = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-5x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[22 Cur. & Tot. Invoice Amount],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(currency, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(amount, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 23 - Exchange Rate
#let exchange-rate-box(rate: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if rate == "" {
    rate = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[23 Exchange Rate],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(rate, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 24 - Nature of Transactions
#let nature-of-transactions-box(code_1: "", code_2: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code_1 == "" {
    code_1 = gray-out-text("(1)")
  }
  if code_2 == "" {
    code_2 = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-1x, cell-width-1x, cell-width-3x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 3,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[24 Nature of Transactions],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code_1, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code_2, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[]
  )
  v(small-v-gap-table)
}

// Box 25 - Mode of Transport at the Border
#let mode-of-transport-at-border-box(mot: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if mot == "" {
    mot = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[25 Mode of Transport at the Border],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(mot, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
  )
  v(small-v-gap-table)
}

// Box 26 - Inland Mode of Transport
#let inland-mode-of-transport-box(mot: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if mot == "" {
    mot = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[26 Inland Mode of Transport],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(mot, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
  )
  v(small-v-gap-table)
}

// Box 27 - Place of Loading / Discharge
#let place-of-loading-discharge-box(code: "", name: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code == "" {
    code = gray-out-text("(1)")
  }
  if name == "" {
    name = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[27 Place of Loading / Discharge],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[
        #filling-area(code, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(name, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 28 - Bank Code
#let bank-code-box(code: "", term: "", description: "", description1: "", note1: "", note2: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code == "" {
    code = gray-out-text("(1)")
  }
  if term == "" {
    term = gray-out-text("(2)")
  }
  if description == "" {
    description = gray-out-text("(3)")
  }
  if description1 == "" {
    description1 = gray-out-text("(4)")
  }
  if note1 == "" {
    note1 = gray-out-text("(5)")
  }
  if note2 == "" {
    note2 = gray-out-text("(6)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-3x, cell-width-2x, cell-width-3x, cell-width-5x),
    rows: (cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[28 Financial and banking data],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#align(right)[Bank Code]],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code, 100%)
      ],
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[Term of payment],
    cell(
      align: left + horizon
      )[
        #filling-area(term, 100%)
      ],
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(description, 100%)
      ],

    // third row
    cell(
      colspan: 4,
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(description1, 100%)
      ],
    
    // fourth row
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[
        #filling-area(note1, 100%)
      ],
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(note2, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 29 - Office of Entry / Exit
#let office-of-entry-exit-box(code: "", name: "",) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code == "" {
    code = gray-out-text("(1)")
  }
  if name == "" {
    name = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[29 Office of Entry / Exit],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[
        #filling-area(code, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(name, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 30 - Location of Goods
#let location-of-goods-box(place: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if place == "" {
    place = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-6x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[30 Location of Goods],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(place, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 31 - Packages and Description of Goods
#let packages-and-description-of-goods-box(mark1: "", mark2: "", nbr: "", pkg_code: "", pkg_name: "", hs_desc: "", commercial_desc: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if mark1 == "" {
    mark1 = gray-out-text("(1)")
  }
  if mark2 == "" {
    mark2 = gray-out-text("(2)")
  }
  if nbr == "" {
    nbr = gray-out-text("(3)")
  }
  if pkg_code == "" {
    pkg_code = gray-out-text("(4)")
  }
  if pkg_name == "" {
    pkg_name = gray-out-text("(5)")
  }
  if hs_desc == "" {
    hs_desc = gray-out-text("(6)")
  }
  if commercial_desc == "" {
    commercial_desc = gray-out-text("(7)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (auto, cell-width-2x, cell-width-3x, cell-width-7x),
    rows: (cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      rowspan: 8,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left
      )[31],
    cell(
      rowspan: 8,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left
      )[Packages#linebreak()and#linebreak()Description#linebreak()of Goods],
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[Marks on Packages],

    // second row
    cell(
      align: left + horizon
      )[Marks & no],
    cell(
      align: left + horizon,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      )[
        #filling-area(mark1, 100%)
      ],

    // third row
    cell(
      align: left + horizon
      )[of packages],
    cell(
      align: left + horizon,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      )[
        #filling-area(mark2, 100%)
      ],

    // fourth row
    cell(
      align: left + horizon
      )[Nbr & Kind],
    cell(
      align: left + horizon,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      )[
        #filling-area(nbr, 20%)
        #blank-box(2mm)
        #filling-area(pkg_code, 75%)
      ],
    
    // fifth row
    cell(
      align: left + horizon
      )[],
    cell(
      align: left + horizon,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      )[
        #blank-box(19mm)
        #filling-area(pkg_name, 75%)
      ],

    // sixth row
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[Containers No(s)],

    // seventh row
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        Goods Description as Per Tariff
        #blank-box(2mm)
        #filling-area(hs_desc, 48%)
      ],
    
    // eighth row
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        Commercial Description
        #blank-box(2mm)
        #filling-area(commercial_desc, 58%)
      ],
  )
  v(small-v-gap-table)
}

// Box 32 - Item No.
#let item-no-box(no: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if no == "" {
    no = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-1-half-x, cell-width-1x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[32 Item No.],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(no, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
  )
  v(small-v-gap-table)
}

// Box 33 - Commodity Code
#let commodity-code-box(code: "", code_suf_1: "", code_suf_2: "", code_suf_3: "", code_suf_4: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code == "" {
    code = gray-out-text("(1)")
  }
  if code_suf_1 == "" {
    code_suf_1 = gray-out-text("(2)")
  }
  if code_suf_2 == "" {
    code_suf_2 = gray-out-text("(3)")
  }
  if code_suf_3 == "" {
    code_suf_3 = gray-out-text("(4)")
  }
  if code_suf_4 == "" {
    code_suf_4 = gray-out-text("(5)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-4x, cell-width-1x, cell-width-1-half-x, cell-width-1-half-x, cell-width-1-half-x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 1,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon,
      fill: sad-table-cell-background-color,
      )[33 Commodity Code],
    cell(
      colspan: 1,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon,
      )[],
    cell(
      colspan: 1,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      )[],
    cell(
      colspan: 1,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      )[],
    cell(
      colspan: 1,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      )[],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      fill: sad-table-cell-background-color
      )[
        #filling-area(code, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#filling-area(code_suf_1, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#filling-area(code_suf_2, 100%)],
    cell(
      colspan: 1,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      )[#filling-area(code_suf_3, 100%)],
    cell(
      colspan: 1,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      )[#filling-area(code_suf_4, 100%)],
  )
  v(small-v-gap-table)
}

// Box 34 - Country of Origin Code
#let country-of-origin-code-box(code_a: "", code_b: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code_a == "" {
    code_a = gray-out-text("(1)")
  }
  if code_b == "" {
    code_b = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-1-half-x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      )[34 Cty. orig. Code],
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        a
        #blank-box(1mm)
        #filling-area(code_a, 65%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        b
        #blank-box(1mm)
        #filling-area(code_b, 65%)
      ],
  )
  v(small-v-gap-table)
}

// Box 35 - Gross Mass
#let gross-mass-box(mass: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if mass == "" {
    mass = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[35 Gross mass (kg)],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: right + horizon
      )[
        #filling-area(mass, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 36 - Preference
#let preference-box(code: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code == "" {
    code = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-3x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[36 Preference],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 37 - Procedure
#let procedure-box(code4: "", code3: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code4 == "" {
    code4 = gray-out-text("(1)")
  }
  if code3 == "" {
    code3 = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-1-half-x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon,
      )[37 Procedure],
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code4, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code3, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 38 - Net Mass
#let net-mass-box(mass: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if mass == "" {
    mass = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[38 Net mass (kg)],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: right + horizon
      )[
        #filling-area(mass, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 39 - Box 39
#let box-39-box(code: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code == "" {
    code = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-3x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[39 xxx],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 40 - Transport Document / Previous Declaration
#let transport-doc-previous-declaration-box(doc_no: "", code: "", s_l: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if doc_no == "" {
    doc_no = gray-out-text("(1)")
  }
  if code == "" {
    code = gray-out-text("(2)")
  }
  if s_l == "" {
    s_l = gray-out-text("(3)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-9x, cell-width-1-half-x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[40 Transport Document / Previous Declaration],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[S/L],
    
    
    // second row
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(doc_no, 60%)
        #blank-box(1mm)
        #filling-area(code, 23%)
        #blank-box(1mm)
        #filling-area(s_l, 12%)
      ],    
  )
  v(small-v-gap-table)
}

// Box 41 - Supplementary Units
#let supplementary-units-box(unit: "", quantity: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if unit == "" {
    unit = gray-out-text("(1)")
  }
  if quantity == "" {
    quantity = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-1-half-x, cell-width-3x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[32 Supplementary units],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[
        #filling-area(unit, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(quantity, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 42 - Item Price  
#let item-price-box(price: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if price == "" {
    price = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[32 Item Price],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: right + horizon
      )[
        #filling-area(price, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 43 - Valuation Method
#let valuation-method-box(code: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if code == "" {
    code = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-1x, cell-width-1x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[43 V.M.],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
  )
  v(small-v-gap-table)
}

// Box 44 - Additional Information
#let additional-info-box(license: "", dv: "", dq: "", attachment1: "", attachment2: "", text1: "", text2: "", text3: "", text4: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if license == "" {
    license = gray-out-text("(1)")
  }
  if dv == "" {
    dv = gray-out-text("(2)")
  }
  if dq == "" {
    dq = gray-out-text("(3)")
  }
  if attachment1 == "" {
    attachment1 = gray-out-text("(4)")
  }
  if attachment2 == "" {
    attachment2 = gray-out-text("(5)")
  }
  if text1 == "" {
    text1 = gray-out-text("(6)")
  }
  if text2 == "" {
    text2 = gray-out-text("(7)")
  }
  if text3 == "" {
    text3 = gray-out-text("(8)")
  }
  if text4 == "" {
    text4 = gray-out-text("(9)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (auto, cell-width-2x, cell-width-1-half-x, cell-width-8x),
    rows: cell-height-1-half-x,
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      rowspan: 5,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left
      )[44],
    cell(
      rowspan: 5,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left
      )[Add. info#linebreak()Documents#linebreak()Produced#linebreak()Certificates#linebreak()and authorizations],
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        License No
        #filling-area(license, 28%)
        #blank-box(2mm)
        DV
        #filling-area(dv, 15%)
        #blank-box(2mm)
        DQ
        #filling-area(dq, 15%)
      ],

    // second row
    cell(
      rowspan: 2,
      align: left + horizon
      )[Attac.],
    cell(
      align: left + horizon,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      )[
        #filling-area(attachment1, 100%)
      ],

    // third row
    cell(
      align: left + horizon,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      )[
        #filling-area(attachment2, 100%)
      ],

    // fourth row
    cell(
      colspan: 2,
      align: left + horizon,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      )[
        #filling-area(text1, 65%)
        #blank-box(1mm)
        #filling-area(text2, 32%)
      ],

    // fifth row
    cell(
      colspan: 2,
      align: left + horizon,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      )[
        #filling-area(text3, 65%)
        #blank-box(1mm)
        #filling-area(text4, 32%)
      ],
  )
  v(small-v-gap-table)
}

// Box 45 - Adjustment
#let adjustment-box(value: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if value == "" {
    value = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-6x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[45 Adjustment],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: right + horizon
      )[
        #filling-area(value, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 46 - Customs Value
#let customs-value-box(value: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if value == "" {
    value = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-7x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[46 Customs Value],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: right + horizon
      )[
        #filling-area(value, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 47 - Calculation of Taxes
#let calculation-of-taxes-box(
  tax1: "", tax1_base: "", tax1_rate: "", tax1_amount: "", tax1_mp: "",
  tax2: "", tax2_base: "", tax2_rate: "", tax2_amount: "", tax2_mp: "",
  tax3: "", tax3_base: "", tax3_rate: "", tax3_amount: "", tax3_mp: "",
  tax4: "", tax4_base: "", tax4_rate: "", tax4_amount: "", tax4_mp: "",
  tax5: "", tax5_base: "", tax5_rate: "", tax5_amount: "", tax5_mp: "",
  tax6: "", tax6_base: "", tax6_rate: "", tax6_amount: "", tax6_mp: "",
  tax7: "", tax7_base: "", tax7_rate: "", tax7_amount: "", tax7_mp: "",
  tax8: "", tax8_base: "", tax8_rate: "", tax8_amount: "", tax8_mp: "",
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if tax1 == "" { tax1 = gray-out-text("(1)") }
  if tax1_base == "" { tax1_base = gray-out-text("(2)") }
  if tax1_rate == "" { tax1_rate = gray-out-text("(3)") }
  if tax1_amount == "" { tax1_amount = gray-out-text("(4)") }
  if tax1_mp == "" { tax1_mp = gray-out-text("(5)") }
  if tax2 == "" { tax2 = gray-out-text("(6)") }
  if tax2_base == "" { tax2_base = gray-out-text("(7)") }
  if tax2_rate == "" { tax2_rate = gray-out-text("(8)") }
  if tax2_amount == "" { tax2_amount = gray-out-text("(9)") }
  if tax2_mp == "" { tax2_mp = gray-out-text("(10)") }
  if tax3 == "" { tax3 = gray-out-text("(11)") }
  if tax3_base == "" { tax3_base = gray-out-text("(12)") }
  if tax3_rate == "" { tax3_rate = gray-out-text("(13)") }
  if tax3_amount == "" { tax3_amount = gray-out-text("(14)") }
  if tax3_mp == "" { tax3_mp = gray-out-text("(15)") }
  if tax4 == "" { tax4 = gray-out-text("(16)") }
  if tax4_base == "" { tax4_base = gray-out-text("(17)") }
  if tax4_rate == "" { tax4_rate = gray-out-text("(18)") }
  if tax4_amount == "" { tax4_amount = gray-out-text("(19)") }
  if tax4_mp == "" { tax4_mp = gray-out-text("(20)") }
  if tax5 == "" { tax5 = gray-out-text("(21)") }
  if tax5_base == "" { tax5_base = gray-out-text("(22)") }
  if tax5_rate == "" { tax5_rate = gray-out-text("(23)") }
  if tax5_amount == "" { tax5_amount = gray-out-text("(24)") }
  if tax5_mp == "" { tax5_mp = gray-out-text("(25)") }
  if tax6 == "" { tax6 = gray-out-text("(26)") }
  if tax6_base == "" { tax6_base = gray-out-text("(27)") }
  if tax6_rate == "" { tax6_rate = gray-out-text("(28)") }
  if tax6_amount == "" { tax6_amount = gray-out-text("(29)") }
  if tax6_mp == "" { tax6_mp = gray-out-text("(30)") }
  if tax7 == "" { tax7 = gray-out-text("(31)") }
  if tax7_base == "" { tax7_base = gray-out-text("(32)") }
  if tax7_rate == "" { tax7_rate = gray-out-text("(33)") }
  if tax7_amount == "" { tax7_amount = gray-out-text("(34)") }
  if tax7_mp == "" { tax7_mp = gray-out-text("(35)") }
  if tax8 == "" { tax8 = gray-out-text("(36)") }
  if tax8_base == "" { tax8_base = gray-out-text("(37)") }
  if tax8_rate == "" { tax8_rate = gray-out-text("(38)") }
  if tax8_amount == "" { tax8_amount = gray-out-text("(39)") }
  if tax8_mp == "" { tax8_mp = gray-out-text("(40)") }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (auto, cell-width-1-half-x, cell-width-1-half-x, cell-width-3x, cell-width-3x, cell-width-3x, cell-width-1x),
    rows: cell-height-1-half-x,
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      rowspan: 9,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left
      )[47],
    cell(
      rowspan: 9,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left
      )[Calc. of taxes],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[Type],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[Tax Base],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[Rate],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[Amount],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[MP],
    
    // second row - tax 1
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax1, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax1_base, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax1_rate, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax1_amount, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax1_mp, 100%)
      ],

    // third row - tax 2
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax2, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax2_base, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax2_rate, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax2_amount, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax2_mp, 100%)
      ],

    // fourth row - tax 3
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax3, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax3_base, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax3_rate, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax3_amount, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax3_mp, 100%)
      ],
    
    // fifth row - tax 4
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax4, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax4_base, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax4_rate, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax4_amount, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax4_mp, 100%)
      ],

    // sixth row - tax 5
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax5, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax5_base, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax5_rate, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax5_amount, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax5_mp, 100%)
      ],

    // seventh row - tax 6
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax6, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax6_base, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax6_rate, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax6_amount, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax6_mp, 100%)
      ],

    // eighth row - tax 7
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax7, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax7_base, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax7_rate, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax7_amount, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax7_mp, 100%)
      ],

    // ninth row - tax 8
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax8, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax8_base, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax8_rate, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax8_amount, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(tax8_mp, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 48 - Deferred Payment
#let deferred-payment-box(value: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if value == "" {
    value = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-6x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[48 Deferred payment],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(value, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box 49 - Identification of Warehouse
#let identification-of-warehouse-box(name: "", code: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if name == "" {
    name = gray-out-text("(1)")
  }
  if code == "" {
    code = gray-out-text("(2)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-4x, cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[49 Identification of warehouse],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[
        #filling-area(name, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(code, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box B - Accounting Details
#let accounting-details-box(
  accounting: "", 
  mop: "", 
  assessment_code: "", assessment_number: "", assessment_suffix: "", assessment_date: "",
  receipt_code: "", receipt_number: "", receipt_date: "",
  guarantee_amount: "", guarantee_date: "",
  fee_amount: "", declaration_amount: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if accounting == "" { accounting = gray-out-text("(1)") }
  if mop == "" { mop = gray-out-text("(2)") }
  if assessment_code == "" { assessment_code = gray-out-text("(3)") }
  if assessment_number == "" { assessment_number = gray-out-text("(4)") }
  if assessment_suffix == "" { assessment_suffix = gray-out-text("(5)") }
  if assessment_date == "" { assessment_date = gray-out-text("(6)") }
  if receipt_code == "" { receipt_code = gray-out-text("(7)") }
  if receipt_number == "" { receipt_number = gray-out-text("(8)") }
  if receipt_date == "" { receipt_date = gray-out-text("(9)") }
  if guarantee_amount == "" { guarantee_amount = gray-out-text("(10)") }
  if guarantee_date == "" { guarantee_date = gray-out-text("(11)") }
  if fee_amount == "" { fee_amount = gray-out-text("(12)") }
  if declaration_amount == "" { declaration_amount = gray-out-text("(13)") }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-4-half-x, cell-width-1x, cell-width-2x, cell-width-1x, cell-width-1x, cell-width-2x),
    rows: cell-height-1-half-x,
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[B ACCOUNTING DETAILS],
    cell(
      colspan: 5,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#filling-area(accounting, 100%)],
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[Mode of payment],
    cell(
      colspan: 3,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(mop, 100%)],
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],

    // third row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[Assessment number],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(assessment_code, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(assessment_number, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(assessment_suffix, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[Date],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#filling-area(assessment_date, 100%)],

    // fourth row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[Receipt number],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(receipt_code, 100%)],
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(receipt_number, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[Date],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#filling-area(receipt_date, 100%)],

    // fifth row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[Guarantee],
    cell(
      colspan: 3,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(guarantee_amount, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[Date],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#filling-area(guarantee_date, 100%)],
    
    // sixth row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[Total fees],
    cell(
      colspan: 3,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(fee_amount, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[KHR],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
    
    // seventh row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[Total fees],
    cell(
      colspan: 3,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(declaration_amount, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[KHR],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
  )
  v(small-v-gap-table)
}

// Box 50 - Principal
#let principal-box(no: "", note: "", represented_by: "", place_date: "", name: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if no == "" { no = gray-out-text("(1)") }
  if note == "" { note = gray-out-text("(2)") }
  if represented_by == "" { represented_by = gray-out-text("(3)") }
  if place_date == "" { place_date = gray-out-text("(4)") }
  if name == "" { name = gray-out-text("(5)") }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-3x, cell-width-1x, cell-width-1x, cell-width-2x, cell-width-2x, cell-width-2x, cell-width-3x),
    rows: cell-height-1-half-x,
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[50 Principal],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[No.],
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(no, 100%)],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[Signature],
    
    // second row
    cell(
      colspan: 4,
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(note, 100%)],
    cell(
      colspan: 3,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],

    // third row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[Represented by],
    cell(
      colspan: 5,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(represented_by, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],

    // fourth row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[Place and date],
    cell(
      colspan: 5,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(place_date, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#filling-area(name, 100%)],
  )
  v(small-v-gap-table)
}

// Box C - Office of Departure
#let office-of-departure-box(note: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-9x),
    rows: (cell-height-1x, cell-height-5x),
    
    // first row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[C OFFICE OF DEPARTURE],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
  )
  v(small-v-gap-table)
}

// Box 51 - Intended Offices of Transit and Country
#let intended-offices-of-transit-and-country-box(note: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (auto, cell-width-3x, cell-width-2x, cell-width-2x, cell-width-2x, cell-width-2x),
    rows: cell-height-2x,
    
    // first row
    cell(
      rowspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + top
      )[51],
    cell(
      rowspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + top
      )[Intended offices#linebreak()of transit#linebreak()and country],
    cell(
      colspan: 4,
      align: left + horizon
      )[],
    
    
    // second row
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      fill: sad-table-cell-background-color,
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      fill: sad-table-cell-background-color,
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      fill: sad-table-cell-background-color,
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      fill: sad-table-cell-background-color,
      align: left + horizon
      )[],
  )
  v(small-v-gap-table)
}

// Box 52 - Guarantee not valid for
#let guarantee-not-valid-for-box(note: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if note == "" {
    note = gray-out-text("(1)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (auto, cell-width-2-half-x, cell-width-8x, cell-width-1-half-x),
    rows: cell-height-1-half-x,
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      rowspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + top
      )[52],
    cell(
      rowspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: none,
      ),
      align: left + top
      )[Guarantee#linebreak()not valid for],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(note, 60%)],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[Code],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
  )
  v(small-v-gap-table)
}

// Box 53 - Office of Destination and Country
#let office-of-destination-and-country-box(office: "", name: "", country: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if office == "" {
    office = gray-out-text("(1)")
  }
  if name == "" {
    name = gray-out-text("(2)")
  }
  if country == "" {
    country = gray-out-text("(3)")
  }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-4x, cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x),
    fill: sad-table-cell-background-color,
    
    // first row
    cell(
      colspan: 3,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[53 Office of destination and country],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[
        #filling-area(office, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[
        #filling-area(name, 100%)
      ],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(country, 100%)
      ],
  )
  v(small-v-gap-table)
}

// Box D - Control by Office of Destination
#let control-by-office-of-destination-box(value1: "", value2: "", value3: "", value4: "", value5: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if value1 == "" { value1 = gray-out-text("(1)") }
  if value2 == "" { value2 = gray-out-text("(2)") }
  if value3 == "" { value3 = gray-out-text("(3)") }
  if value4 == "" { value4 = gray-out-text("(4)") }
  if value5 == "" { value5 = gray-out-text("(5)") }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-1-half-x, cell-width-2x, cell-width-1-half-x, cell-width-3x, cell-width-3x, cell-width-1x, cell-width-2x),
    rows: (cell-height-1x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 5,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[D CONTROL BY OFFICE OF DESTINATION],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[Stamp:],
    
    
    // second row
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[],
    cell(
      colspan: 3,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(value1, 100%)],
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
    
    // third row
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(value2, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(value3, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(value4, 100%)],
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],

    // fourth row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[Signature],
    cell(
      colspan: 2,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(value1, 100%)],
    cell(
      colspan: 3,
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
  )
  v(small-v-gap-table)
}

// Box 54 - Place and Date
#let place-and-date-box(date: "", name: "", phone: "", username: "") = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )
  if date == "" { date = gray-out-text("(1)") }
  if name == "" { name = gray-out-text("(2)") }
  if phone == "" { phone = gray-out-text("(3)") }
  if username == "" { username = gray-out-text("(4)") }
  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-5x, cell-width-4x),
    rows: (cell-height-1x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x),
    
    // first row
    cell(
      colspan: 2,
      stroke: (
        top: table-border-size + sad-table-border-color,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[54 Place and date],
    
    
    // second row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[
        #filling-area(date, 100%)
      ],
    
    // third row
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(name, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: none,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[],
    
    // fourth row
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: table-border-size + sad-table-border-color,
        right: none,
      ),
      align: left + horizon
      )[#filling-area(phone, 100%)],
    cell(
      stroke: (
        top: none,
        bottom: table-border-size + sad-table-border-color,
        left: none,
        right: table-border-size + sad-table-border-color,
      ),
      align: left + horizon
      )[#filling-area(username, 100%)],
  )
  v(small-v-gap-table)
}