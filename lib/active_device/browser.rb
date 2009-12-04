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
    when /avant/i                ; :Avant
    when /Konqueror/i            ; :Konqueror
    when /Safari/i               ; :Safari #Common
    when /MSIE/i                 ; :IE #Common
    when /Chrome/i               ; :Chrome #Common
    when /Android/i              ; :Android
    when /Opera Mini/i           ; :'Opera Mini' #Embedded Mobile Based
    when /Opera Mobi/i           ; :'Opera Mobile' #Embedded Mobile Based
    when /Opera/i                ; :Opera #Common
    when /playstation 3/i        ; :PS3
    when /playstation portable/i ; :PSP
    when /Palm/i                 ; :Palm
    when /SymbianOS/i            ; :SymbianOS #Embedded Mobile Based
    when /Symbian/i              ; :Symbian #Embedded Mobile Based
    when /iPhone/i               ; :iPhone #Embedded Mobile Based
    when /Firefox/i              ; :Firefox #Common
    when /Netscape/i             ; :Netscape
    when /seamonkey/i            ; :Seamonkey
    when /k-meleon/i             ; :'K-Meleon'
    when /Winwap/i               ; :Winwap #Embedded Mobile Based
    when /WapTiger/i             ; :WapTiger #Embedded Mobile Based
    when /DOCOMO/i               ; :DOCOMO  #Embedded Mobile Based
    when /elinks/i               ; :ELinks #Text Based
    when /Lynx/i                 ; :Lynx #Text Based
    when /retawq/i               ; :w3m #Text Based
    when /advanced/i             ; :Advanced
    when /amaya/i                ; :Amaya
    when /amiga/i                ; :Amiga
    when /aplix/i                ; :Aplix
    when /cyberdog/i             ; :Cyberdog
    when /dillo/i                ; :Dillo
    when /galaxy/i               ; :Galaxy
    when /genius/i               ; :Genius
    when /hotjava/i              ; :hotjava
    when /ibm/i                  ; :IBM
    when /ibrowse/i              ; :iBrowse
    when /icab/i                 ; :iCab
    when /ice/i                  ; :ICE
    when /klondike/i             ; :Klondike
    when /ncsa/i                 ; :NCSE
    when /netsurf/i              ; :NetSurf
    when /openwave/i             ; :OpenWave
    when /reqwirelessweb/i       ; :Reqwirelessweb
    when /sunrise/i              ; :sunrise
    when /worldwideweb/i         ; :worldwideweb
    when /Mozilla/i              ; :Mozilla #Common
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
