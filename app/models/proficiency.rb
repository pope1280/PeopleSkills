class Proficiency < ActiveRecord::Base
  validates :skill_id, :uniqueness => { :scope => :user_id } 

  belongs_to :user
  belongs_to :skill
end
