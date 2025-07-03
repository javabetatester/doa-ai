# frozen_string_literal: true

class CreateReportDonationPoints < ActiveRecord::Migration[8.0]
  def change
    create_table(:report_donation_points) do |t|
      t.references(:donation_point, null: false, foreign_key: true)
      t.references(:issue_type, null: false, foreign_key: true)
      t.text(:comments)
      t.string(:contact_email)
      t.string(:contact_phone)
      t.string(:status, default: "pending")

      t.timestamps
    end
  end
end
