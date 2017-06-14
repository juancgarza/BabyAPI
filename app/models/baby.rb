class Baby < ActiveRecord::Base
  validates :name , :birthday , :mother_name ,
              :father_name , :address , :phone , presence: true

has_many :activity_logs


end
