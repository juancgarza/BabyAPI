class ActivityLogSerializer < ActiveModel::Serializer
  attributes :id , :activity_info , :time_info

  def activity_info
    {
      baby_id: object.baby_id,
      activity_id: object.activity_id,
      assistant_id: object.assistant_id,
      comments: object.comments
    }
  end

  def time_info
    {
      start_time: object.start_time,
      stop_time:  object.stop_time,
      duration:  object.duration
    }
  end



end
