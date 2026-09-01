// main.typ
#import "layout/template.typ": layout-template, cover-page-template, content-page-template
// #show text.where(weight: "bold").or(strong): set text(stroke: 0.04em)

// Apply template to everything
#show: layout-template

// Document
#import "modules/01-cover-page.typ": content as cover-page
#import "modules/02-preface.typ": content as preface
#import "modules/03-table-of-content.typ": content as table-of-content
#import "modules/04-term.typ": content as term
#import "modules/05-executive-summary.typ": content as executive-summary
#import "modules/06-chapters.typ": content as chapters
#import "modules/07-annexes.typ": content as annexes
#import "modules/08-legal-references.typ": content as legal-references

// ******* Document Structure *******

#show: cover-page-template
// ======= Cover Page =======
#set page(
  numbering: none,
)
#cover-page


#show: content-page-template
// ====== Main Page =======
#set page(
  numbering: "I",
)
#counter(page).update(1)
#preface
#table-of-content
#term

// ===== Content =======
#set page(
  numbering: "1",
)
#counter(page).update(1)
#executive-summary
#chapters

// ===== Annexes and Legal References =======
#set page(
  numbering: none,
)
// #counter(page).update(1)
#annexes
#legal-references