# frozen_string_literal: true

# == Schema Information
#
# Table name: donation_points
#
#  id            :integer          not null, primary key
#  contact_email :string
#  contact_name  :string
#  contact_phone :string
#  description   :text
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_donation_points_on_name  (name) UNIQUE
#
require "test_helper"

class DonationPointTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
