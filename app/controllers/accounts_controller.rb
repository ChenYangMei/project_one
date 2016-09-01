class AccountsController < ApplicationController
  before_action :authorise, :only => [:show, :edit]

  def home
    # binding.pry
    @accounts = Account.all
    @children = Child.all
    @stories = Story.all.order("created_at DESC")
    @comments = Comment.all.order("created_at DESC")
  end

  def password_reset
    @account = @current_account
  end

  def password_reset_sent

  end

  def index
    @accounts = Account.all
    @children = Child.all
    @stories = Story.all
    @comments = Comment.all
  end

  def show
    @account = Account.find params[:id]
  end

  def new
    @password = [('a'..'z'), ('A'..'Z'), (0..9)].map{|i| i.to_a}.flatten.sample(10).join
    @account = Account.new
  end

  def password

  end

  def create
    @password = params[:account][:password]
    @account = Account.new(account_params)
    req = Cloudinary::Uploader.upload( params[:file] )
    @account.image = req["public_id"]
    @account.save
    UserMailer.welcome(@account, @password).deliver_now
    redirect_to home_path
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
    redirect_to home_path
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
