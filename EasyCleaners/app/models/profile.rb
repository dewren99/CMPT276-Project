# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user
  has_many :listings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_id, presence: true
  validates :price, presence: true
end
