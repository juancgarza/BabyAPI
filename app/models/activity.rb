class Activity < ActiveRecord::Base
  validates :activity_id , :name , :description , presence: true

  has_many :activity_logs


end
