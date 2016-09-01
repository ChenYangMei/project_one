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
  has_and_belongs_to_many :stories
  has_many :comments


  def admin_or_teacher?
    self.role == "admin" || self.role == "teacher"
  end

  def admin?
    self.role == "admin"
  end

  def family_member?
    self.role == "family_member"
  end

  def children_stories
    self.stories | self.children.map {|c| c.stories}.first
  end

  def all_children
    if self.role == "admin"
      self.children = Child.all
    else
      self.children
    end
  end

end
