# frozen_string_literal: true

class SettingController < ApplicationController
  before_action :initialize_setting, only: %i[edit update]

  def edit
    @setting = Setting.first
  end

  def update
    @setting = Setting.first
    if @setting.update(setting_params)
      redirect_to edit_setting_url, notice: 'Setting was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def initialize_setting
    Setting.create!(basic_auth_user: 'user', basic_auth_password: 'test') if Setting.count.zero?
  end

  def setting_params
    params.require(:setting).permit(
      :basic_auth_user,
      :basic_auth_password
    )
  end
end
