# p046excpvar.rb
begin
  raise 'A test exception.'
rescue Exception => e
  #puts e.message  #prints nothing on the screen
	puts e.backtrace.inspect #prints the filename and the exception location. main in this case
end
