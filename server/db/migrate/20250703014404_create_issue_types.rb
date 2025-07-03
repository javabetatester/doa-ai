# frozen_string_literal: true

class CreateIssueTypes < ActiveRecord::Migration[8.0]
  def change
    create_table(:issue_types) do |t|
      t.string(:name)
      t.text(:description)
      t.timestamp(:activated_at, null: true)

      t.timestamps
    end
  end
end
