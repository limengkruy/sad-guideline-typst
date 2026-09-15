
#import "../../../../lib/text.typ": *

#import "part/general-segment.typ": content as general-segment
#import "part/item.typ": content as item

#let title = "ផ្នែកឯកសារភ្ជាប់ប្រព័ន្ធបញ្ជរតែមួយជាតិ"
#let body = "ផ្នែកតម្លៃ"
#let content = [
  == #{title}
  #body

  #general-segment
  #item
  #pagebreak()
]