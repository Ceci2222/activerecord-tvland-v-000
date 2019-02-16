require 'pry'
class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show 
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  
  def build_network(character)
    actor = Actor.new(character.actor)
    actor.characters << character.actor
    show = Show.new(character.show)
    show.characters << character.show
  end
end