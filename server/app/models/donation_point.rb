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
class DonationPoint < ApplicationRecord
  class Contact
    attr_accessor :name, :phone, :email

    def initialize(name = nil, phone = nil, email = nil)
      @name = name
      @phone = phone
      @email = email
    end
  end

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 10, maximum: 255 }
  validates :contact_name, presence: true, length: { minimum: 5, maximum: 255 }
  validates :contact_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, unless: -> { contact_phone.present? }
  validates :contact_phone, presence: true, format: { with: /\A\d{10}\z/ }, unless: -> { contact_email.present? }

  composed_of :contact, class_name: "DonationPoint::Contact", mapping: ["contact_name", "name", "contact_phone", "phone", "contact_email", "email"], allow_nil: true

  has_many :report_donation_points
end
