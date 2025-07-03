# frozen_string_literal: true

module Types
  module Core
    class DonationPointContactType < Types::BaseObject
      field :name, String, null: false
      field :phone, String, null: true
      field :email, String, null: true
    end
  end
end
