#import "../layout/theme.typ": *
#import "../layout/template.typ": *
#import "text.typ": *
#import "area.typ": *
#import table: cell, header
#import "@preview/zebra:0.1.0": datamatrix, qrcode
#import "@preview/tiaoma:0.3.0": code128, ean14, eanx, barcode


// SAD - Valuation Note - General segment
#let sad-valuation-note-general-segment-ui(
  mode: "",
  invoice-amount: "", invoice-currency: "", invoice-exchange-rate: "", invoice-amount-khr: "",
  ex-freight-amount: "", ex-freight-currency: "", ex-freight-exchange-rate: "", ex-freight-amount-khr: "",
  in-freight-amount: "", in-freight-currency: "", in-freight-exchange-rate: "", in-freight-amount-khr: "",
  insurance-amount: "", insurance-currency: "", insurance-exchange-rate: "", insurance-amount-khr: "",
  other-cost-amount: "", other-cost-currency: "", other-cost-exchange-rate: "", other-cost-amount-khr: "",
  deduction-amount: "", deduction-currency: "", deduction-exchange-rate: "", deduction-amount-khr: "",
  total-gross-mass: "",
  delivery-terms: "", delivery-location: "",
  total-cost: "",
  cif-value: ""
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  if mode == "" {
    mode = gray-out-text("(1)")
  }
  if invoice-amount == "" {
    invoice-amount = gray-out-text("(2)")
  }
  if invoice-currency == "" {
    invoice-currency = gray-out-text("(3)")
  }
  if invoice-exchange-rate == "" {
    invoice-exchange-rate = gray-out-text("(4)")
  }
  if invoice-amount-khr == "" {
    invoice-amount-khr = gray-out-text("(5)")
  }
  if ex-freight-amount == "" {
    ex-freight-amount = gray-out-text("(6)")
  }
  if ex-freight-currency == "" {
    ex-freight-currency = gray-out-text("(7)")
  }
  if ex-freight-exchange-rate == "" {
    ex-freight-exchange-rate = gray-out-text("(8)")
  }
  if ex-freight-amount-khr == "" {
    ex-freight-amount-khr = gray-out-text("(9)")
  }
  if in-freight-amount == "" {
    in-freight-amount = gray-out-text("(10)")
  }
  if in-freight-currency == "" {
    in-freight-currency = gray-out-text("(11)")
  }
  if in-freight-exchange-rate == "" {
    in-freight-exchange-rate = gray-out-text("(12)")
  }
  if in-freight-amount-khr == "" {
    in-freight-amount-khr = gray-out-text("(13)")
  }
  if insurance-amount == "" {
    insurance-amount = gray-out-text("(14)")
  }
  if insurance-currency == "" {
    insurance-currency = gray-out-text("(15)")
  }
  if insurance-exchange-rate == "" {
    insurance-exchange-rate = gray-out-text("(16)")
  }
  if insurance-amount-khr == "" {
    insurance-amount-khr = gray-out-text("(17)")
  }
  if other-cost-amount == "" {
    other-cost-amount = gray-out-text("(18)")
  }
  if other-cost-currency == "" {
    other-cost-currency = gray-out-text("(19)")
  }
  if other-cost-exchange-rate == "" {
    other-cost-exchange-rate = gray-out-text("(20)")
  }
  if other-cost-amount-khr == "" {
    other-cost-amount-khr = gray-out-text("(21)")
  }
  if deduction-amount == "" {
    deduction-amount = gray-out-text("(22)")
  }
  if deduction-currency == "" {
    deduction-currency = gray-out-text("(23)")
  }
  if deduction-exchange-rate == "" {
    deduction-exchange-rate = gray-out-text("(24)")
  }
  if deduction-amount-khr == "" {
    deduction-amount-khr = gray-out-text("(25)")
  }
  if total-gross-mass == "" {
    total-gross-mass = gray-out-text("(26)")
  }
  if delivery-terms == "" {
    delivery-terms = gray-out-text("(27)")
  }
  if delivery-location == "" {
    delivery-location = gray-out-text("(28)")
  }
  if total-cost == "" {
    total-cost = gray-out-text("(29)")
  }
  if cif-value == "" {
    cif-value = gray-out-text("(30)")
  }
  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[SAD - Valuation Note - General segment]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (cell-width-2-and-half-x, cell-width-1-and-half-x, cell-width-2-and-half-x, auto, cell-width-2x, cell-width-2-and-half-x, cell-width-2-and-half-x),
        rows: cell-height-1-and-half-x,

        // Working mode
        cell(
          colspan: 7,
          align: left + horizon,
        )[
          Working mode
          #filling-area(mode, 30%)
        ],

        // Header
        cell(
          colspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Amount],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[FCX code],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Exchange rate],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[Amount in KHR],

        // Invoice value
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Invoice value],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(invoice-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(invoice-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(invoice-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(invoice-amount-khr, 100%)],

        // External freight
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[External Freight (import)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(ex-freight-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(ex-freight-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(ex-freight-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(ex-freight-amount-khr, 100%)],

        // Internal freight
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Internal Freight (import)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(in-freight-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(in-freight-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(in-freight-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(in-freight-amount-khr, 100%)],

        // Insurance
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Insurance],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(insurance-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(insurance-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(insurance-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(insurance-amount-khr, 100%)],

        // Other costs
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Other costs (import)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(other-cost-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(other-cost-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(other-cost-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(other-cost-amount-khr, 100%)],

        // Deduction
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Deductions],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(deduction-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(deduction-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(deduction-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(deduction-amount-khr, 100%)],

        // Mass and Cost
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Total gross mass],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(total-gross-mass, 100%)],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Total Costs],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(total-cost, 100%)],

        // Delivery terms
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Delivery terms],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(delivery-terms, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(delivery-location, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[CIF value],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(cif-value, 100%)],
      )
    ]
  )
  v(small-v-gap-table)
}


#let sad-valuation-note-item-ui(
  item: "",
  invoice-amount: "", invoice-currency: "", invoice-exchange-rate: "", invoice-amount-khr: "",
  ex-freight-amount: "", ex-freight-currency: "", ex-freight-exchange-rate: "", ex-freight-amount-khr: "",
  in-freight-amount: "", in-freight-currency: "", in-freight-exchange-rate: "", in-freight-amount-khr: "",
  insurance-amount: "", insurance-currency: "", insurance-exchange-rate: "", insurance-amount-khr: "",
  other-cost-amount: "", other-cost-currency: "", other-cost-exchange-rate: "", other-cost-amount-khr: "",
  deduction-amount: "", deduction-currency: "", deduction-exchange-rate: "", deduction-amount-khr: "",
  delivery-terms: "", delivery-location: "",
  total-cost: "",
  cif-value: "",
  statistical-value: "",
  supp-unit-code-1: "", supp-unit-name-1: "", supp-unit-qty-1: "",
  supp-unit-code-2: "", supp-unit-name-2: "", supp-unit-qty-2: "",
  market-value-rate: "", market-value-rate-currency: "", market-value-per: "", market-value-basis: "", market-value-amount: ""
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  if item == "" {
    item = gray-out-text("(1)")
  }
  if invoice-amount == "" {
    invoice-amount = gray-out-text("(2)")
  }
  if invoice-currency == "" {
    invoice-currency = gray-out-text("(3)")
  }
  if invoice-exchange-rate == "" {
    invoice-exchange-rate = gray-out-text("(4)")
  }
  if invoice-amount-khr == "" {
    invoice-amount-khr = gray-out-text("(5)")
  }
  if ex-freight-amount == "" {
    ex-freight-amount = gray-out-text("(6)")
  }
  if ex-freight-currency == "" {
    ex-freight-currency = gray-out-text("(7)")
  }
  if ex-freight-exchange-rate == "" {
    ex-freight-exchange-rate = gray-out-text("(8)")
  }
  if ex-freight-amount-khr == "" {
    ex-freight-amount-khr = gray-out-text("(9)")
  }
  if in-freight-amount == "" {
    in-freight-amount = gray-out-text("(10)")
  }
  if in-freight-currency == "" {
    in-freight-currency = gray-out-text("(11)")
  }
  if in-freight-exchange-rate == "" {
    in-freight-exchange-rate = gray-out-text("(12)")
  }
  if in-freight-amount-khr == "" {
    in-freight-amount-khr = gray-out-text("(13)")
  }
  if insurance-amount == "" {
    insurance-amount = gray-out-text("(14)")
  }
  if insurance-currency == "" {
    insurance-currency = gray-out-text("(15)")
  }
  if insurance-exchange-rate == "" {
    insurance-exchange-rate = gray-out-text("(16)")
  }
  if insurance-amount-khr == "" {
    insurance-amount-khr = gray-out-text("(17)")
  }
  if other-cost-amount == "" {
    other-cost-amount = gray-out-text("(18)")
  }
  if other-cost-currency == "" {
    other-cost-currency = gray-out-text("(19)")
  }
  if other-cost-exchange-rate == "" {
    other-cost-exchange-rate = gray-out-text("(20)")
  }
  if other-cost-amount-khr == "" {
    other-cost-amount-khr = gray-out-text("(21)")
  }
  if deduction-amount == "" {
    deduction-amount = gray-out-text("(22)")
  }
  if deduction-currency == "" {
    deduction-currency = gray-out-text("(23)")
  }
  if deduction-exchange-rate == "" {
    deduction-exchange-rate = gray-out-text("(24)")
  }
  if deduction-amount-khr == "" {
    deduction-amount-khr = gray-out-text("(25)")
  }
  if delivery-terms == "" {
    delivery-terms = gray-out-text("(26)")
  }
  if delivery-location == "" {
    delivery-location = gray-out-text("(27)")
  }
  if total-cost == "" {
    total-cost = gray-out-text("(28)")
  }
  if cif-value == "" {
    cif-value = gray-out-text("(29)")
  }
  if statistical-value == "" {
    statistical-value = gray-out-text("(30)")
  }
  if supp-unit-code-1 == "" {
    supp-unit-code-1 = gray-out-text("(31)")
  }
  if supp-unit-name-1 == "" {
    supp-unit-name-1 = gray-out-text("(32)")
  }
  if supp-unit-qty-1 == "" {
    supp-unit-qty-1 = gray-out-text("(33)")
  }
  if supp-unit-code-2 == "" {
    supp-unit-code-2 = gray-out-text("(34)")
  }
  if supp-unit-name-2 == "" {
    supp-unit-name-2 = gray-out-text("(35)")
  }
  if supp-unit-qty-2 == "" {
    supp-unit-qty-2 = gray-out-text("(36)")
  }
  if market-value-rate == "" {
    market-value-rate = gray-out-text("(37)")
  }
  if market-value-rate-currency == "" {
    market-value-rate-currency = gray-out-text("(38)")
  }
  if market-value-per == "" {
    market-value-per = gray-out-text("(39)")
  }
  if market-value-basis == "" {
    market-value-basis = gray-out-text("(40)")
  }
  if market-value-amount == "" {
    market-value-amount = gray-out-text("(41)")
  }
  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[SAD - Valuation Note - General segment]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (cell-width-2-and-half-x, cell-width-1-and-half-x, cell-width-2-and-half-x, auto, cell-width-2x, cell-width-2-and-half-x, cell-width-2-and-half-x),
        rows: cell-height-1-and-half-x,

        // Header
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Item number],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(item, 70%)#blank-box(30%)],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Amount],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[FCX code],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Exchange rate],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[Amount in KHR],

        // Invoice value
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Invoice value],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(invoice-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(invoice-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(invoice-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(invoice-amount-khr, 100%)],

        // External freight
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[External Freight (import)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(ex-freight-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(ex-freight-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(ex-freight-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(ex-freight-amount-khr, 100%)],

        // Internal freight
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Internal Freight (import)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(in-freight-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(in-freight-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(in-freight-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(in-freight-amount-khr, 100%)],

        // Insurance
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Insurance],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(insurance-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(insurance-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(insurance-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(insurance-amount-khr, 100%)],

        // Other costs
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Other costs (import)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(other-cost-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(other-cost-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(other-cost-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(other-cost-amount-khr, 100%)],

        // Deduction
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Deductions],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(deduction-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[in],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(deduction-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(deduction-exchange-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(deduction-amount-khr, 100%)],

        //Cost
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Total Costs],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(total-cost, 100%)],

        // Delivery terms and CIF value
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Delivery terms],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(delivery-terms, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(delivery-location, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[CIF value],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(cif-value, 100%)],

        // Statistical value
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Statistical value],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(statistical-value, 100%)],
      )
      
      #table(
        stroke: none,
        columns: (auto, auto, cell-width-5-quarter-x, cell-width-1x, cell-width-5-quarter-x, cell-width-5-quarter-x, cell-width-1x, cell-width-1-and-half-x, cell-width-2-and-half-x),
        rows: cell-height-1-and-half-x,

        // Header
        cell(
          colspan: 9,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[Additional information],

        // Supplementary Value 1
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#text(tracking:-0.03em)[Supplementary value 1]],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Code],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(supp-unit-code-1, 100%)],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Name],
        cell(
          colspan: 3,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(supp-unit-name-1, 100%)],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Quantity],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(supp-unit-qty-1, 100%)],

        // Supplementary Value 2
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#text(tracking:-0.03em)[Supplementary value 2]],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Code],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(supp-unit-code-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Name],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(supp-unit-name-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Quantity],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[#filling-area(supp-unit-qty-2, 100%)],

        // Market Value
        
        cell(
          rowspan: 2,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Market value],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Rate],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(market-value-rate, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(market-value-rate-currency, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Per],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(market-value-per, 100%)],

        // Basis - Market Value
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Basis],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(market-value-basis, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Amount],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: right + horizon,
        )[#filling-area(market-value-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: right + horizon,
        )[],
      )
    ]
  )
  v(small-v-gap-table)
}


#let sad-assessment-notice-ui(
  customs-office-code: "", customs-office-name: "",
  trade-flow-code: "", trade-flow-number: "",
  declaration-year: "", declaration-type: "", declaration-number: "", declaration-date: "",
  reference-year: "", reference-number: "",
  assessment-year: "", assessment-code: "", assessment-number: "", assessment-code-2: "", assessment-date: "",
  nbr-of-items: "",
  declarant-code: "", declarant-info: "",
  company-code: "", company-info: "",
  mode-of-payment: "", account-number: "", 
  receipt-code: "", receipt-number: "", receipt-date: "",
  statement-code: "", statement-number: "", statement-date: "",
  item-tax: (), global-tax: (),
  total-global-tax: "", total-items-tax: "", total-assessed-amount: "", amount-currently-status: "", amount-currently: "",
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-extra-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  let code = "CUO00-0000-AA-00"

  if customs-office-code != "" {
    code = customs-office-code + "-" + declaration-year + "-" + declaration-type + "-" + declaration-number
  }

  if customs-office-code == "" {
    customs-office-code = gray-out-text("(1)")
  }
  if customs-office-name == "" {
    customs-office-name = gray-out-text("(2)")
  }
  if trade-flow-code == "" {
    trade-flow-code = gray-out-text("(3)")
  }
  if trade-flow-number == "" {
    trade-flow-number = gray-out-text("(4)")
  }
  if declaration-year == "" {
    declaration-year = gray-out-text("(5)")
  }
  if declaration-type == "" {
    declaration-type = gray-out-text("(6)")
  }
  if declaration-number == "" {
    declaration-number = gray-out-text("(7)")
  }
  if declaration-date == "" {
    declaration-date = gray-out-text("(8)")
  }
  if reference-year == "" {
    reference-year = gray-out-text("(9)")
  }
  if reference-number == "" {
    reference-number = gray-out-text("(10)")
  }
  if assessment-year == "" {
    assessment-year = gray-out-text("(11)")
  }
  if assessment-code == "" {
    assessment-code = gray-out-text("(12)")
  }
  if assessment-number == "" {
    assessment-number = gray-out-text("(13)")
  }
  if assessment-code-2 == "" {
    assessment-code-2 = gray-out-text("(14)")
  }
  if assessment-date == "" {
    assessment-date = gray-out-text("(15)")
  }
  if nbr-of-items == "" {
    nbr-of-items = gray-out-text("(16)")
  }
  if declarant-code == "" {
    declarant-code = gray-out-text("(17)")
  }
  if declarant-info == "" {
    declarant-info = gray-out-text("(18)")
  }
  if company-code == "" {
    company-code = gray-out-text("(19)")
  }
  if company-info == "" {
    company-info = gray-out-text("(20)")
  }
  if mode-of-payment == "" {
    mode-of-payment = gray-out-text("(21)")
  }
  if account-number == "" {
    account-number = gray-out-text("(22)")
  }
  if receipt-code == "" {
    receipt-code = gray-out-text("(23)")
  }
  if receipt-number == "" {
    receipt-number = gray-out-text("(24)")
  }
  if receipt-date == "" {
    receipt-date = gray-out-text("(25)")
  }
  if statement-code == "" {
    statement-code = gray-out-text("(26)")
  }
  if statement-number == "" {
    statement-number = gray-out-text("(27)")
  }
  if statement-date == "" {
    statement-date = gray-out-text("(28)")
  }
  if item-tax.len() == 0 and global-tax.len() == 0 and total-global-tax == "" {
    item-tax = (
      (gray-out-text("(29)"), gray-out-text("(30)"), gray-out-text("(31)")),
    )
    global-tax = (
      (gray-out-text("(32)"), gray-out-text("(33)"), gray-out-text("(34)")),
    )
    total-global-tax = gray-out-text("(35)")
    total-items-tax = gray-out-text("(36)")
    total-assessed-amount = gray-out-text("(37)")
    amount-currently-status = gray-out-text("(38)")
    amount-currently = gray-out-text("(39)")
  }


  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[SAD - Assessment Notice]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (
          cell-width-3-quarter-x, cell-width-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, cell-width-1-and-half-x,
          cell-width-1x, cell-width-1-and-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, 
          auto, 
          cell-width-half-x, cell-width-1-and-half-x, cell-width-1-and-half-x),
        rows: cell-height-1-and-half-x,
        inset: 3pt,

        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Customs Office],
        cell(
          colspan: 5,
          rowspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[
          #barcode(
            code,
            "Code128",
            options: (
              show-hrt: false,
              scale: 0.3
              )
          )
          Identification of the declaration
        ],
        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Second Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-name, 100%)],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Third Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Model],
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Customs reference],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Declarant reference],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Assessment reference],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[Nbr of Itm.],
        
        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[/],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(nbr-of-items, 100%)],

        // Fifth Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Declarant],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[Company],

        // Sixth Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(company-code, 100%)],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Seventh Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-info, 100%)],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(company-info, 100%)],
      )

      #table(
        stroke: none,
        columns: (
          cell-width-2-and-half-x, 
          cell-width-2-and-half-x, 
          cell-width-1x, cell-width-1x, cell-width-1x, cell-width-1-and-half-x, 
          auto, cell-width-7-quarter-x, cell-width-7-quarter-x),
        rows: (cell-height-1x, cell-height-1-and-half-x, cell-height-1x, cell-height-11x),
        inset: 3pt,

        // First Row
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Mode of payment],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Account number],
        cell(
          colspan: 4,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Receipt number and date],
        cell(
          colspan: 3,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[Statement number and date],

        // Second Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(mode-of-payment, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(account-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(receipt-code, 100%)],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(receipt-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(receipt-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(statement-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(statement-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(statement-date, 100%)],

        // Third Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Items taxes],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[Global taxes],
        
        // Fourth Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + top,
        )[
          #table(
            stroke: none,
            columns: (14%, 3%, 45%, 3%, 35%),
            rows: cell-height-3-quarter-x,
            ..for i in range(0, 14) {
              if item-tax.len() > i {
                (
                  cell(stroke: (bottom: table-border-size + secondary-color))[#item-tax.at(i).at(0)],
                  cell[], 
                  cell(stroke: (bottom: table-border-size + secondary-color))[#item-tax.at(i).at(1)],
                  cell[], 
                  cell(stroke: (bottom: table-border-size + secondary-color))[#item-tax.at(i).at(2)])
              }
              else{
                (
                  cell(stroke: (bottom: table-border-size + secondary-color))[], 
                  cell[], 
                  cell(stroke: (bottom: table-border-size + secondary-color))[], 
                  cell[], 
                  cell(stroke: (bottom: table-border-size + secondary-color))[]
                )
              }
            }
          )
        ],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[
          #table(
            stroke: none,
            columns: (14%, 3%, 45%, 3%, 35%),
            rows: cell-height-3-quarter-x,
            ..for i in range(0, 8) {
              if global-tax.len() > i {
                (
                  cell(stroke: (bottom: table-border-size + secondary-color))[#global-tax.at(i).at(0)],
                  cell[], 
                  cell(stroke: (bottom: table-border-size + secondary-color))[#global-tax.at(i).at(1)],
                  cell[], 
                  cell(stroke: (bottom: table-border-size + secondary-color))[#global-tax.at(i).at(2)])
              }
              else{
                (
                  cell(stroke: (bottom: table-border-size + secondary-color))[], 
                  cell[], 
                  cell(stroke: (bottom: table-border-size + secondary-color))[], 
                  cell[], 
                  cell(stroke: (bottom: table-border-size + secondary-color))[]
                )
              }
            }
          )

          #table(
            stroke: none,
            columns: (34%, 30%, 1%, 35%),
            rows: cell-height-1x,
            inset: 3pt,

            cell(
              colspan: 2,
              stroke: (
                  top: table-border-size + primary-color,
                  bottom: none,
                  left: table-border-size + primary-color,
                  right: none,
              ),
              align: center + horizon,
            )[Total Global Taxes],
            cell(
              stroke: (
                  top: table-border-size + primary-color,
                  bottom: none,
                  left: none,
                  right: none,
              ),
              align: center + horizon,
            )[],
            cell(
              stroke: (
                  top: table-border-size + primary-color,
                  bottom: none,
                  left: none,
                  right: table-border-size + primary-color,
              ),
              align: right + horizon,
            )[#filling-area(total-global-tax, 100%)],


            cell(
              colspan: 2,
              stroke: (
                  top: none,
                  bottom: none,
                  left: table-border-size + primary-color,
                  right: none,
              ),
              align: center + horizon,
            )[Total Items Taxes],
            cell(
              stroke: (
                  top: none,
                  bottom: none,
                  left: none,
                  right: none,
              ),
              align: center + horizon,
            )[],
            cell(
              stroke: (
                  top: none,
                  bottom: none,
                  left: none,
                  right: table-border-size + primary-color,
              ),
              align: right + horizon,
            )[#filling-area(total-items-tax, 100%)],


            cell(
              colspan: 2,
              stroke: (
                  top: none,
                  bottom: none,
                  left: table-border-size + primary-color,
                  right: none,
              ),
              align: left + horizon,
            )[#text(tracking: -0.06em, size: 8.5pt)[Total assessed amount for the declaration]],
            cell(
              stroke: (
                  top: none,
                  bottom: none,
                  left: none,
                  right: none,
              ),
              align: center + horizon,
            )[],
            cell(
              stroke: (
                  top: none,
                  bottom: none,
                  left: none,
                  right: table-border-size + primary-color,
              ),
              align: right + horizon,
            )[#filling-area(total-assessed-amount, 100%)],


            cell(
              stroke: (
                  top: none,
                  bottom: table-border-size + primary-color,
                  left: table-border-size + primary-color,
                  right: none,
              ),
              align: center + horizon,
            )[Amount currently],
            cell(
              stroke: (
                  top: none,
                  bottom: table-border-size + primary-color,
                  left: none,
                  right: none,
              ),
              align: left + horizon,
            )[#filling-area(amount-currently-status, 100%)],
            cell(
              stroke: (
                  top: none,
                  bottom: table-border-size + primary-color,
                  left: none,
                  right: none,
              ),
              align: center + horizon,
            )[],
            cell(
              stroke: (
                  top: none,
                  bottom: table-border-size + primary-color,
                  left: none,
                  right: table-border-size + primary-color,
              ),
              align: right + horizon,
            )[#filling-area(amount-currently, 100%)]
          )
        ],
      )
    ]
  )
  v(small-v-gap-table)
}

#let sad-information-page-ui(
  customs-office-code: "", customs-office-name: "",
  trade-flow-code: "", trade-flow-number: "",
  declaration-year: "", declaration-type: "", declaration-number: "", declaration-date: "",
  reference-year: "", reference-number: "",
  assessment-year: "", assessment-code: "", assessment-number: "", assessment-code-2: "", assessment-date: "",
  nbr-of-items: "",
  declarant-code: "", declarant-info: "",
  comment: ""
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-extra-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  let code = "CUO00-0000-AA-00"

  if customs-office-code != "" {
    code = customs-office-code + "-" + declaration-year + "-" + declaration-type + "-" + declaration-number
  }

  if customs-office-code == "" {
    customs-office-code = gray-out-text("(1)")
  }
  if customs-office-name == "" {
    customs-office-name = gray-out-text("(2)")
  }
  if trade-flow-code == "" {
    trade-flow-code = gray-out-text("(3)")
  }
  if trade-flow-number == "" {
    trade-flow-number = gray-out-text("(4)")
  }
  if declaration-year == "" {
    declaration-year = gray-out-text("(5)")
  }
  if declaration-type == "" {
    declaration-type = gray-out-text("(6)")
  }
  if declaration-number == "" {
    declaration-number = gray-out-text("(7)")
  }
  if declaration-date == "" {
    declaration-date = gray-out-text("(8)")
  }
  if reference-year == "" {
    reference-year = gray-out-text("(9)")
  }
  if reference-number == "" {
    reference-number = gray-out-text("(10)")
  }
  if assessment-year == "" {
    assessment-year = gray-out-text("(11)")
  }
  if assessment-code == "" {
    assessment-code = gray-out-text("(12)")
  }
  if assessment-number == "" {
    assessment-number = gray-out-text("(13)")
  }
  if assessment-code-2 == "" {
    assessment-code-2 = gray-out-text("(14)")
  }
  if assessment-date == "" {
    assessment-date = gray-out-text("(15)")
  }
  if nbr-of-items == "" {
    nbr-of-items = gray-out-text("(16)")
  }
  if declarant-code == "" {
    declarant-code = gray-out-text("(17)")
  }
  if declarant-info == "" {
    declarant-info = gray-out-text("(18)")
  }
  if comment == "" {
    comment = gray-out-text("(19)")
  }


  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[SAD - Information Page]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (
          cell-width-3-quarter-x, cell-width-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, cell-width-1-and-half-x,
          cell-width-1x, cell-width-1-and-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, 
          auto, 
          cell-width-half-x, cell-width-1-and-half-x, cell-width-1-and-half-x),
        rows: cell-height-1-and-half-x,
        inset: 3pt,

        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Customs Office],
        cell(
          colspan: 5,
          rowspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[
          #barcode(
            code,
            "Code128",
            options: (
              show-hrt: false,
              scale: 0.3
              )
          )
          Identification of the declaration
        ],
        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Second Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-name, 100%)],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Third Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Model],
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Customs reference],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Declarant reference],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Assessment reference],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[Nbr of Itm.],
        
        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[/],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(nbr-of-items, 100%)],

        // Fifth Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Declarant],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[],

        // Sixth Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Seventh Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-info, 100%)],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],
      )

      #table(
        stroke: none,
        columns: 100%,
        rows: (cell-height-1x, cell-height-10x),
        inset: 3pt,

        // First Row
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[Comments],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[#comment],
      )
    ]
  )
  v(small-v-gap-table)
}


#let sad-attached-document-ui(
  customs-office-code: "", customs-office-name: "",
  trade-flow-code: "", trade-flow-number: "",
  declaration-year: "", declaration-type: "", declaration-number: "", declaration-date: "",
  reference-year: "", reference-number: "",
  assessment-year: "", assessment-code: "", assessment-number: "", assessment-code-2: "", assessment-date: "",
  nbr-of-items: "",
  declarant-code: "", declarant-info: "",
  item: "", item-code: "", item-description: "", item-reference: "", item-date: "", item-nsw: "", item-nsw-name: "", written-off-amount: "", uom: "",
  attachment-list: (),
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-extra-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  let code = "CUO00-0000-AA-00"

  if customs-office-code != "" {
    code = customs-office-code + "-" + declaration-year + "-" + declaration-type + "-" + declaration-number
  }

  if customs-office-code == "" {
    customs-office-code = gray-out-text("(1)")
  }
  if customs-office-name == "" {
    customs-office-name = gray-out-text("(2)")
  }
  if trade-flow-code == "" {
    trade-flow-code = gray-out-text("(3)")
  }
  if trade-flow-number == "" {
    trade-flow-number = gray-out-text("(4)")
  }
  if declaration-year == "" {
    declaration-year = gray-out-text("(5)")
  }
  if declaration-type == "" {
    declaration-type = gray-out-text("(6)")
  }
  if declaration-number == "" {
    declaration-number = gray-out-text("(7)")
  }
  if declaration-date == "" {
    declaration-date = gray-out-text("(8)")
  }
  if reference-year == "" {
    reference-year = gray-out-text("(9)")
  }
  if reference-number == "" {
    reference-number = gray-out-text("(10)")
  }
  if assessment-year == "" {
    assessment-year = gray-out-text("(11)")
  }
  if assessment-code == "" {
    assessment-code = gray-out-text("(12)")
  }
  if assessment-number == "" {
    assessment-number = gray-out-text("(13)")
  }
  if assessment-code-2 == "" {
    assessment-code-2 = gray-out-text("(14)")
  }
  if assessment-date == "" {
    assessment-date = gray-out-text("(15)")
  }
  if nbr-of-items == "" {
    nbr-of-items = gray-out-text("(16)")
  }
  if declarant-code == "" {
    declarant-code = gray-out-text("(17)")
  }
  if declarant-info == "" {
    declarant-info = gray-out-text("(18)")
  }
  if item == "" {
    item = gray-out-text("(19)")
  }
  if item-code == "" {
    item-code = gray-out-text("(20)")
  }
  if item-description == "" {
    item-description = gray-out-text("(21)")
  }
  if item-reference == "" {
    item-reference = gray-out-text("(22)")
  }
  if item-date == "" {
    item-date = gray-out-text("(23)")
  }
  if item-nsw == "" {
    item-nsw = gray-out-text("(24)")
  }
  if item-nsw-name == "" {
    item-nsw-name = gray-out-text("(25)")
  }
  if written-off-amount == "" {
    written-off-amount = gray-out-text("(26)")
  }
  if uom == "" {
    uom = gray-out-text("(27)")
  }
  if attachment-list.len() == 0 {
    attachment-list = (
      (gray-out-text("(28)"), gray-out-text("(29)"), gray-out-text("(30)"), gray-out-text("(31)"), gray-out-text("(32)"), gray-out-text("(33)"), gray-out-text("(34)"), gray-out-text("(35)"), gray-out-text("(36)")),
    )
  }


  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[SAD - Assessment Notice]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (
          cell-width-3-quarter-x, cell-width-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, cell-width-1-and-half-x,
          cell-width-1x, cell-width-1-and-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, 
          auto, 
          cell-width-half-x, cell-width-1-and-half-x, cell-width-1-and-half-x),
        rows: cell-height-1-and-half-x,
        inset: 3pt,

        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Customs Office],
        cell(
          colspan: 5,
          rowspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[
          #barcode(
            code,
            "Code128",
            options: (
              show-hrt: false,
              scale: 0.3
              )
          )
          Identification of the declaration
        ],
        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Second Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-name, 100%)],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Third Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Model],
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Customs reference],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Declarant reference],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Assessment reference],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[Nbr of Itm.],
        
        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[/],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(nbr-of-items, 100%)],

        // Fifth Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Declarant],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[],

        // Sixth Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Seventh Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-info, 100%)],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],
      )

      #table(
        stroke: none,
        columns: (auto, cell-width-1x, cell-width-1-and-half-x, cell-width-4x, cell-width-5-quarter-x, cell-width-2-and-half-x, cell-width-1x, cell-width-1x, cell-width-1x),
        rows: (cell-height-1x, cell-height-1-and-half-x, cell-height-1x, cell-height-1-and-half-x, auto),
        inset: 3pt,

        // First Row
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Item],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Code],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Description],
        cell(
          colspan: 3,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Reference],
        cell(
          colspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[Date],

        // Second Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: center + horizon,
          inset: 0.8em,
        )[#image("../asset/image/icon/file-line-icon.svg", width: 1em)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(item, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(item-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(item-description, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(item-reference, 100%)],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(item-date, 100%)],

        // Third Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[NSW LPCO Item],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[Written-off Amount],

        // Fourth Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[#box(fill: gray.lighten(80%), radius: 15%)[#image("../asset/image/icon/cart-green.svg", width: 2em)]],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(item-nsw, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(item-nsw-name, 100%)],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(written-off-amount, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(uom, 100%)],
        
        // Fifth Row
        cell(
          colspan: 9,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[
          #table(
            stroke: table-border-size + primary-color,
            columns: (5%, 8%, 15%, 15%, 10%, 12%, 12%, 15%, 8%),
            rows: cell-height-1x,
            ..(
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Itm],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Code],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Description],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Reference],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Date],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[LPCO Itm\#],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Itm. Name],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.05em)[Written-of Am...]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[UOM],
            ),
            ..for i in range(0, attachment-list.len()) {
              (
                cell()[#attachment-list.at(i).at(0)],
                cell()[#attachment-list.at(i).at(1)], 
                cell()[#attachment-list.at(i).at(2)],
                cell()[#attachment-list.at(i).at(3)], 
                cell()[#attachment-list.at(i).at(4)],
                cell()[#attachment-list.at(i).at(5)],
                cell()[#attachment-list.at(i).at(6)],
                cell()[#attachment-list.at(i).at(7)],
                cell()[#attachment-list.at(i).at(8)]
              )
            },
            ..if(attachment-list.len() < 5) {
              for i in range(attachment-list.len(), 5) {
                (
                  cell()[],
                  cell()[], 
                  cell()[],
                  cell()[], 
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                )
              }
            }
          )
        ],
      )
    ]
  )
  v(small-v-gap-table)
}


#let sad-scanned-document-ui(
  customs-office-code: "", customs-office-name: "",
  trade-flow-code: "", trade-flow-number: "",
  declaration-year: "", declaration-type: "", declaration-number: "", declaration-date: "",
  reference-year: "", reference-number: "",
  assessment-year: "", assessment-code: "", assessment-number: "", assessment-code-2: "", assessment-date: "",
  nbr-of-items: "",
  declarant-info: "",
  declarant-code: "", company-code: "",
  attachment-list: (),
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-extra-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  let code = "CUO00-0000-AA-00"

  if customs-office-code != "" {
    code = customs-office-code + "-" + declaration-year + "-" + declaration-type + "-" + declaration-number
  }

  if customs-office-code == "" {
    customs-office-code = gray-out-text("(1)")
  }
  if customs-office-name == "" {
    customs-office-name = gray-out-text("(2)")
  }
  if trade-flow-code == "" {
    trade-flow-code = gray-out-text("(3)")
  }
  if trade-flow-number == "" {
    trade-flow-number = gray-out-text("(4)")
  }
  if declaration-year == "" {
    declaration-year = gray-out-text("(5)")
  }
  if declaration-type == "" {
    declaration-type = gray-out-text("(6)")
  }
  if declaration-number == "" {
    declaration-number = gray-out-text("(7)")
  }
  if declaration-date == "" {
    declaration-date = gray-out-text("(8)")
  }
  if reference-year == "" {
    reference-year = gray-out-text("(9)")
  }
  if reference-number == "" {
    reference-number = gray-out-text("(10)")
  }
  if assessment-year == "" {
    assessment-year = gray-out-text("(11)")
  }
  if assessment-code == "" {
    assessment-code = gray-out-text("(12)")
  }
  if assessment-number == "" {
    assessment-number = gray-out-text("(13)")
  }
  if assessment-code-2 == "" {
    assessment-code-2 = gray-out-text("(14)")
  }
  if assessment-date == "" {
    assessment-date = gray-out-text("(15)")
  }
  if nbr-of-items == "" {
    nbr-of-items = gray-out-text("(16)")
  }
  if declarant-info == "" {
    declarant-info = gray-out-text("(17)")
  }
  if declarant-code == "" {
    declarant-code = gray-out-text("(18)")
  }
  if company-code == "" {
    company-code = gray-out-text("(19)")
  }
  if attachment-list.len() == 0 {
    attachment-list = (
      (gray-out-text("(28)"), gray-out-text("(29)"), gray-out-text("(30)"), gray-out-text("(31)"), gray-out-text("(32)"), gray-out-text("(33)"), gray-out-text("(34)"), gray-out-text("(35)"), gray-out-text("(36)")),
    )
  }


  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[SAD - Assessment Notice]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (
          cell-width-3-quarter-x, cell-width-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, cell-width-5-quarter-x,
          cell-width-1x, cell-width-1-and-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, 
          auto, 
          cell-width-half-x, cell-width-5-quarter-x, cell-width-1-and-half-x),
        rows: cell-height-1-and-half-x,
        inset: 3pt,

        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Customs Office],
        cell(
          colspan: 5,
          rowspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[
          #barcode(
            code,
            "Code128",
            options: (
              show-hrt: false,
              scale: 0.3
              )
          )
          Identification of the declaration
        ],
        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Second Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-name, 100%)],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Third Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Model],
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Customs reference],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Declarant reference],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Assessment reference],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[Nbr of Itm.],
        
        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[/],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(nbr-of-items, 100%)],

        // Fifth Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Declarant],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[],

        // Sixth Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-info, 100%)],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],
      )

      #table(
        stroke: none,
        columns: (cell-width-3x, cell-width-half-x, cell-width-half-x, cell-width-3x, cell-width-half-x, cell-width-6x),
        rows: (cell-height-1x, cell-height-1-and-half-x, auto),
        inset: 3pt,

        // First Row
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Declarant],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Consignee/Consignor],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Second Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: center + horizon,
        )[#filling-area(declarant-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/search.svg")]],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(company-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/search.svg")]],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],
        
        // Third Row
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[
          #table(
            stroke: table-border-size + primary-color,
            columns: (25%, 50%, 25%),
            rows: cell-height-5-quarter-x,
            ..(
              cell(align: center + horizon, fill: sad-table-cell-background-color, colspan: 3)[
                #box[
                  // #align(left)[
                    #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/search.svg")]
                    #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/save.svg")]
                    #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/cross-circle.svg")]
                  // ]
                ]
                #box(width: 72%)
                #box[
                  #align(left)[
                    #box(fill: gray.lighten(80%), radius: 15%, inset: 1.5pt)[#image("../asset/image/icon/arrow-up-arrow-down-circle-fill-svgrepo-com.svg")]
                    #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/pause-2.svg")]
                    #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/stop-2.svg")]
                    #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/search.svg")]
                  ]
                ]
              ],
            ),
            ..(
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Code],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[File Name],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Status],
            ),
            ..for i in range(0, attachment-list.len()) {
              (
                cell()[#attachment-list.at(i).at(0)],
                cell()[#attachment-list.at(i).at(1)], 
                cell()[#attachment-list.at(i).at(2)],
              )
            },
            ..if(attachment-list.len() < 5) {
              for i in range(attachment-list.len(), 5) {
                (
                  cell()[],
                  cell()[], 
                  cell()[],
                )
              }
            }
          )
        ],
      )
    ]
  )
  v(small-v-gap-table)
}


#let sad-asw-scanned-document-general-segment-ui(
 doc-ref-date: "", doc-reference: "",
  attachment-list: (),
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  if doc-ref-date == "" {
    doc-ref-date = gray-out-text("(1)")
  }
  if doc-reference == "" {
    doc-reference = gray-out-text("(2)")
  }
  if attachment-list.len() == 0 {
    attachment-list = (
      (gray-out-text("(3)"), gray-out-text("(4)"), gray-out-text("(5)"), gray-out-text("(6)"), gray-out-text("(7)"), gray-out-text("(8)")),
    )
  }


  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-3x, cell-width-half-x, cell-width-3x, cell-width-2x, cell-width-6x),
    rows: (cell-height-1x, cell-height-1x, cell-height-1-and-half-x, auto),

    // Header Row
    cell(
      colspan: 5,
      stroke: (
          top: table-border-size + primary-color,
          bottom: table-border-size + primary-color,
          left: table-border-size + primary-color,
          right: table-border-size + primary-color,
      ),
      align: left + horizon,
    )[General segment],

    // First Row
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: table-border-size + primary-color,
          right: none,
      ),
      align: left + horizon,
    )[Doc. ref. date],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[Doc. reference],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: table-border-size + primary-color,
      ),
      align: left + horizon,
    )[],

    // Second Row
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: table-border-size + primary-color,
          right: none,
      ),
      align: center + horizon,
    )[#filling-area(doc-ref-date, 100%)],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[#filling-area(doc-reference, 100%)],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[
      #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/search.svg")]
      #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/add-square.svg")]
      ],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: table-border-size + primary-color,
      ),
      align: left + horizon,
    )[],
    
    // Third Row
    cell(
      colspan: 5,
      stroke: (
          top: none,
          bottom: table-border-size + primary-color,
          left: table-border-size + primary-color,
          right: table-border-size + primary-color,
      ),
      align: center + top,
    )[
      #table(
        stroke: table-border-size + primary-color,
        columns: (cell-width-1-and-half-x, cell-width-5x, cell-width-7-quarter-x, cell-width-2x, cell-width-2x, cell-width-2x),
        rows: cell-height-1x,
        ..(
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Type],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Type name],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Date],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Reference],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Submitter],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[InstanceID],
        ),
        ..for i in range(0, attachment-list.len()) {
          (
            cell()[#attachment-list.at(i).at(0)],
            cell()[#attachment-list.at(i).at(1)],
            cell()[#attachment-list.at(i).at(2)],
            cell()[#attachment-list.at(i).at(3)],
            cell()[#attachment-list.at(i).at(4)],
            cell()[#attachment-list.at(i).at(5)],
          )
        },
        ..if(attachment-list.len() < 5) {
          for i in range(attachment-list.len(), 5) {
            (
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
            )
          }
        }
      )
    ],
  )
  v(small-v-gap-table)
}


#let sad-asw-scanned-document-item-ui(
 itm: "", doc-ref-date: "", doc-reference: "",
 attachment-list: (),
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  if itm == "" {
    itm = gray-out-text("(1)")
  }
  if doc-ref-date == "" {
    doc-ref-date = gray-out-text("(2)")
  }
  if doc-reference == "" {
    doc-reference = gray-out-text("(3)")
  }
  if attachment-list.len() == 0 {
    attachment-list = (
      (gray-out-text("(4)"), gray-out-text("(5)"), gray-out-text("(6)"), gray-out-text("(7)"), gray-out-text("(8)"), gray-out-text("(9)"), gray-out-text("(10)")),
    )
  }


  v(small-v-gap-table)
  table(
    stroke: none,
    columns: (cell-width-2x, cell-width-3x, cell-width-4x, cell-width-2x, cell-width-4x),
    rows: (cell-height-1x, cell-height-1x, cell-height-1-and-half-x, auto),

    // Header Row
    cell(
      colspan: 5,
      stroke: (
          top: table-border-size + primary-color,
          bottom: table-border-size + primary-color,
          left: table-border-size + primary-color,
          right: table-border-size + primary-color,
      ),
      align: left + horizon,
    )[Items],

    // First Row
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: table-border-size + primary-color,
          right: none,
      ),
      align: left + horizon,
    )[Itm],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[Doc. ref. date],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[Doc. reference],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: table-border-size + primary-color,
      ),
      align: left + horizon,
    )[],

    // Second Row
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: table-border-size + primary-color,
          right: none,
      ),
      align: center + horizon,
    )[#filling-area(itm, 100%)],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[#filling-area(doc-ref-date, 100%)],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[#filling-area(doc-reference, 100%)],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: none,
      ),
      align: left + horizon,
    )[
      #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/search.svg")]
      #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/add-square.svg")]
      ],
    cell(
      stroke: (
          top: none,
          bottom: none,
          left: none,
          right: table-border-size + primary-color,
      ),
      align: left + horizon,
    )[],
    
    // Third Row
    cell(
      colspan: 5,
      stroke: (
          top: none,
          bottom: table-border-size + primary-color,
          left: table-border-size + primary-color,
          right: table-border-size + primary-color,
      ),
      align: center + top,
    )[
      #table(
        stroke: table-border-size + primary-color,
        columns: (cell-width-1x, cell-width-1-and-half-x, cell-width-4-and-half-x, cell-width-7-quarter-x, cell-width-2x, cell-width-2x, cell-width-2x),
        rows: cell-height-1x,
        ..(
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Itm],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Type],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Type name],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Date],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Reference],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[Submitter],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[InstanceID],
        ),
        ..for i in range(0, attachment-list.len()) {
          (
            cell()[#attachment-list.at(i).at(0)],
            cell()[#attachment-list.at(i).at(1)],
            cell()[#attachment-list.at(i).at(2)],
            cell()[#attachment-list.at(i).at(3)],
            cell()[#attachment-list.at(i).at(4)],
            cell()[#attachment-list.at(i).at(5)],
            cell()[#attachment-list.at(i).at(6)],
          )
        },
        ..if(attachment-list.len() < 5) {
          for i in range(attachment-list.len(), 5) {
            (
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
            )
          }
        }
      )
    ],
  )
  v(small-v-gap-table)
}


#let sad-containers-ui(
  customs-office-code: "", customs-office-name: "",
  trade-flow-code: "", trade-flow-number: "",
  declaration-year: "", declaration-type: "", declaration-number: "", declaration-date: "",
  reference-year: "", reference-number: "",
  assessment-year: "", assessment-code: "", assessment-number: "", assessment-code-2: "", assessment-date: "",
  nbr-of-items: "",
  declarant-code: "", declarant-info: "",
  item: "", container-no: "", nbr-of-pck: "", package-type: "", container-type: "", ef: "", goods: "", empty-weight: "", goods-weight: "",
  container-list: (),
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-extra-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  let code = "CUO00-0000-AA-00"

  if customs-office-code != "" {
    code = customs-office-code + "-" + declaration-year + "-" + declaration-type + "-" + declaration-number
  }

  if customs-office-code == "" {
    customs-office-code = gray-out-text("(1)")
  }
  if customs-office-name == "" {
    customs-office-name = gray-out-text("(2)")
  }
  if trade-flow-code == "" {
    trade-flow-code = gray-out-text("(3)")
  }
  if trade-flow-number == "" {
    trade-flow-number = gray-out-text("(4)")
  }
  if declaration-year == "" {
    declaration-year = gray-out-text("(5)")
  }
  if declaration-type == "" {
    declaration-type = gray-out-text("(6)")
  }
  if declaration-number == "" {
    declaration-number = gray-out-text("(7)")
  }
  if declaration-date == "" {
    declaration-date = gray-out-text("(8)")
  }
  if reference-year == "" {
    reference-year = gray-out-text("(9)")
  }
  if reference-number == "" {
    reference-number = gray-out-text("(10)")
  }
  if assessment-year == "" {
    assessment-year = gray-out-text("(11)")
  }
  if assessment-code == "" {
    assessment-code = gray-out-text("(12)")
  }
  if assessment-number == "" {
    assessment-number = gray-out-text("(13)")
  }
  if assessment-code-2 == "" {
    assessment-code-2 = gray-out-text("(14)")
  }
  if assessment-date == "" {
    assessment-date = gray-out-text("(15)")
  }
  if nbr-of-items == "" {
    nbr-of-items = gray-out-text("(16)")
  }
  if declarant-code == "" {
    declarant-code = gray-out-text("(17)")
  }
  if declarant-info == "" {
    declarant-info = gray-out-text("(18)")
  }
  if item == "" {
    item = gray-out-text("(19)")
  }
  if container-no == "" {
    container-no = gray-out-text("(20)")
  }
  if nbr-of-pck == "" {
    nbr-of-pck = gray-out-text("(21)")
  }
  if package-type == "" {
    package-type = gray-out-text("(22)")
  }
  if container-type == "" {
    container-type = gray-out-text("(23)")
  }
  if ef == "" {
    ef = gray-out-text("(24)")
  }
  if goods == "" {
    goods = gray-out-text("(25)")
  }
  if empty-weight == "" {
    empty-weight = gray-out-text("(26)")
  }
  if goods-weight == "" {
    goods-weight = gray-out-text("(27)")
  }
  if container-list.len() == 0 {
    container-list = (
      (gray-out-text("(28)"), gray-out-text("(29)"), gray-out-text("(30)"), gray-out-text("(31)"), gray-out-text("(32)"), gray-out-text("(33)"), gray-out-text("(34)"), gray-out-text("(35)"), gray-out-text("(36)")),
    )
  }


  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[SAD - Containers]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (
          cell-width-3-quarter-x, cell-width-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, cell-width-1-and-half-x,
          cell-width-1x, cell-width-1-and-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, 
          auto, 
          cell-width-half-x, cell-width-1-and-half-x, cell-width-1-and-half-x),
        rows: cell-height-1-and-half-x,
        inset: 3pt,

        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Customs Office],
        cell(
          colspan: 5,
          rowspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[
          #barcode(
            code,
            "Code128",
            options: (
              show-hrt: false,
              scale: 0.3
              )
          )
          Identification of the declaration
        ],
        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Second Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-name, 100%)],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Third Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Model],
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Customs reference],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Declarant reference],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Assessment reference],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[Nbr of Itm.],
        
        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[/],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(nbr-of-items, 100%)],

        // Fifth Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Declarant],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[],

        // Sixth Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Seventh Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-info, 100%)],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],
      )

      #table(
        stroke: none,
        columns: (auto, cell-width-1x, cell-width-2x, cell-width-1-and-half-x, cell-width-7-quarter-x, cell-width-5-quarter-x, cell-width-3-quarter-x, cell-width-1-and-half-x, cell-width-7-quarter-x, cell-width-7-quarter-x),
        rows: (cell-height-1x, cell-height-1-and-half-x, cell-height-7x),
        inset: 3pt,

        // First Row
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Item],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Container No.],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#text(tracking: -0.06em)[Nbr. of pck.]],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#text(tracking: -0.06em)[Package type]],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#text(tracking: -0.06em)[Type]],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[E/F],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Goods],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#text(tracking: -0.06em)[Empty weight]],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#text(tracking: -0.06em)[Goods weight]],

        // Second Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: center + horizon,
          inset: 0.8em,
        )[#image("../asset/image/icon/file-line-icon.svg", width: 1em)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(item, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(container-no, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(nbr-of-pck, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(package-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(container-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(ef, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(goods, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(empty-weight, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(goods-weight, 100%)],

        // Third Row
        cell(
          colspan: 10,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[
          #table(
            stroke: table-border-size + primary-color,
            columns: (5%, 16%, 11%, 13%, 7%, 6%, 16%, 13%, 13%),
            rows: cell-height-1x,
            ..(
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Itm],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Container No.],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.05em)[Nbr. of pck.]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.06em)[Package type]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.06em)[Type]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[E/F],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Goods],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.06em)[Empty weight]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.06em)[Gross weight]],
            ),
            ..for i in range(0, container-list.len()) {
              (
                cell()[#container-list.at(i).at(0)],
                cell()[#container-list.at(i).at(1)], 
                cell()[#container-list.at(i).at(2)],
                cell()[#container-list.at(i).at(3)], 
                cell()[#container-list.at(i).at(4)],
                cell()[#container-list.at(i).at(5)],
                cell()[#container-list.at(i).at(6)],
                cell()[#container-list.at(i).at(7)],
                cell()[#container-list.at(i).at(8)]
              )
            },
            ..if(container-list.len() < 5) {
              for i in range(container-list.len(), 5) {
                (
                  cell()[],
                  cell()[], 
                  cell()[],
                  cell()[], 
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                )
              }
            }
          )
        ],
      )
    ]
  )
  v(small-v-gap-table)
}


#let sad-write-off-ui(
  customs-office-code: "", customs-office-name: "",
  trade-flow-code: "", trade-flow-number: "",
  declaration-year: "", declaration-type: "", declaration-number: "", declaration-date: "",
  reference-year: "", reference-number: "",
  assessment-year: "", assessment-code: "", assessment-number: "", assessment-code-2: "", assessment-date: "",
  nbr-of-items: "",
  declarant-code: "", declarant-info: "",
  write-off-list: (),
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-extra-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  let code = "CUO00-0000-AA-00"

  if customs-office-code != "" {
    code = customs-office-code + "-" + declaration-year + "-" + declaration-type + "-" + declaration-number
  }

  if customs-office-code == "" {
    customs-office-code = gray-out-text("(1)")
  }
  if customs-office-name == "" {
    customs-office-name = gray-out-text("(2)")
  }
  if trade-flow-code == "" {
    trade-flow-code = gray-out-text("(3)")
  }
  if trade-flow-number == "" {
    trade-flow-number = gray-out-text("(4)")
  }
  if declaration-year == "" {
    declaration-year = gray-out-text("(5)")
  }
  if declaration-type == "" {
    declaration-type = gray-out-text("(6)")
  }
  if declaration-number == "" {
    declaration-number = gray-out-text("(7)")
  }
  if declaration-date == "" {
    declaration-date = gray-out-text("(8)")
  }
  if reference-year == "" {
    reference-year = gray-out-text("(9)")
  }
  if reference-number == "" {
    reference-number = gray-out-text("(10)")
  }
  if assessment-year == "" {
    assessment-year = gray-out-text("(11)")
  }
  if assessment-code == "" {
    assessment-code = gray-out-text("(12)")
  }
  if assessment-number == "" {
    assessment-number = gray-out-text("(13)")
  }
  if assessment-code-2 == "" {
    assessment-code-2 = gray-out-text("(14)")
  }
  if assessment-date == "" {
    assessment-date = gray-out-text("(15)")
  }
  if nbr-of-items == "" {
    nbr-of-items = gray-out-text("(16)")
  }
  if declarant-code == "" {
    declarant-code = gray-out-text("(17)")
  }
  if declarant-info == "" {
    declarant-info = gray-out-text("(18)")
  }
  if write-off-list.len() == 0 {
    write-off-list = (
      (gray-out-text("(19)"), gray-out-text("(20)"), gray-out-text("(21)"), gray-out-text("(22)"), gray-out-text("(23)"), gray-out-text("(24)")),
    )
  }


  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[SAD - Write off Historic]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (
          cell-width-3-quarter-x, cell-width-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, cell-width-1-and-half-x,
          cell-width-1x, cell-width-1-and-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, 
          auto, 
          cell-width-half-x, cell-width-1-and-half-x, cell-width-1-and-half-x),
        rows: cell-height-1-and-half-x,
        inset: 3pt,

        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Customs Office],
        cell(
          colspan: 5,
          rowspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[
          #barcode(
            code,
            "Code128",
            options: (
              show-hrt: false,
              scale: 0.3
              )
          )
          Identification of the declaration
        ],
        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Second Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-name, 100%)],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Third Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Model],
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Customs reference],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Declarant reference],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Assessment reference],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[Nbr of Itm.],
        
        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[/],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(nbr-of-items, 100%)],

        // Fifth Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Declarant],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[],

        // Sixth Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Seventh Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-info, 100%)],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],
      )

      #table(
        stroke: none,
        // columns: 100%,
        rows: auto,
        inset: 3pt,

        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[
          #table(
            stroke: table-border-size + primary-color,
            columns: (10%, 20%, 15%, 15%, 20%, 20%),
            rows: cell-height-1x,
            ..(
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Type],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Reference],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Item in SAD],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Container],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Number of packages],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Gross weight],
            ),
            ..for i in range(0, write-off-list.len()) {
              (
                cell()[#write-off-list.at(i).at(0)],
                cell()[#write-off-list.at(i).at(1)], 
                cell()[#write-off-list.at(i).at(2)],
                cell()[#write-off-list.at(i).at(3)], 
                cell()[#write-off-list.at(i).at(4)],
                cell()[#write-off-list.at(i).at(5)],
              )
            },
            ..if(write-off-list.len() < 5) {
              for i in range(write-off-list.len(), 5) {
                (
                  cell()[],
                  cell()[], 
                  cell()[],
                  cell()[], 
                  cell()[],
                  cell()[],
                )
              }
            }
          )
        ],
      )
    ]
  )
  v(small-v-gap-table)
}


#let sad-upload-file-ui(
  customs-office-code: "", customs-office-name: "",
  trade-flow-code: "", trade-flow-number: "",
  declaration-year: "", declaration-type: "", declaration-number: "", declaration-date: "",
  reference-year: "", reference-number: "",
  assessment-year: "", assessment-code: "", assessment-number: "", assessment-code-2: "", assessment-date: "",
  nbr-of-items: "",
  declarant-code: "", declarant-info: "",
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-extra-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  let code = "CUO00-0000-AA-00"

  if customs-office-code != "" {
    code = customs-office-code + "-" + declaration-year + "-" + declaration-type + "-" + declaration-number
  }

  if customs-office-code == "" {
    customs-office-code = gray-out-text("(1)")
  }
  if customs-office-name == "" {
    customs-office-name = gray-out-text("(2)")
  }
  if trade-flow-code == "" {
    trade-flow-code = gray-out-text("(3)")
  }
  if trade-flow-number == "" {
    trade-flow-number = gray-out-text("(4)")
  }
  if declaration-year == "" {
    declaration-year = gray-out-text("(5)")
  }
  if declaration-type == "" {
    declaration-type = gray-out-text("(6)")
  }
  if declaration-number == "" {
    declaration-number = gray-out-text("(7)")
  }
  if declaration-date == "" {
    declaration-date = gray-out-text("(8)")
  }
  if reference-year == "" {
    reference-year = gray-out-text("(9)")
  }
  if reference-number == "" {
    reference-number = gray-out-text("(10)")
  }
  if assessment-year == "" {
    assessment-year = gray-out-text("(11)")
  }
  if assessment-code == "" {
    assessment-code = gray-out-text("(12)")
  }
  if assessment-number == "" {
    assessment-number = gray-out-text("(13)")
  }
  if assessment-code-2 == "" {
    assessment-code-2 = gray-out-text("(14)")
  }
  if assessment-date == "" {
    assessment-date = gray-out-text("(15)")
  }
  if nbr-of-items == "" {
    nbr-of-items = gray-out-text("(16)")
  }
  if declarant-code == "" {
    declarant-code = gray-out-text("(17)")
  }
  if declarant-info == "" {
    declarant-info = gray-out-text("(18)")
  }


  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[SAD - Write off Historic]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (
          cell-width-3-quarter-x, cell-width-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, cell-width-1-and-half-x,
          cell-width-1x, cell-width-1-and-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, 
          auto, 
          cell-width-half-x, cell-width-1-and-half-x, cell-width-1-and-half-x),
        rows: cell-height-1-and-half-x,
        inset: 3pt,

        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Customs Office],
        cell(
          colspan: 5,
          rowspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[
          #barcode(
            code,
            "Code128",
            options: (
              show-hrt: false,
              scale: 0.3
              )
          )
          Identification of the declaration
        ],
        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Second Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-name, 100%)],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Third Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Model],
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Customs reference],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Declarant reference],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Assessment reference],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[Nbr of Itm.],
        
        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[/],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(nbr-of-items, 100%)],

        // Fifth Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Declarant],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[],

        // Sixth Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 5,
          rowspan: 2,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: center + horizon,
        )[
          #box(fill: gray.lighten(80%), radius: 15%, inset: 2pt)[#image("../asset/image/icon/upload-filled-svgrepo-com.svg", width: 2em)]
          
          CLICK TO UPLOAD/VIEW FILE
        ],

        // Seventh Row
        cell(
          colspan: 7,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-info, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
      )
    ]
  )
  v(small-v-gap-table)
}


#let sad-selectivity-control-ui(
  customs-office-code: "", customs-office-name: "",
  trade-flow-code: "", trade-flow-number: "",
  declaration-year: "", declaration-type: "", declaration-number: "", declaration-date: "",
  reference-year: "", reference-number: "",
  assessment-year: "", assessment-code: "", assessment-number: "", assessment-code-2: "", assessment-date: "",
  nbr-of-items: "",
  reason-of-re-routing: "",
  declarant-code: "", declarant-info: "",
  selected-color: "",
  control-list: (),
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-x-extra-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  let code = "CUO00-0000-AA-00"

  if customs-office-code != "" {
    code = customs-office-code + "-" + declaration-year + "-" + declaration-type + "-" + declaration-number
  }

  if customs-office-code == "" {
    customs-office-code = gray-out-text("(1)")
  }
  if customs-office-name == "" {
    customs-office-name = gray-out-text("(2)")
  }
  if trade-flow-code == "" {
    trade-flow-code = gray-out-text("(3)")
  }
  if trade-flow-number == "" {
    trade-flow-number = gray-out-text("(4)")
  }
  if declaration-year == "" {
    declaration-year = gray-out-text("(5)")
  }
  if declaration-type == "" {
    declaration-type = gray-out-text("(6)")
  }
  if declaration-number == "" {
    declaration-number = gray-out-text("(7)")
  }
  if declaration-date == "" {
    declaration-date = gray-out-text("(8)")
  }
  if reference-year == "" {
    reference-year = gray-out-text("(9)")
  }
  if reference-number == "" {
    reference-number = gray-out-text("(10)")
  }
  if assessment-year == "" {
    assessment-year = gray-out-text("(11)")
  }
  if assessment-code == "" {
    assessment-code = gray-out-text("(12)")
  }
  if assessment-number == "" {
    assessment-number = gray-out-text("(13)")
  }
  if assessment-code-2 == "" {
    assessment-code-2 = gray-out-text("(14)")
  }
  if assessment-date == "" {
    assessment-date = gray-out-text("(15)")
  }
  if nbr-of-items == "" {
    nbr-of-items = gray-out-text("(16)")
  }
  if reason-of-re-routing == "" {
    reason-of-re-routing = gray-out-text("(17)")
  }
  if declarant-code == "" {
    declarant-code = gray-out-text("(18)")
  }
  if declarant-info == "" {
    declarant-info = gray-out-text("(19)")
  }
  if selected-color == "" {
    selected-color = gray-out-text("(20)")
  }
  if control-list.len() == 0 {
    control-list = (
      (gray-out-text("(21)"), gray-out-text("(22)"), gray-out-text("(23)"), gray-out-text("(24)"), gray-out-text("(25)"), gray-out-text("(26)"), gray-out-text("(27)"), gray-out-text("(28)"), gray-out-text("(29)"), gray-out-text("(30)"), gray-out-text("(31)"), gray-out-text("(32)"), gray-out-text("(33)")),
    )
  }


  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[Selectivity control document]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (
          cell-width-half-x, cell-width-half-x, 
          cell-width-3-quarter-x, cell-width-half-x, cell-width-3-quarter-x, cell-width-1-and-half-x,
          cell-width-3-quarter-x, cell-width-1-and-half-x, 
          cell-width-3-quarter-x, cell-width-half-x, cell-width-3-quarter-x, 
          auto, 
          cell-width-half-x, cell-width-1-and-half-x, cell-width-5-quarter-x, cell-width-7-quarter-x),
        rows: cell-height-1-and-half-x,
        inset: 3pt,

        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Customs Office],
        cell(
          colspan: 5,
          rowspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[],
        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#text(tracking: -0.07em)[Rsn. of re-routing]],

        // Second Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-name, 100%)],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          rowspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(reason-of-re-routing, 100%)],

        // Third Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Model],
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Customs reference],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[#text(tracking: -0.05em)[Declarant reference]],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Assessment reference],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[#text(tracking: -0.05em)[Nbr of Itm.]],
        
        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[/],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(nbr-of-items, 100%)],

        // Fifth Row
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Declarant],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Selected],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[],

        // Sixth Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-code, 100%)],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[
          #let color-border = green
          #let stroke-color-size = 0.08em
          #let color-darken = 40%
          #if selected-color == "Yellow" {
            color-border = yellow
          } else if selected-color == "Red" {
            color-border = red
          } else if selected-color == "Blue" {
            color-border = blue
          } else {
            color-border = green
          }
          #filling-area(selected-color, 70%)
          #box(
            width: 25%,
            height: 50%,
            stroke: (
              top: stroke-color-size + color-border.darken(color-darken),
              bottom: stroke-color-size + color-border.darken(color-darken),
              left: stroke-color-size + color-border.darken(color-darken),
              right: stroke-color-size + color-border.darken(color-darken),
            ),
          )
        ],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Seventh Row
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-info, 100%)],
        cell(
          colspan: 10,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],
      )

      #table(
        stroke: table-border-size + primary-color,
        columns: (7.5%, 7.5%, 6%, 7.5%, 7.5%, 9%, 8%, 6%, 7.5%, 10%, 8%, 9.5%, 6%),
        // inset: 3pt,
        rows: (cell-height-2x, cell-height-1x),
        ..(
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.07em)[Assigned#linebreak()Section]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.07em)[Assigned#linebreak()Officer]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.07em)[Officer#linebreak()Type]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.07em)[Selection#linebreak()Criteria]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.06em)[Begin ctrl#linebreak()Date]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.06em)[Customs#linebreak()Intervention]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.06em)[Inspection#linebreak()Plan]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.05em)[Result]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.03em)[Release#linebreak()Indicator]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.02em)[Pck for#linebreak()Examination]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.05em)[Container]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.0em)[Work#linebreak()completed]],
          cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.0em)[Phase]],
        ),
        ..for i in range(0, control-list.len()) {
          (
            cell()[#control-list.at(i).at(0)],
            cell()[#control-list.at(i).at(1)], 
            cell()[#control-list.at(i).at(2)],
            cell()[#control-list.at(i).at(3)], 
            cell()[#control-list.at(i).at(4)],
            cell()[#control-list.at(i).at(5)],
            cell()[#control-list.at(i).at(6)],
            cell()[#control-list.at(i).at(7)],
            cell()[#control-list.at(i).at(8)],
            cell()[#control-list.at(i).at(9)],
            cell()[#control-list.at(i).at(10)],
            cell()[#control-list.at(i).at(11)],
            cell()[#control-list.at(i).at(12)],
          )
        },
        ..if(control-list.len() < 5) {
          for i in range(control-list.len(), 5) {
            (
              cell()[],
              cell()[], 
              cell()[],
              cell()[], 
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
              cell()[],
            )
          }
        }
      )
    ]
  )
  v(small-v-gap-table)
}


#let sad-vehicles-ui(
  customs-office-code: "", customs-office-name: "",
  trade-flow-code: "", trade-flow-number: "",
  declaration-year: "", declaration-type: "", declaration-number: "", declaration-date: "",
  reference-year: "", reference-number: "",
  assessment-year: "", assessment-code: "", assessment-number: "", assessment-code-2: "", assessment-date: "",
  nbr-of-items: "",
  declarant-code: "", declarant-info: "",
  item: "", vehicle-type: "", brand: "", model: "", manufacturing-year: "", condition: "", steering: "", engine-power: "", power-unit: "",
  gross-vehicle-weight: "", vin-chassis: "", engine-number: "", color: "", fuel-type: "", max-speed: "", additional-info: "",
  vehicle-list: (),
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-x-extra-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  let code = "CUO00-0000-AA-00"

  if customs-office-code != "" {
    code = customs-office-code + "-" + declaration-year + "-" + declaration-type + "-" + declaration-number
  }

  if customs-office-code == "" {
    customs-office-code = gray-out-text("(1)")
  }
  if customs-office-name == "" {
    customs-office-name = gray-out-text("(2)")
  }
  if trade-flow-code == "" {
    trade-flow-code = gray-out-text("(3)")
  }
  if trade-flow-number == "" {
    trade-flow-number = gray-out-text("(4)")
  }
  if declaration-year == "" {
    declaration-year = gray-out-text("(5)")
  }
  if declaration-type == "" {
    declaration-type = gray-out-text("(6)")
  }
  if declaration-number == "" {
    declaration-number = gray-out-text("(7)")
  }
  if declaration-date == "" {
    declaration-date = gray-out-text("(8)")
  }
  if reference-year == "" {
    reference-year = gray-out-text("(9)")
  }
  if reference-number == "" {
    reference-number = gray-out-text("(10)")
  }
  if assessment-year == "" {
    assessment-year = gray-out-text("(11)")
  }
  if assessment-code == "" {
    assessment-code = gray-out-text("(12)")
  }
  if assessment-number == "" {
    assessment-number = gray-out-text("(13)")
  }
  if assessment-code-2 == "" {
    assessment-code-2 = gray-out-text("(14)")
  }
  if assessment-date == "" {
    assessment-date = gray-out-text("(15)")
  }
  if nbr-of-items == "" {
    nbr-of-items = gray-out-text("(16)")
  }
  if declarant-code == "" {
    declarant-code = gray-out-text("(17)")
  }
  if declarant-info == "" {
    declarant-info = gray-out-text("(18)")
  }
  if item == "" {
    item = gray-out-text("(19)")
  }
  if vehicle-type == "" {
    vehicle-type = gray-out-text("(20)")
  }
  if brand == "" {
    brand = gray-out-text("(21)")
  }
  if model == "" {
    model = gray-out-text("(22)")
  }
  if manufacturing-year == "" {
    manufacturing-year = gray-out-text("(23)")
  }
  if condition == "" {
    condition = gray-out-text("(24)")
  }
  if steering == "" {
    steering = gray-out-text("(25)")
  }
  if engine-power == "" {
    engine-power = gray-out-text("(26)")
  }
  if power-unit == "" {
    power-unit = gray-out-text("(27)")
  }
  if gross-vehicle-weight == "" {
    gross-vehicle-weight = gray-out-text("(28)")
  }
  if vin-chassis == "" {
    vin-chassis = gray-out-text("(29)")
  }
  if engine-number == "" {
    engine-number = gray-out-text("(30)")
  }
  if color == "" {
    color = gray-out-text("(31)")
  }
  if fuel-type == "" {
    fuel-type = gray-out-text("(32)")
  }
  if max-speed == "" {
    max-speed = gray-out-text("(33)")
  }
  if additional-info == "" {
    additional-info = gray-out-text("(34)")
  }
  if vehicle-list.len() == 0 {
    vehicle-list = (
      (gray-out-text("(35)"), gray-out-text("(36)"), gray-out-text("(37)"), gray-out-text("(38)"), gray-out-text("(39)"), gray-out-text("(40)"), gray-out-text("(41)"), gray-out-text("(42)"), gray-out-text("(43)"), gray-out-text("(44)"), gray-out-text("(45)"), gray-out-text("(46)"), gray-out-text("(47)"), gray-out-text("(48)"), gray-out-text("(49)"), gray-out-text("(50)")),
    )
  }


  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[Selectivity control document]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (
          cell-width-half-x, cell-width-half-x, 
          cell-width-3-quarter-x, cell-width-half-x, cell-width-3-quarter-x, cell-width-1-and-half-x,
          cell-width-3-quarter-x, cell-width-1-and-half-x, 
          cell-width-3-quarter-x, cell-width-half-x, cell-width-3-quarter-x, 
          auto, 
          cell-width-half-x, cell-width-1-and-half-x, cell-width-5-quarter-x, cell-width-7-quarter-x),
        rows: cell-height-1-and-half-x,
        inset: 3pt,

        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Customs Office],
        cell(
          colspan: 5,
          rowspan: 2,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[],
        cell(
          colspan: 5,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#text(tracking: -0.07em)[]],

        // Second Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-code, 100%)],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-name, 100%)],
        cell(
          colspan: 5,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          rowspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Third Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Model],
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Customs reference],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[#text(tracking: -0.05em)[Declarant reference]],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[Assessment reference],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[#text(tracking: -0.05em)[Nbr of Itm.]],
        
        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(trade-flow-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(reference-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[/],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-code-2, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(assessment-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(nbr-of-items, 100%)],

        // Fifth Row
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Declarant],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + bottom,
        )[],
        cell(
          colspan: 8,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + bottom,
        )[],

        // Sixth Row
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-code, 100%)],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Seventh Row
        cell(
          colspan: 6,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declarant-info, 100%)],
        cell(
          colspan: 10,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],
      )

      #table(
        stroke: none,
        columns: (auto, cell-width-3-quarter-x, cell-width-7-quarter-x, cell-width-7-quarter-x, cell-width-7-quarter-x, cell-width-1x, cell-width-1-and-half-x, cell-width-1x, cell-width-1-and-half-x, cell-width-2-and-half-x),
        rows: (cell-height-1x, cell-height-1-and-half-x, cell-height-1x, cell-height-1-and-half-x, cell-height-7x),
        inset: 3pt,

        // First Row
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Item],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Vehicle Type],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Brand],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Model],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[M.Year],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Condition],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Steering],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Eng.Power],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[P.Unit],

        // Second Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: center + horizon,
          inset: 0.8em,
        )[#image("../asset/image/icon/file-line-icon.svg", width: 1em)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(item, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(vehicle-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(brand, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(model, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(manufacturing-year, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(condition, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(steering, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(engine-power, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(power-unit, 100%)],

        // Third Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[G.V.W],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[VIN/Chassis],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Engine Nbr.],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Color],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Fuel Type],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Max.Speed (Km/h)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[Add. Info.],

        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: center + horizon,
          inset: 0.8em,
        )[],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(gross-vehicle-weight, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(vin-chassis, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(engine-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(color, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(fuel-type, 100%)],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(max-speed, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(additional-info, 100%)],

        // Fifth Row
        cell(
          colspan: 10,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[
          // here
          #table(
            stroke: table-border-size + primary-color,
            columns: (4%, 5%, 6%, 6%, 6%, 5%, 7%, 7%, 5%, 5%, 10%, 9%, 5%, 8%, 6%, 6%),
            rows: cell-height-1x,
            ..(
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.04em)[Itm]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.04em)[V.Type]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.04em)[Brand]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.04em)[Model]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.04em)[M.Year]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.04em)[Cond.]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.08em)[Steering]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.09em)[Eng.Power]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.04em)[P.Unit]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.07em)[G.V.W]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.07em)[VIN/Chassis]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.07em)[Eng. Nbr.]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.04em)[Color]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.08em)[Fuel Type]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.04em)[Max.Sp.]],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[#text(tracking: -0.08em)[Add.Info.]],
            ),
            ..for i in range(0, vehicle-list.len()) {
              (
                cell()[#vehicle-list.at(i).at(0)],
                cell()[#vehicle-list.at(i).at(1)], 
                cell()[#vehicle-list.at(i).at(2)],
                cell()[#vehicle-list.at(i).at(3)], 
                cell()[#vehicle-list.at(i).at(4)],
                cell()[#vehicle-list.at(i).at(5)],
                cell()[#vehicle-list.at(i).at(6)],
                cell()[#vehicle-list.at(i).at(7)],
                cell()[#vehicle-list.at(i).at(8)],
                cell()[#vehicle-list.at(i).at(9)],
                cell()[#vehicle-list.at(i).at(10)],
                cell()[#vehicle-list.at(i).at(11)],
                cell()[#vehicle-list.at(i).at(12)],
                cell()[#vehicle-list.at(i).at(13)],
                cell()[#vehicle-list.at(i).at(14)],
                cell()[#vehicle-list.at(i).at(15)]
              )
            },
            ..if(vehicle-list.len() < 5) {
              for i in range(vehicle-list.len(), 5) {
                (
                  cell()[],
                  cell()[], 
                  cell()[],
                  cell()[], 
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[],
                  cell()[]
                )
              }
            }
          )
        ],
      )
    ]
  )
  v(small-v-gap-table)
}


#let sad-cvds-ui(
  customs-office-code: "", customs-office-name: "",
  declaration-type: "", approval-number: "", approval-date: "",
  declaration-number: "", declaration-date: "", clearance-office-code: "", clearance-office-name: "",
  importer-code: "", importer-info: "",
  exporter-code: "", exporter-info: "",
  supporting-document-list: (),
) = {
  show table.cell: set text(
    font: sad-table-font,
    size: sad-table-font-size-extra-small,
    weight: sad-table-font-weight,
    fill: sad-table-font-color,
  )

  if customs-office-code == "" {
    customs-office-code = gray-out-text("(1)")
  }
  if customs-office-name == "" {
    customs-office-name = gray-out-text("(2)")
  }
  if declaration-type == "" {
    declaration-type = gray-out-text("(3)")
  }
  if approval-number == "" {
    approval-number = gray-out-text("(4)")
  }
  if approval-date == "" {
    approval-date = gray-out-text("(5)")
  }
  if declaration-number == "" {
    declaration-number = gray-out-text("(6)")
  }
  if declaration-date == "" {
    declaration-date = gray-out-text("(7)")
  }
  if clearance-office-code == "" {
    clearance-office-code = gray-out-text("(8)")
  }
  if clearance-office-name == "" {
    clearance-office-name = gray-out-text("(9)")
  }
  if importer-code == "" {
    importer-code = gray-out-text("(10)")
  }
  if importer-info == "" {
    importer-info = gray-out-text("(11)")
  }
  if exporter-code == "" {
    exporter-code = gray-out-text("(12)")
  }
  if exporter-info == "" {
    exporter-info = gray-out-text("(13)")
  }
  if supporting-document-list.len() == 0 {
    supporting-document-list = (
      (gray-out-text("(14)"), gray-out-text("(15)"), gray-out-text("(16)"), gray-out-text("(17)")),
    )
  }


  v(small-v-gap-table)
  table(
    stroke: (
        top: table-border-size + primary-color,
        bottom: table-border-size + primary-color,
        left: table-border-size + primary-color,
        right: table-border-size + primary-color,
    ),
    columns: auto,
    rows: auto,

    // Wrapper
    cell(
      fill: primary-color,
      align: left + horizon,
    )[#text(fill: white-color)[SAD - Customs Valuation Declaration]],
    cell(
      align: center + horizon,
    )[
      #table(
        stroke: none,
        columns: (cell-width-7-quarter-x, cell-width-7-quarter-x, cell-width-7-quarter-x, cell-width-2x, cell-width-2x, cell-width-7-quarter-x, cell-width-2-and-half-x),
        rows: cell-height-1-and-half-x,
        inset: 3pt,

        cell(
          colspan: 3,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + bottom,
        )[Customs Office],
        cell(
          colspan: 4,
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: none,
              right: none,
          ),
          align: center + horizon,
        )[],

        // Second Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-code, 100%)],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(customs-office-name, 100%)],
        cell(
          colspan: 4,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Third Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Dec.Type],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Approval Number and Date],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[Declaration Number and Date],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[Customs Clearance Office],

        // Fourth Row
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-type, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(approval-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(approval-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-number, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(declaration-date, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(clearance-office-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(clearance-office-name, 100%)],

        // Fifth Row
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[Importer],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[Exporter],

        // Sixth Row
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(importer-code, 100%)],
        cell(          
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(          
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 2,
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(exporter-code, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: none,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[],

        // Seventh Row
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: none,
          ),
          align: left + horizon,
        )[#filling-area(importer-info, 100%)],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: none,
          ),
          align: left + horizon,
        )[],
        cell(
          colspan: 3,
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: none,
              right: table-border-size + primary-color,
          ),
          align: left + horizon,
        )[#filling-area(exporter-info, 100%)],
      )

      #table(
        stroke: none,
        // columns: 100%,
        rows: auto,
        inset: 3pt,

        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[Supporting Documents],
        cell(
          stroke: (
              top: table-border-size + primary-color,
              bottom: none,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[#box(fill: gray.lighten(80%), radius: 15%, inset: 2pt, width: 3%)[#image("../asset/image/icon/search.svg")]],
        cell(
          stroke: (
              top: none,
              bottom: table-border-size + primary-color,
              left: table-border-size + primary-color,
              right: table-border-size + primary-color,
          ),
          align: left + top,
        )[
          #table(
            stroke: table-border-size + primary-color,
            columns: (17%, cell-width-4x, cell-width-4x, cell-width-3x),
            rows: cell-height-1x,
            ..(
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Type],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Name],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Reference],
              cell(align: center + horizon, fill: sad-table-cell-background-color)[Date],
            ),
            ..for i in range(0, supporting-document-list.len()) {
              (
                cell()[#supporting-document-list.at(i).at(0)],
                cell()[#supporting-document-list.at(i).at(1)], 
                cell()[#supporting-document-list.at(i).at(2)],
                cell()[#supporting-document-list.at(i).at(3)],
              )
            },
            ..if(supporting-document-list.len() < 5) {
              for i in range(supporting-document-list.len(), 5) {
                (
                  cell()[],
                  cell()[], 
                  cell()[],
                  cell()[],
                )
              }
            }
          )
        ],
      )
    ]
  )
  v(small-v-gap-table)
}