require "pg"
conn = PG.connect(dbname: 'postgres')
conn.exec("select * from student") do |result|
  result.each do |row|
    puts "%d %s" % row.values_at('rno','name')
  end
end

