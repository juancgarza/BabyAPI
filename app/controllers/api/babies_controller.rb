class Api::BabiesController < Api::BaseController
  def index
    render json: Baby.all  , status: 200
  end
  def show
    babies = Baby.find(params[:id])
      if babies
      render json: babies , status: 200
    else
      render json: {baby_id: params[:id] , message:"Not Found." } , status: 404
    end
  end


end
