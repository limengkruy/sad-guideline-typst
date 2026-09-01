
#import "../../../../lib/text.typ": *

#import "part/general-segment.typ": content as general-segment
#import "part/item.typ": content as item

#let title = "ផ្នែកតម្លៃ"
#let body = []
#let content = [
  == #{title}
  #body
  #pagebreak()

  #general-segment
  #item
  #pagebreak()
]