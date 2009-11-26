# To change this template, choose Tools | Templates
# and open the template in the editor.

class Browser
  ##
  # User agent string.

  attr_reader :user_agent

  ##
  # Initialize with user agent _string_.

  def initialize user_agent
    @user_agent = user_agent.strip
  end

  ##
  # Return name for user agent _user_agent_.

  def self.name user_agent
    case user_agent
    when /Konqueror/i            ; :Konqueror
    when /Safari/i               ; :Safari
    when /MSIE/i                 ; :IE
    when /Chrome/i               ; :Chrome
    when /Android/i              ; :Android
    when /Opera Mini/i           ; :'Opera Mini'
    when /Opera Mobi/i           ; :'Opera Mobile'
    when /Opera/i                ; :Opera
    when /playstation 3/i        ; :PS3
    when /playstation portable/i ; :PSP
    when /SymbianOS/i            ; :SymbianOS
    when /Symbian/i              ; :Symbian
    when /iPhone/i               ; :iPhone
    when /Firefox/i              ; :Firefox
    when /Mozilla/i              ; :Mozilla
    else                         ; :Unknown
    end
  end

  ##
  # Return version for user agent _user_agent_.

  def self.version user_agent
    name = name user_agent
    case name
    when :Chrome     ; $1 if user_agent =~ /chrome\/([\d\w\.\-]+)/i
    when :Safari     ;
      if user_agent =~ /version\/([\d\w\.\-]+)/i
        $1
      elsif user_agent =~ /Safari([0-9\.\-]+)/i
        $1
      else user_agent =~ /Safari\/([0-9\.\-]+)/i
        $1
      end
    when :PS3        ; $1 if user_agent =~ /([\d\w\.\-]+)\)\s*$/i
    when :PSP        ; $1 if user_agent =~ /([\d\w\.\-]+)\)?\s*$/i
      #    when :SymbianOS  ; $1 if user_agent =~ /\/([\d\w\.\-]+)/i #\)?\s*$
      #    when :Symbian    ; $1 if user_agent =~ /\ ([0-9\d\w\.\-]+)\)?\s*$/i
      #    when :iPhone     ; $1 if user_agent =~ /([\d\w\.\-]+)\)?\s*$/i
      #when name[/safari([0-9\-\.\_]+)/i] ; $1 if name =~ /([0-9\-\.\_]+)/i
    else           $1 if user_agent =~ /#{name.to_s}[\/ ]([\d\w\.\-]+)/i
    end
  end

  ##
  # Is _string_. Device

  def self.is_browser? user_agent, browser
    browser_sym = name user_agent
    browser_sym = browser_sym.to_s.downcase
    browser = browser.to_s.downcase
    browser_sym.include? browser
  end

end
