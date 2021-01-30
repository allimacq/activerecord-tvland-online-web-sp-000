class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + " " + self.last_name
  end
  
  def list_roles
    roles = [ ]
    self.characters.each do |c|
      show = Show.find_or_create_by(id: c.show_id)
      roles << "#{c.name} - #{show.name}"
    end
    roles
  end

end