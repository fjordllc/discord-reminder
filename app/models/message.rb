# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :channel
  validates :title, presence: true
  validates :schedule, presence: true
  validates :body, presence: true
end
