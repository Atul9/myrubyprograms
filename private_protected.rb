#   Why do we have both private and protected methods in ruby? Is there any practical case were we explicitly need to use private instead of protected.
#
#   Difference:
#     private_methods: cannot be called on "self "
#       protected_methods: can be called on "self"
#
#       Note: "self" is current_object of the context under consideration
## Private methods are always called on current_object and protected methods can be called on object of same lineage within the class.
class Father
  protected
  def money
    puts 'Yo Money!!'
  end

  private
  def tooth_brush
    puts 'Brush'
  end
end

class Son < Father
  def borrow_pocket_money_for(beta)
    beta.money
  end

  def borrow_brush_for(beta)
    beta.tooth_brush
  end

  def borrow_brush
    tooth_brush
  end
end

class Friend
  def borrow_pocket_money_for(beta)
    beta.money
  end
end


ramesh = Son.new
suresh = Son.new
#friend = Friend.new
#amitabh = Father.new

ramesh.borrow_pocket_money_for(suresh) ## works
suresh.borrow_pocket_money_for(ramesh) ## works
ramesh.borrow_brush

#friend.borrow_pocket_money_for(ramesh) ## wont work
#friend.borrow_pocket_money_for(suresh) ## wont work 


#ramesh.borrow_brush_for(suresh)        ##wont work
#amitabh.money
#amitabh.tooth_brush

