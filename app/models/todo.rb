# frozen_string_literal: true

class Todo < ApplicationRecord
  default_scope { order(:updated_at) }
end
