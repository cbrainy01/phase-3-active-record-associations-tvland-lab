class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors

  def actors_list
    # list_of_actor_names = []
    self.characters.collect {|character| "#{character.actor.first_name} #{character.actor.last_name}"}
    # list_of_actor_names
  end
end