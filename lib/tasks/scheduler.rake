# frozen_string_literal: true

require Rails.root.join('config/environment')

namespace :reminder do
  desc 'Execute registered tasks.'
  task execute: :environment do
    Executor.execute
  end
end
