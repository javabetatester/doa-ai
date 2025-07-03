# frozen_string_literal: true

DonationPoint.find_or_create_by!(name: "Ponto de Doação 1") do |donation_point|
  donation_point.description = "Ponto de Doação 1"
  donation_point.contact_name = "Contato 1"
  donation_point.contact_email = "contato1@example.com"
  donation_point.contact_phone = "1234567890"
end

DonationPoint.find_or_create_by!(name: "Ponto de Doação 2") do |donation_point|
  donation_point.description = "Ponto de Doação 2"
  donation_point.contact_name = "Contato 2"
  donation_point.contact_email = "contato2@example.com"
  donation_point.contact_phone = "1234567890"
end
