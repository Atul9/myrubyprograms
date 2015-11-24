require 'rubyXL'
workbook = RubyXL::Parser.parse("/home/atul/home/del/exl1.xlsx")
puts workbook.worksheets[0]

