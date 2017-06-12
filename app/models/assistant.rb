class Assistant < ActiveRecord::Base
  validates :assistant_id , :name , :address , :phone , :group , presence: true
  
  has_many :activity_logs


end
