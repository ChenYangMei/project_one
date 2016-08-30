class SessionController < ApplicationController
  def new
  end

  def create
    account = Account.find_by :email => params[:email]

    if account && account.authenticate(params[:password])
      flash[:success] = "Account successfully logged in"
      session[:account_id] = account.id
      if account.role == "admin"
        redirect_to accounts_path
      end
      if account.role == "teacher"
        redirect_to accounts_path
      end
      if account.role == "family_member"
        redirect_to login_path
      end

    else
      flash[:error] = "Your password or email is incorrect"
      redirect_to login_path
    end

  end

  def destroy
    session[:account_id] = nil
    flash[:success] = "You successfully logged out"
    redirect_to accounts_path
  end
end
