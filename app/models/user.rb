class User < ApplicationRecord
  has_many :todos, if: -> { name.present? }, inverse_of: user

  acts_as_taggable
  acts_as_taggable_on :skills, :interests
end
