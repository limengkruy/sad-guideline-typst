#import "../../../../lib/text.typ": *

#import "box/office-of-lodgement-destination.typ": content as office-of-lodgement-destination-box
#import "box/declaration.typ": content as declaration-box
#import "box/exporter-consignor.typ": content as exporter-consignor-box
#import "box/forms.typ": content as forms-box
#import "box/load-list.typ": content as load-list-box
#import "box/items.typ": content as items-box
#import "box/nbr-packages.typ": content as nbr-packages-box
#import "box/reference-number.typ": content as reference-number-box
#import "box/importer-consignee.typ": content as importer-consignee-box
#import "box/occasional-consignee.typ": content as occasional-consignee-box
#import "box/country-lc-fd.typ": content as country-lc-fd-box
#import "box/trading-country.typ": content as trading-country-box
#import "box/value-details.typ": content as value-box
#import "box/special-condition.typ": content as special-condition-box
#import "box/declarant.typ": content as declarant-box
#import "box/country-of-export.typ": content as country-of-export-box
#import "box/country-of-origin.typ": content as country-of-origin-box
#import "box/country-of-destination.typ": content as country-of-destination-box
#import "box/idt-mot-at-arrival-departure.typ": content as idt-mot-at-arrival-departure-box
#import "box/containerize.typ": content as containerize-box
#import "box/delivery-terms.typ": content as delivery-terms-box
#import "box/idt-mot-crossing-the-border.typ": content as idt-mot-crossing-the-border-box
#import "box/currency-total-invoice-amount.typ": content as currency-total-invoice-amount-box
#import "box/exchange-rate.typ": content as exchange-rate-box
#import "box/nature-of-transactions.typ": content as nature-of-transactions-box
#import "box/mode-of-transport-at-border.typ": content as mode-of-transport-at-border-box
#import "box/inland-mode-of-transport.typ": content as inland-mode-of-transport-box
#import "box/place-of-loading-discharge.typ": content as place-of-loading-discharge-box
#import "box/bank-code.typ": content as bank-code-box
#import "box/office-of-entry-exit.typ": content as office-of-entry-exit-box
#import "box/location-of-goods.typ": content as location-of-goods-box
#import "box/packages-and-description-of-goods.typ": content as packages-and-description-of-goods-box
#import "box/item-no.typ": content as item-no-box
#import "box/commodity-code.typ": content as commodity-code-box
#import "box/country-of-origin-code.typ": content as country-of-origin-code-box
#import "box/gross-mass.typ": content as gross-mass-box
#import "box/preference.typ": content as preference-box
#import "box/procedure.typ": content as procedure-box
#import "box/net-mass.typ": content as net-mass-box
#import "box/box-39.typ": content as box-39-box
#import "box/transport-doc-previous-declaration.typ": content as transport-doc-previous-declaration-box
#import "box/supplementary-units.typ": content as supplementary-units-box
#import "box/item-price.typ": content as item-price-box
#import "box/valuation-method.typ": content as valuation-method-box
#import "box/additional-info.typ": content as additional-info-box
#import "box/adjustment.typ": content as adjustment-box
#import "box/customs-value.typ": content as customs-value-box
#import "box/calculation-of-taxes.typ": content as calculation-of-taxes-box
#import "box/deferred-payment.typ": content as deferred-payment-box
#import "box/identification-of-warehouse.typ": content as identification-of-warehouse-box
#import "box/accounting-details.typ": content as accounting-details-box
#import "box/principal.typ": content as principal-box
#import "box/office-of-departure.typ": content as office-of-departure-box
#import "box/intended-offices-of-transit-and-country.typ": content as intended-offices-of-transit-and-country-box
#import "box/guarantee-not-valid-for.typ": content as guarantee-not-valid-for-box
#import "box/office-of-destination-and-country.typ": content as office-of-destination-and-country-box
#import "box/control-by-office-of-destination.typ": content as control-by-office-of-destination-box
#import "box/place-and-date.typ": content as place-and-date-box

#let title = "ផ្នែកប្រតិវេទន៍គយ"
#let body = [
  ផ្នែកព័ត៌មានទូទៅ គឺជាផ្នែកដំបូងបង្អស់នៃប្រតិវេទន៍គយ ដែលប្រមូលផ្តុំទៅដោយបណ្តុំទិន្នន័យមូលដ្ឋាន ដែលឆ្លុះបញ្ចាំងពីទិដ្ឋភាពរួមនៃប្រតិបត្តិការអាជីវកម្ម និងភស្តុភារកម្មអន្តរជាតិ។ ការបំពេញព័ត៌មាននៅក្នុងផ្នែកនេះ ទាមទារឱ្យមានសុក្រឹតភាពខ្ពស់បំផុត ព្រោះវាជាប្រភពទិន្នន័យក្នុងការកំណត់អត្តសញ្ញាណគតិយុត្តរបស់ភាគីពាក់ព័ន្ធ រួមមានអ្នកនាំចេញ អ្នកនាំចូល និងជើងសារគយ ព្រមទាំងការកំណត់របបគយ មាត្រដ្ឋាន លក្ខខណ្ឌប្រគល់ទទួល និងមធ្យោបាយដឹកជញ្ជូន។ នៅក្នុងស្មារតីសហការរវាងរដ្ឋនិងឯកជន ការរៀបចំផ្នែកព័ត៌មានទូទៅឱ្យបានត្រឹមត្រូវ ច្បាស់លាស់ និងគ្រប់ជ្រុងជ្រោយ គឺជាកត្តាកំណត់ដំបូងក្នុងការធានាគុណភាពទិន្នន័យសម្រាប់រដ្ឋបាលគយ ដើម្បីយកទៅប្រើប្រាស់ក្នុងកិច្ចការគ្រប់គ្រង និងចងក្រងស្ថិតិពាណិជ្ជកម្មជាតិប្រកបដោយតម្លាភាព ហើយទន្ទឹមនឹងនោះ វាក៏ជាសោរគន្លឹះរបស់ធុរជនក្នុងការទទួលបាននូវកិច្ចសម្រួលពាណិជ្ជកម្មយ៉ាងពិតប្រាកដ សំដៅពន្លឿនល្បឿននៃការពិនិត្យឯកសារ និងធានាបាននូវលំហូរទំនិញឆ្លងកាត់ព្រំដែនប្រកបដោយភាពរលូន និងមានប្រសិទ្ធភាពខ្ពស់។
]
#let content = [
  == #{title}
  #body
  #pagebreak()

  #declaration-box
  #office-of-lodgement-destination-box
  #exporter-consignor-box
  #forms-box
  #load-list-box
  #items-box
  #nbr-packages-box
  #reference-number-box
  #importer-consignee-box
  #occasional-consignee-box
  #country-lc-fd-box
  #trading-country-box
  #value-box
  #special-condition-box
  #declarant-box
  #country-of-export-box
  #country-of-origin-box
  #country-of-destination-box
  #idt-mot-at-arrival-departure-box
  #containerize-box
  #delivery-terms-box
  #idt-mot-crossing-the-border-box
  #currency-total-invoice-amount-box
  #exchange-rate-box
  #nature-of-transactions-box
  #mode-of-transport-at-border-box
  #inland-mode-of-transport-box
  #place-of-loading-discharge-box
  #bank-code-box
  #office-of-entry-exit-box
  #location-of-goods-box
  #packages-and-description-of-goods-box
  #item-no-box
  #commodity-code-box
  #country-of-origin-code-box
  #gross-mass-box
  #preference-box
  #procedure-box
  #net-mass-box
  #box-39-box
  #transport-doc-previous-declaration-box
  #supplementary-units-box
  #item-price-box
  #valuation-method-box
  #additional-info-box
  #adjustment-box
  #customs-value-box
  #calculation-of-taxes-box
  #deferred-payment-box
  #identification-of-warehouse-box
  #accounting-details-box
  #principal-box
  #office-of-departure-box
  #intended-offices-of-transit-and-country-box
  #guarantee-not-valid-for-box
  #office-of-destination-and-country-box
  #control-by-office-of-destination-box
  #place-and-date-box
  #pagebreak()
]