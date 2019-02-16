require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    puts "#{self.first_name} #{self.last_name}"
    binding.pry
  end
  
  def self.list_roles 
    self.characters.all 
  end
end