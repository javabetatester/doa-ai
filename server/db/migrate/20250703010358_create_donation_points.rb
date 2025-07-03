# frozen_string_literal: true

class CreateDonationPoints < ActiveRecord::Migration[8.0]
  def change
    create_table(:donation_points) do |t|
      t.string(:name, index: { unique: true, name: "index_donation_points_on_name" })
      t.text(:description)
      t.string(:contact_name)
      t.string(:contact_phone)
      t.string(:contact_email)

      t.timestamps
    end
  end
end
