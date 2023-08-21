class Task < ApplicationRecord
  
  def laundry? 
    # self.title.include?("laundry")
    if title.downcase.include?("laundry") && description.downcase.include?("laundry")
      return true 
    else 
      return false 
    end
  end
end