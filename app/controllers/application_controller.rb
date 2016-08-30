class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_account

private
  def fetch_account
    @current_account = Account.find_by(:id => session[:account_id]) if session[:account_id]

    session[:account_id] = nil unless @current_account.present?
    # If there is a session user_id defined, find that user with the ID
    # Assign it to an instance variable
  end

end
