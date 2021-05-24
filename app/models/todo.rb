# frozen_string_literal: true

class Todo < ApplicationRecord
  belongs_to :user

  default_scope { order(:updated_at) }
end
