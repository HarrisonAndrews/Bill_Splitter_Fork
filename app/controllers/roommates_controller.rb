class RoommatesController < ApplicationController
  def create
    @roommate = Roommate.new(name: params[:name],
                            email: params[:email],
                             phone: params[:phone],
                          user_id: params[:user_id])
    if @roommate.save
      render "create.json.jbuilder", status: :created
    else
      render json: { errors: @roommate.errors.full_messages},
             status: :unprocessable_entity
    end
  end

  def index
    @roommate = Roommate.all
    render "index.json.jbuilder", status: :accepted
  end

  def show
    @roommate = Roommate.find(params[:id])
    render "show.json.jbuilder", status: :accepted
  end

  def update
    @roommate = Roommate.find(params[:id])
    if current_user.id == @roommate.user_id
      @roommate.update(name: params[:name],
                      email: params[:email],
                       phone: params[:phone],
                   user_id: params[:user_id])
      render json: {success: "Roommate: #{@roommate.name}"}, status: :accepted
    else
      render json: { error: "Unable to edit the roommate." },
             status: :unauthorized
    end
  end

  def delete
    @roommate = Roommate.find(params[:id])
    if current_user.id == @roommate.user_id
      @roommate.destroy
      render json: {success: "Roommate deleted successfully."}, status: :accepted
    else
      render json: { error: "Unable to delete roommate." },
             status: :unauthorized
    end
  end

end
