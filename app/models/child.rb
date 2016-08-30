class Child < ActiveRecord::Base
  has_and_belongs_to_many :accounts

  def teachers
    self.accounts.where(:role => 1)
  end

  def family_members
    self.accounts.where(:role => 2)
  end
end
