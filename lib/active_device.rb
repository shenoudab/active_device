#--
# Copyright (c) 2009 Shenouda Bertel <sbertel@mobithought.com>
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#++

require 'active_device/user_agent'
require 'active_device/brand'
require 'active_device/model'
require 'active_device/handset'
require 'active_device/bot'
require 'active_device/engine'
require 'active_device/browser'
require 'active_device/os'

module ActiveDevice
  
  def self.included(base)
    base.before_filter :set_mobile_format
    base.helper_method :is_mobile_device?, :is_mobile_browser?, :is_desktop_browser?, :is_bot?
    base.helper_method :is_mobile_view?
    base.helper_method :is_device?, :is_handset?, :is_brand?, :is_model?, :is_os?, :is_engine?, :is_browser?
  end

  # Determines the request format based on whether the device is mobile or if
  # the user has opted to use either the 'Standard' view or 'Mobile' view.

  def set_mobile_format
    if is_mobile_device?
      request.format = session[:mobile_view] == false ? :html : :mobile
      session[:mobile_view] = true if session[:mobile_view].nil?
    end
  end

  # Returns either true or false depending on whether or not the format of the
  # request is either :mobile or not.

  def is_mobile_view?
    request.format.to_sym == :mobile
  end

  # Returns either true or false depending on whether or not the user agent of
  # the device making the request is matched to a device in our regex.

  def is_mobile_device?
    Handset.is_mobile? request.user_agent
  end

  # Returns either true or false depending on whether or not the user agent of
  # the device making the request is matched to a device in our regex.

  def is_mobile_browser?
    Handset.is_mobile? request.user_agent
  end

  # Returns either true or false depending on whether or not the user agent of
  # the device making the request is matched to a device in our regex.

  def is_desktop_browser?
    !Handset.is_mobile? request.user_agent
  end

  # Returns either true or false depending on whether or not the user agent of
  # the device making the request is matched to a bot in our regex.

  def is_bot?
    Bot.is_bot? request.user_agent
  end

  # Can check for a specific user agent
  # e.g., is_device?('iphone') or is_device?('mobileexplorer')

  def is_device? type
    request.user_agent.to_s.downcase.include?(type.to_s.downcase)
  end

  # Can check for a specific user agent
  # e.g., is_device?('iphone') or is_device?('mobileexplorer')

  def is_handset? type
    Handset.is_handset? request.user_agent, type
  end

  # Can check for a specific user agent
  # e.g., is_device?('iphone') or is_device?('mobileexplorer')

  def is_brand? brand
    Handset.is_brand? request.user_agent, brand
  end

  # Can check for a specific user agent
  # e.g., is_device?('iphone') or is_device?('mobileexplorer')

  def is_model? model
    Handset.is_model? request.user_agent, model
  end

  # Can check for a specific user agent
  # e.g., is_device?('iphone') or is_device?('mobileexplorer')

  def is_os? os
    Os.is_os? request.user_agent, os
  end

  # Can check for a specific user agent
  # e.g., is_device?('iphone') or is_device?('mobileexplorer')

  def is_engine? engine
    Engine.is_engine? request.user_agent, engine
  end

  # Can check for a specific user agent
  # e.g., is_device?('iphone') or is_device?('mobileexplorer')

  def is_browser? browser
    Browser.is_browser? request.user_agent, browser
  end

end

ActionController::Base.send(:include, ActiveDevice)