class Api::ActivityLogsController < Api::BaseController
before_action :find_activity_logs , only: [:show, :update,:destroy]
before_action :activity_log_params , only: [:create, :update]

def index
render json: ActivityLog.all , status: 200
end

def show
if @activity_log
  render json: @activity_log , status: 200
else
  render json: {activity_log_id: params[:id] , message: "Not found." } , status: 404
end
end

def create
  activity_log = ActivityLog.new(activity_log_params)
  if activity_log.save
    render json: activity_log , status: 201
  else
    render json: { activity_log: { errors: activity_log.errors } } , status: 422
  end
end

def update
  @activity_log = ActivityLog.find(params[:id])
  render json: { activity_log_id: params[:id] , message: "Not found."} , status: 404 unless @activity_log
if @activity_log.update(activity_log_params)
   render json: @activity_log , status: 201
else
  render json: { activity_log: { errors: @activity_log.errors } } , status: 422
  end
end

  def destroy
      @activity_log.destroy
      head 204
  end


def find_by_baby_id
  if params[:baby_id].nil?
    render json: {baby_id: params[:baby_id] , message: "Not found." } , status: 404
      else
        render json: ActivityLog.where(baby_id:params[:baby_id]) , status: 200
      end
    end



private

def find_activity_logs
  @activity_log = ActivityLog.find(params[:id])
end

def activity_log_params
    params.permit( :baby_id, :assistant_id,:activity_id,:duration,:comments)
end
end
