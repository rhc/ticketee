 
ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"

require "minitest/pride"
#require 'minitest/focus'
#require 'minitest/colorize'
#

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  #
  # feature 
  def sign_in_as(user)
    visit '/signin'
    fill_in "Name", with: user.name
    fill_in "Password", with: 'topsecret'
    click_button 'Sign in'
  end

  # in controllers
  def sign_in user
    session[:user_id] = user.id
  end


end

#Capybara driver
Capybara.javascript_driver = :webkit
