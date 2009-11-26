class Os
  ##
  # User agent string.

  attr_reader :user_agent

  ##
  # Initialize with user agent _string_.

  def initialize user_agent
    @user_agent = user_agent.strip
  end

  ##
  # Return the os for user agent _user_agent_.

  def self.os user_agent
    case user_agent
    when /windows ce/i           ; :'Windows CE'
    when /windows nt 6\.0/i      ; :'Windows Vista'
    when /windows nt 6\.\d+/i    ; :'Windows 7'
    when /windows nt 5\.2/i      ; :'Windows 2003'
    when /windows nt 5\.1/i      ; :'Windows XP'
    when /windows nt 5\.0/i      ; :'Windows 2000'
    when /windows nt 4\.0/i      ; :Windows
    when /os x (\d+)[._](\d+)/i  ; :'Mac OS'
    when /Mac/i                  ; :'Mac OS'
    when /linux/i                ; :Linux
    when /wii/i                  ; :Wii
    when /playstation 3/i        ; :Playstation
    when /playstation portable/i ; :Playstation
    when /SymbianOS/i            ; :SymbianOS
    when /Symbian/i              ; :Symbian
    when /Palm/i                 ; :Palm
    when /iPhone/i               ; :iPhone
    else                         ; :Unknown
    end
  end

  ##
  # Return version for user agent _user_agent_.

  def self.os_version user_agent
    os = os(user_agent)
    case os
    when :Chrome     ; $1 if user_agent =~ /chrome\/([\d\w\.\-]+)/i
    when :Safari;
      if user_agent =~ /version\/([\d\w\.\-]+)/i
        $1
      elsif user_agent =~ /Safari([\d0-9\.\-]+)/i
        $1
      elsif user_agent =~ /Safari\/([\d0-9\.\-]+)/i
        $1
      end
    when :PS3        ; $1 if user_agent =~ /([\d\w\.\-]+)\)\s*$/i
    when :PSP        ; $1 if user_agent =~ /([\d\w\.\-]+)\)?\s*$/i
    when :SymbianOS;
      if user_agent =~ /symbianos\/([\d\w\.\-]+)/i
        $1
      elsif user_agent =~ /SymbianOS([\d0-9\.\-]+)/i
        $1
      end
    when :Symbian    ; $1 if user_agent =~ /\ ([0-9\d\w\.\-]+)\)?\s*$/i
    when :iPhone     ; $1 if user_agent =~ /OS\ ([0-9\.\-\_]+)/i
    when :IE         ; $1 if user_agent =~ /IEMobile[\/ ]([\d\w\.\-]+)/i
    when :'Mac OS'   ; "#{$1}.#{$2}" if  user_agent =~ /os x (\d+)[._](\d+)/i
    else           $1 if user_agent =~ /#{os}[\/ ]([\d\w\.\-]+)/i
    end
  end

  def self.os_series user_agent
    case os(user_agent)
    when :SymbianOS  ; :"#{user_agent[/series[\w\-\.\/]*/i]}" if user_agent =~ /series[\w\-\.\/]*/i
    when :Symbian    ; $1 if user_agent =~ /\ ([0-9\d\w\.\-]+)\)?\s*$/i
    else           $1 if user_agent =~ /[\/ ]([\d\w\.\-]+)/i
    end
  end

  ##
  # Is _string_. Device

  def self.is_os? user_agent, os
    os_sym = os user_agent
    os_sym = os_sym.to_s.downcase
    os = os.to_s.downcase
    os_sym.include? os
  end

end
