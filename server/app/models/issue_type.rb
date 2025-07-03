# frozen_string_literal: true

# == Schema Information
#
# Table name: issue_types
#
#  id           :integer          not null, primary key
#  activated_at :datetime
#  description  :text
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class IssueType < ApplicationRecord
end
