module UsersHelper

  private
  def experts
    @experts ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :experts
end
