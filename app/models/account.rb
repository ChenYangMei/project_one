# == Schema Information
#
# Table name: accounts
#
#  id              :integer          not null, primary key
#  status          :integer
#  email           :string
#  name            :string
#  image           :text
#  password_digest :text
#

class Account < ActiveRecord::Base

  has_secure_password
  enum role: [:admin, :teacher, :family_member]

  has_and_belongs_to_many :children

  def admin_or_teacher?
    self.role == "admin" || self.role == "teacher"
  end

  def admin?
    self.role == "admin"
  end
end
