#import "chapter-introduction/_main_.typ": content as sad-explanation
#import "chapter-sad-explanation/_main_.typ": content as chapter2
#import "chapter-03/_main_.typ": content as chapter3

#let content = [
  #counter(heading).update(1)
  #sad-explanation
  #pagebreak()
  #counter(heading).update(1)
  #chapter2
  #pagebreak()
  #counter(heading).update(1)
  #chapter3
  #pagebreak()
]