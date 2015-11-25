require 'write_xlsx'
require 'spreadsheet'
workbook = WriteXLSX.new('../ruby.xlsx')
# Add a worksheet
worksheet = workbook.add_worksheet
worksheet.write(0,0,"No")
worksheet.write(0,1,"Name")
worksheet.write(0,2,"Class")
(1..10).each do |j|
  0.upto(2).each do |i|
    worksheet.write(j, i, i + j )
  end
end
workbook.close
