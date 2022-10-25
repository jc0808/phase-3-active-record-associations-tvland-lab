class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actorsArray = []

    self.actors.each do |actor|
      actorsArray << "#{actor.first_name} #{actor.last_name}"
    end
    actorsArray
  end
end