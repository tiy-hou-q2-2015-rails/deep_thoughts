class ThoughtsController < ApplicationController

  before_action do
    @thoughts = Thought.all
                       .order("created_at desc")
                       .page(params[:page])
  end

  def dashboard
    @thought = Thought.new
  end

  def create
    @thought = Thought.new params.require(:thought).permit(:content, :photo)
    if @thought.save
      redirect_to root_path, notice: "Thought Added deeply"
    else
      render :dashboard
    end

  end
end
