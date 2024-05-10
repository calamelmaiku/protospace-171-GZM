class PrototypesController < ApplicationController
  def index
  end
  
  def new
    @prototypes = Prototype.new
  end
  
  def create
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept).merge(user_id: current_user.id)
  end
end
