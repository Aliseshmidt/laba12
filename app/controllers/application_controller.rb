# frozen_string_literal: true

# class for calc
class ApplicationController < ActionController::Base
  include SessionsHelper

  before_action :authenticate, except: %i[new create]

  def current_user
    @_current_user ||= session[:current_user_id] &&
                       User.find_by_id(session[:current_user_id])
  end

  private

  def authenticate
    return if current_user

    redirect_to root_path
  end
end
