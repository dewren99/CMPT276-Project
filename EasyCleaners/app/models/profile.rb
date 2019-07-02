# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user
  validates :info, presence: true
  validates :price, presence: true
  validates :user_id, presence: true
end
