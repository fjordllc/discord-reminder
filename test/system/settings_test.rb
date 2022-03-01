# frozen_string_literal: true

require 'application_system_test_case'

class SettingsTest < ApplicationSystemTestCase
  test 'should update setting' do
    visit edit_setting_url

    assert_selector 'h2.title', text: 'Editing Setting'

    within 'form[name=setting]' do
      fill_in 'setting[basic_auth_user]', with: 'testuser'
      fill_in 'setting[basic_auth_password]', with: 'testpassword'
      select 'Tokyo', from: 'setting[timezone]'
      click_button 'Submit'
    end

    assert_text 'Setting was successfully updated'
  end
end
