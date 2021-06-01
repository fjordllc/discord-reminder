# frozen_string_literal: true

class Executor
  def self.execute
    new.execute
  end

  def execute
    Message.all.find_each do |message|
      send_message(message) if When::Cron.new(message.schedule) == Time.zone.now
    end
  end

  def send_message(message)
    uri = URI.parse(message.channel.webhook_url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    params = { 'content' => message.body }
    headers = { 'Content-Type' => 'application/json' }
    http.post(uri.path, params.to_json, headers)
  rescue StandardError => e
    Rails.logger.error e
  end
end
