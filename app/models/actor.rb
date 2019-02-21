require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    first_name + " " + last_name
  end
  
  def list_roles
    characters_name = self.characters.collect {|el| el[:name]}
    shows_name = self.shows.collect {|el| el[:name]}
    binding.pry
    "#{characters_array[0]} - #{shows_array[0]}"
  end
end