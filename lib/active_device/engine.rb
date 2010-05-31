class Engine
  
  ##
  # User agent string.

  attr_reader :user_agent

  ##
  # Initialize with user agent _string_.

  def initialize user_agent
    @user_agent = user_agent.strip
  end


  ##
  # Return engine symbol for user agent _user_agent_.

  def self.engine user_agent
    case user_agent
    when /AppleWebKit/i ; :AppleWebKit
    when /Webkit/i      ; :Webkit
    when /Khtml/i       ; :khtml
    when /Konqueror/i   ; :Konqueror
    when /Presto/i      ; :Presto
    when /Trident/i     ; :Trident
    when /Gecko/i       ; :Gecko
    when /MSIE/i        ; :MSIE
    when /Chrome/i      ; :Chrome
    when /Darwin/i      ; :Darwin
    when /NetFront/i    ; :NetFront
    when /UP.Browser/i  ; :'UP.Browser'
    when /Palm/i        ; :Palm
    else                :Unknown
    end
  end

  ##
  # Return engine version for user agent _user_agent_.

  def self.engine_version user_agent
    engine = engine user_agent
    case engine
    when :Webkit;
      if user_agent =~ /#{engine}[\/ ]([\d\w\.\-]+)/i
        $1
      elsif user_agent =~ /#{engine}([0-9\.\-]+)/i
        $1
      end
    when :NetFront;
      if user_agent =~ /#{engine}[\/ ]([\d\w\.\-]+)/i
        $1
      elsif user_agent =~ /#{engine}([0-9\.\-]+)/i
        $1
      end
    when :'UP.Browser';
      if user_agent =~ /#{engine}[\/ ]([\d\w\.\-]+)/i
        $1
      elsif user_agent =~ /#{engine}([0-9\.\-]+)/i
        $1
      end
    else $1 if user_agent =~ /#{engine user_agent}[\/ ]([\d\w\.\-]+)/i
    end
  end
  
  ##
  # Is _string_. Device

  def self.is_engine? user_agent, engine
    engine_sym = engine user_agent
    engine_sym = engine_sym.to_s.downcase
    engine = engine.to_s.downcase
    engine_sym.include? engine
  end

end
