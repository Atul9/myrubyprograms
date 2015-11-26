require 'roo'
xlsx = Roo::Spreadsheet.open('/home/atul/sellers.xlsx')
xlsx.default_sheet = xlsx.sheets[0]

1.upto(20).each do |s|
  puts xlsx.cell(s, 'A')
  puts xlsx.cell(s, 'B')
end

