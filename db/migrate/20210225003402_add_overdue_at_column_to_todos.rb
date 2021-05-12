# frozen_string_literal: true

class AddOverdueAtColumnToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :overdue_at, :datetime, null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end
end
