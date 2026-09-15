#import "../../../lib/text.typ": *
#import "tab-sad/_main_.typ": content as tab-sad
#import "tab-valuation-note/_main_.typ": content as tab-valuation-note
#import "tab-assessment-notice/_main_.typ": content as tab-assessment-notice
#import "tab-information/_main_.typ": content as tab-information
#import "tab-attached-document/_main_.typ": content as tab-attached-document
#import "tab-scanned-document/_main_.typ": content as tab-scanned-document
#import "tab-asw-scanned-document/_main_.typ": content as tab-asw-scanned-document
#import "tab-containers/_main_.typ": content as tab-containers
#import "tab-selectivity-control/_main_.typ": content as tab-selectivity-control
#import "tab-cvds/_main_.typ": content as tab-cvds
#import "tab-vehicles/_main_.typ": content as tab-vehicles
#import "tab-write-off/_main_.typ": content as tab-write-off
#import "tab-upload-file/_main_.typ": content as tab-upload-file


#let title = "ជំពូក 2៖ កំណត់ពន្យល់ព័ត៌មានលើប្រតិវេទន៍គយ"
#let body = [
  ក្នុងផ្នែកនេះ#text(tracking:-0.05em)[ ប្រអប់នីមួយៗនឹងត្រូវធ្វើការបកស្រាយយ៉ាងលម្អិត ដោយផ្អែកលើធាតុផ្សំសំខាន់ៗចំនួនបី]#text[#blank-character]គឺ៖ ប្រភេទប្រអប់ (ដើម្បីបញ្ជាក់ពីលក្ខខណ្ឌតម្រូវឬមិនតម្រូវឱ្យបំពេញ ឬបំពេញដោយស្វ័យប្រវត្តិ), ការពិពណ៌នា (ដើម្បីពន្យល់ពីអត្ថន័យ និងមូលដ្ឋានច្បាប់គយនៃប្រអប់នីមួយៗ) និង របៀបបំពេញ (ដើម្បីណែនាំជាជំហានៗអំពីការបញ្ចូលទិន្នន័យ កូដសម្គាល់ និងឧទាហរណ៍ជាក់ស្តែង)។
]
#let content = [
  = #{title}
  #body
  #pagebreak()
  #tab-sad
  #tab-valuation-note
  #tab-assessment-notice
  #tab-information
  #tab-attached-document
  #tab-scanned-document
  #tab-asw-scanned-document
  #tab-containers
  #tab-selectivity-control
  #tab-vehicles
  #tab-cvds
  #tab-write-off
  #tab-upload-file
]