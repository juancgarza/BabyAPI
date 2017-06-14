class ActivityLog < ActiveRecord::Base
 validates   :baby_id , :assistant_id , :activity_id ,  presence: true


belongs_to :assistant
belongs_to :baby
belongs_to :activity



before_create :set_start_time

  def set_start_time
    self.start_time ||= DateTime.now if self.new_record?
  end

before_update :set_stop_time
  def set_stop_time
    self.stop_time ||= DateTime.now
  end

after_update :set_duration
  def set_duration
    self.duration = ( self.stop_time - self.start_time )/60
  end


end
