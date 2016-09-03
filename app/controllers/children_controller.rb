class ChildrenController < ApplicationController
  def index
    @children = Child.all
  end

  def show
    # binding.pry
    @child = Child.find params[:id]
  end

  def new
    @child = Child.new
  end

  def create
    child = Child.create(child_params)
    
    if params[:file] == true
      req = Cloudinary::Uploader.upload( params[:file] )
      child.image = req["public_id"]
      child.save
    end

    get_all_account_ids.each do |id|
    child.accounts << Account.find( id )
    end

    redirect_to child_path(child)
  end

  def edit
    @child = Child.find params[:id]
  end

  def update
    # binding.pry
    child = Child.find params[:id]
    child.update(child_params)
    child.accounts = []
    get_all_account_ids.each do |id|
    child.accounts << Account.find( id )
    end

    redirect_to child_path(child.id)
  end

  def destroy
    child = Child.find params[:id]
    child.destroy
    redirect_to children_path
  end

  private
    def get_all_account_ids
      get_teacher_ids + get_family_member_ids
    end

    def get_teacher_ids
      params[:child][:teachers].select do |v|
        v.length > 0
      end
    end

    def get_family_member_ids
      params[:child][:family_members].select do |v|
        v.length > 0
      end
    end

    def child_params
      params.require(:child).permit(:name, :gender, :dob, :image, :account_ids => [])
    end
end
