# frozen_string_literal: true

class Post < ApplicationRecord
  default_scope {order(created_at: :desc)}
  belongs_to :user
  validates :user_id, presence: true
  validates :message, presence: true
end
