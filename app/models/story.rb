class Story < ActiveRecord::Base
  has_and_belongs_to_many :accounts
  has_many :comments
  has_many :children, through: :accounts
end
