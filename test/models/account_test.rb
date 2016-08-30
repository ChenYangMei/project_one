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

require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
