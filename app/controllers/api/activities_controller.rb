class Api::ActivitiesController < Api::BaseController
def index
 render json: Activity.all , status: 200
end
def show
  activities = Activity.find(params[:id])
    if activities
    render json: activities , status: 200
  else
    render json: {activity_id: params[:id] , message:"Not Found." } , status: 404
  end
end


end
