require 'pry'
class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show 
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  
  def build_network(character)
    actor.characters << character.actor
    show.characters << character.show
  end
end