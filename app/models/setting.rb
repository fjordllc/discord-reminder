# frozen_string_literal: true

class Setting < ApplicationRecord
  validates :basic_auth_user, presence: true
  validates :basic_auth_password, presence: true
end
