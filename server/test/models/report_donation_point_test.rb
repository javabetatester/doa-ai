# frozen_string_literal: true

# == Schema Information
#
# Table name: report_donation_points
#
#  id                :integer          not null, primary key
#  comments          :text
#  contact_email     :string
#  contact_phone     :string
#  status            :string           default("pending")
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  donation_point_id :integer          not null
#  issue_type_id     :integer          not null
#
# Indexes
#
#  index_report_donation_points_on_donation_point_id  (donation_point_id)
#  index_report_donation_points_on_issue_type_id      (issue_type_id)
#
# Foreign Keys
#
#  donation_point_id  (donation_point_id => donation_points.id)
#  issue_type_id      (issue_type_id => issue_types.id)
#
require "test_helper"

class ReportDonationPointTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
