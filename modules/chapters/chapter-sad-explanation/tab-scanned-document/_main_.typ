#import "../../../../lib/text.typ": *

#import "part/segment-01.typ": content as segment-01

#let title = "ផ្នែកឯកសារស្គេនភ្ជាប់"
#let body = []
#let content = [
  == #{title}
  #body
  // #pagebreak()

  #segment-01
  #pagebreak()
]