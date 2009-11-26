require 'active_device/brand'
require 'active_device/model'

class Handset
  
  ##
  # User agent string.

  attr_reader :user_agent

  ##
  # Initialize with user agent _string_.

  def initialize user_agent
    @user_agent = user_agent.strip
  end

  ##
  # Is _string_. Mobile Device

  def self.is_mobile? user_agent
    mobi = Brand.mobile_brand user_agent
    if mobi == :UnknownMobile
      false
    else
      true
    end
  end

  ##
  # Is _string_. Device

  def self.is_handset? user_agent, model
    model_sym = Model.brand_model user_agent
    model_sym = model_sym.to_s.downcase
    model = model.to_s.downcase
    model_sym.include? model
  end

  ##
  # Is _string_. Device

  def self.is_model? user_agent, model
    model_sym = Model.brand_model user_agent
    model_sym = model_sym.to_s.downcase
    model = model.to_s.downcase
    model_sym.include? model
  end
  
  ##
  # Is _string_. Device

  def self.is_brand? user_agent, brand
    brand_sym = Brand.mobile_brand user_agent
    brand_sym = brand_sym.to_s.downcase
    brand = brand.to_s.downcase
    brand_sym.include? brand
  end

end