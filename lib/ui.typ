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
        columns: (cell-width-2-half-x, cell-width-1-half-x, cell-width-2-half-x, auto, cell-width-2x, cell-width-2-half-x, cell-width-2-half-x),
        rows: cell-height-1-half-x,

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
        columns: (cell-width-2-half-x, cell-width-1-half-x, cell-width-2-half-x, auto, cell-width-2x, cell-width-2-half-x, cell-width-2-half-x),
        rows: cell-height-1-half-x,

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
        columns: (auto, auto, cell-width-5-quarter-x, cell-width-1x, cell-width-5-quarter-x, cell-width-5-quarter-x, cell-width-1x, cell-width-1-half-x, cell-width-2-half-x),
        rows: cell-height-1-half-x,

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
  total-global-tax: "", total-item-tax: "", total-assessed-amount: "", amount-currently-status: "", amount-currently: "",
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
    total-item-tax = gray-out-text("(36)")
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
          cell-width-1x, cell-width-half-x, cell-width-1x, cell-width-5-quarter-x,
          cell-width-1x, cell-width-1-half-x, 
          cell-width-1x, cell-width-half-x, cell-width-1x, 
          auto, 
          cell-width-half-x, cell-width-5-quarter-x, cell-width-1-half-x),
        // rows: (cell-height-2x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x, cell-height-1-half-x),
        rows: cell-height-1-half-x,
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
          cell-width-2-half-x, 
          cell-width-2-half-x, 
          cell-width-3-quarter-x, cell-width-1x, cell-width-1x, cell-width-1-half-x, 
          cell-width-3-quarter-x, cell-width-7-quarter-x, cell-width-7-quarter-x),
        rows: (cell-height-1x, cell-height-1x, cell-height-1x, cell-height-10x),
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
          align: left + horizon,
          inset: 0pt
        )[
          #table(
            stroke: none,
            columns: 5,
            ..for i in range(0, 14) {
              // #if item-tax.len() > i {
              //   filling-area(item-tax.at(i).at(0), 12%) &
              //   blank-box(2mm) &
              //   filling-area(item-tax.at(i).at(1), 45%) &
              //   blank-box(2mm) &
              //   filling-area(item-tax.at(i).at(2), 35%)\
              // } else {
              //   filling-area("", 12%) &
              //   blank-box(2mm) &
              //   filling-area("", 45%) &
              //   blank-box(2mm) &
              //   filling-area("", 35%)\
              // }
              if item-tax.len() > i {
                (
                filling-area-height(item-tax.at(i).at(0), 100%, 10%),
                blank-box(2mm),
                filling-area-height(item-tax.at(i).at(1), 100%, 10%),
                blank-box(2mm),
                filling-area-height(item-tax.at(i).at(2), 100%, 10%),
                )
              }
              else{
                (
                filling-area-height("", 100%, 10%),
                blank-box(2mm),
                filling-area-height("", 100%, 10%),
                blank-box(2mm),
                filling-area-height("", 100%, 10%),
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
          align: left + horizon,
        )[],
      )
    ]
  )
  v(small-v-gap-table)
}