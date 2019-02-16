require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    first_name = self.first_name
    last_name = self.last_name
    "#{first_name} #{last_name}"
  end
  
  def list_roles 
    self.characters.each do |character|
      binding.pry
      puts "#{character.name} - #{character.show.name}"
    end
  end
end