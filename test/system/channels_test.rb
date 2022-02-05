# frozen_string_literal: true

require 'application_system_test_case'

class ChannelsTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit channels_url
    assert_selector 'h2.title', text: 'Channels'
  end

  test 'should create channel' do
    visit new_channel_url

    assert_selector 'h2.title', text: 'New Channel'

    within 'form[name=channel]' do
      fill_in 'channel[name]', with: 'testchannel'
      fill_in 'channel[webhook_url]', with: 'https://example.com/webhook'
      click_button 'Submit'
    end

    assert_text 'Channel was successfully created'
  end

  test 'should update channel' do
    channel = Channel.create(name: 'foo', webhook_url: 'example.com/webhook')
    visit edit_channel_url(channel)

    assert_selector 'h2.title', text: 'Editing Channel'

    within 'form[name=channel]' do
      fill_in 'channel[name]', with: 'testchannel'
      fill_in 'channel[webhook_url]', with: 'https://example.com/webhook-new'
      click_button 'Submit'
    end

    assert_text 'Channel was successfully updated'
  end
end
