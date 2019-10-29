# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :players
  self.per_page = 5
  validates :name, presence: true
end
