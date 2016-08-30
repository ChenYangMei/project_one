class AccountsController < ApplicationController
  before_action :authorise, :only => [:show, :edit]

  def index
    @accounts = Account.all
    @children = Child.all
  end

  def show
    @account = Account.find params[:id]
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.create(account_params)
    redirect_to accounts_path
  end

  def edit
    @account = Account.find params[:id]
  end

  def update
    account = Account.find params[:id]
    account.update(account_params)
    redirect_to account_path(account)
  end

  def destroy
    account = Account.find params[:id]
    account.destroy
    redirect_to accounts_path
  end

  private
  def account_params
    params.require(:account).permit(:role, :name, :email, :password, :password_confirmation, :image)
  end

  def authorise
  flash[:error] = "You need to be logged in to see that" unless @current_account.present?
  redirect_to login_path unless @current_account.present?
  end

end
