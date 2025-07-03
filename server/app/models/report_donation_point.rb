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
class ReportDonationPoint < ApplicationRecord
  belongs_to :donation_point
  belongs_to :issue_type

  validates :donation_point, presence: true
  validates :issue_type, presence: true
  validates :comments, presence: true, length: { minimum: 10, maximum: 1000 }
  validates :contact_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, unless: -> { contact_phone.present? }
  validates :contact_phone, presence: true, format: { with: /\A\d{10}\z/ }, unless: -> { contact_email.present? }

  # enum status: [:pending, :resolved, :rejected]
end
