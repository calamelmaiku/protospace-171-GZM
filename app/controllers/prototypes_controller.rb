class PrototypesController < ApplicationController
  def show
    @prototype = Prototype.find(params[:id])
    render :show, locals: { prototype: @prototype }
  end
end
