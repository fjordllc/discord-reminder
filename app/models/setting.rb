# frozen_string_literal: true

class Setting < ApplicationRecord
  validates :basic_auth_user, presence: true
  validates :basic_auth_password, presence: true
  validates :timezone,
            presence: true,
            inclusion: { in: ActiveSupport::TimeZone::MAPPING.keys }

  class << self
    delegate :basic_auth_user, :basic_auth_password, :timezone, to: :first

    def now
      Time.now.in_time_zone(timezone)
    end
  end
end
