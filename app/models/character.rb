
class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show 
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  
  # def build_network
  #   actor = Actor.new(self.actor)
  #   actor.characters << self
  #   show = Show.new(self.show)
  #   show.characters << self
  # end
end