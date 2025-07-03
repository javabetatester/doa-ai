# frozen_string_literal: true

module Types
  module Core
    class DonationPointType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :description, String, null: false
      field :contact, Types::Core::DonationPointContactType, null: true
    end
  end
end
