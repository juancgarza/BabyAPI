class Baby < ActiveRecord::Base
  validates :baby_id , :name , :birthday , :mother_name ,
              :father_name , :address , :phone , presence: true

has_many :activity_logs


end
