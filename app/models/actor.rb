class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + " " + self.last_name
  end
  
  def list_roles
   self.characters.each do |c|
     p c.name
     show = Show.find_by(characters: "#{c.name}")
     p show
   end
   #p self.characters
  end

  
end