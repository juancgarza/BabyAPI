class Assistant < ActiveRecord::Base
  validates :name , :address , :phone , :group , presence: true

  has_many :activity_logs


end
