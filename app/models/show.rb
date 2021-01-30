class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    p self.actors
  end
  
  def build_network(call_letters)
    network = Network.find_or_create_by(call_letters)
    self.network_id = network.id
    network.shows << self
  end
  
end