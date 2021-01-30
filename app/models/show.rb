class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  #this method returns a list of the full names of each actor associated with the show
  def actors_list
    self.actors.each do |actor|
      actor.full_name  

      
  end
  
  def build_network(call_letters)
    network = Network.find_or_create_by(call_letters)
    self.network_id = network.id
    network.shows << self
  end
  
end