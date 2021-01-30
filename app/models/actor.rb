class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + " " + self.last_name
  end
  
  def list_roles
    p self
    p self.characters[0].name
    shows = [ ]
    self.characters.each do |c|
      p show = Show.find_or_create_by(name: c.name)
    end
    
  end

  
end