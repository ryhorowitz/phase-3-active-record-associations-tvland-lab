class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    role = self.characters[0].name
    show = self.shows[0].name
    role + " - " + show
  end
end