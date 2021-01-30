class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  
  def build_show(show_name)
    show = Show.find_or_create_by(show_name)
    p self.show_id = show.id
    
  end
  
end