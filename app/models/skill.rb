class Skill < ActiveRecord::Base
  validates :name, :uniqueness => true

  has_many :proficiencies
  has_many :users, :through => :proficiencies

  def user_with_proficiency(rating)
   proficiency = self.proficiencies.find_by_rating(rating)
   User.find(proficiency.user_id)
  end
end
