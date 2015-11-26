require 'roo'
require 'write_xlsx'
xlsx = Roo::Spreadsheet.open('/home/atul/sellers.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
arr = []
2.upto(20).each do |s|
  arr << [xlsx.cell(s, 'A'),  xlsx.cell(s, 'B')]
end
puts arr
workbook = WriteXLSX.new('/home/atul/new.xlsx')
worksheet = workbook.add_worksheet
header = ["Names", "weight"]
header.each_with_index do |value,index|
  worksheet.write(0, index, value)
end
# Add a worksheet
arr.each_with_index do |value, index|
  worksheet.write(index+1, 0, value[0])
  worksheet.write(index+1, 1, value[1])
end
workbook.close
