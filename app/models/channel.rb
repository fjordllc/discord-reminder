# frozen_string_literal: true

class Channel < ApplicationRecord
  validates :name, presence: true
  validates :webhook_url, presence: true
end
