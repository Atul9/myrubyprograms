# p047classaccess.rb
class ClassAccess
  def m1      # this method is public
    "This is public method"
  end
  protected
  def m2      # this method is protected
    "This method is protected"
  end
  private
  def m3      # this method is private
    "This is a private method"
  end
end
ca = ClassAccess.new
puts ca.m1
#puts ca.m2
#puts ca.m3
#NomethodError gets generated when protected methods and private methods are accessed by the objects of the classs.
