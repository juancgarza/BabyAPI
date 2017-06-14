class Api::AssistantsController < Api::BaseController

def index
  render json: Assistant.all , status: 200
  paginate Assistant.unscoped, per_page: 15 
end
def show
  assistants = Assistant.find(params[:id])
    if assistants
    render json: assistants , status: 200
  else
    render json: {assistant_id: params[:id] , message:"Not Found." } , status: 404
  end
end



end
