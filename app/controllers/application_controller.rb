class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_q

  def set_q
    @q = Post.ransack(params[:q])
    @posts = @q.result.page(params[:page])
  end

end
