require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    first_name + " " + last_name
  end
  
  def list_roles
    binding.pry
    characters_array = self.characters.collect {|el| }
  end
end