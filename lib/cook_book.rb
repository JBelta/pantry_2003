class CookBook
  attr_reader :recipies

  def initialize
    @recipies = Hash.new
  end
end 
