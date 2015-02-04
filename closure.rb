#Closure Design patterns
##http://arturoherrero.com/closure-design-patterns-ruby-edition
def operations(&block)
  puts "Open"
  block.call
  puts "Close"
end

operations {puts "Operation"}
#Execute Around Method
#A pair of operation that needs to be performed before and after operations.

