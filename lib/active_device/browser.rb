class Browser
  ##
  # User agent string.

  attr_reader :user_agent

  ##
  # Initialize with user agent _user_agent_.

  def initialize user_agent
    @user_agent = user_agent.strip
  end

  ##
  # Return name for user agent _user_agent_.

  def self.name user_agent
    case user_agent
    when /ABrowse/i              ; :ABrowse
    when /AbiLogicBot/i          ; :AbiLogicBot # Link Checker
    when /Acoo/i                 ; :'Acoo Browser'
    when /Advanced/i             ; :Advanced
    when /America Online/i       ; :'America Online Browser'
    when /Amaya/i                ; :Amaya
    when /Amiga[\/ ]/i           ; :Amiga
    when /AmigaVoyager/i         ; :AmigaVoyager
    when /Android/i              ; :Android
    when /AOL/i                  ; :AOL
    when /Aplix/i                ; :Aplix
    when /Arora/i                ; :Arora
    when /Avant/i                ; :Avant
    when /Beonex/i               ; :Beonex
    when /BlackBerry/i           ; :BlackBerry
    when /Bloglines/i            ; :Bloglines # Feed Reader
    when /BonEcho/i              ; :BonEcho
    when /Camino/i               ; :Camino
    when /Charon/i               ; :Charon
    when /Cheshire/i             ; :Cheshire
    when /Chimera/i              ; :Chimera
    when /Chrome[\/ ]/i          ; :Chrome
    when /ChromePlus/i           ; :ChromePlus
    when /CometBird/i            ; :CometBird
    when /Crazy/i                ; :Crazy
    when /CSE HTML Validator/i   ; :'CSE HTML Validator' # Validator
    when /CSSCheck/i             ; :CSSCheck # Validator
    when /Cyberdog/i             ; :Cyberdog
    when /Cynthia/i              ; :Cynthia # Validator
    when /Deepnet/i              ; :Deepnet
    when /DeskBrowse/i           ; :DeskBrowse
    when /DOCOMO/i               ; :DOCOMO  #Embedded Mobile Based
    when /Dillo/i                ; :Dillo
    when /Elinks/i               ; :Elinks
    when /Enigma/i               ; :Enigma
    when /Epiphany/i             ; :Epiphany
    when /Everyfeed-spider/i     ; :'Everyfeed-spider' # Feed Reader
    when /FeedFetcher-Google/i   ; :'FeedFetcher-Google' # Feed Reader
    when /Fennec/i               ; :Fennec
    when /Firebird/i             ; :Firebird
    when /Firefox[\/ ]/i         ; :Firefox
    when /Flock/i                ; :Flock
    when /Fluid/i                ; :Fluid
    when /Galaxy/i               ; :Galaxy
    when /Galeon/i               ; :Galeon
    when /Genius/i               ; :Genius
    when /GranParadiso/i         ; :GranParadiso
    when /Green/i                ; :Green
    when /Gregarius/i            ; :Gregarius # Feed Reader
    when /HTMLParser/i           ; :HTMLParser # Validator
    when /Hana/i                 ; :Hana
    when /HotJava/i              ; :HotJava
    when /IBM WebExplorer/i      ; :'IBM WebExplorer'
    when /IBrowse/i              ; :IBrowse
    when /iCab/i                 ; :iCab
    when /Iceape/i               ; :Iceape
    when /IceCat/i               ; :IceCat
    when /Iceweasel/i            ; :Iceweasel
    when /iNet/i                 ; :iNet
    when /iPad/i                 ; :iPad
    when /iPhone/i               ; :iPhone #Embedded Mobile Based
    when /Iron/i                 ; :Iron
    when /Java/i                 ; :Java # Library
    when /K-Meleon/i             ; :'K-Meleon'
    when /K-Ninja/i              ; :'K-Ninja'
    when /Kapiko/i               ; :Kapiko
    when /Kazehakase/i           ; :Kazehakase
    when /KKman/i                ; :KKman
    when /klondike/i             ; :Klondike
    when /KMLite/i               ; :KMLite
    when /Konqueror/i            ; :Konqueror
    when /LeechCraft/i           ; :LeechCraft
    when /Link Valet/i           ; :'Link Valet' # Link Checker
    when /Link Validity Check/i  ; :'Link Validity Check' # Link Checker
    when /LinksManager.com_bot/i ; :'LinksManager.com_bot' # Link Checker
    when /Links/i                ; :Links
    when /libwww-perl/i          ; :'libwww-perl' # Library
    when /Lobo/i                 ; :Lobo
    when /Lolifox/i              ; :Lolifox
    when /Lunascape/i            ; :Lunascape
    when /Lynx/i                 ; :Lynx
    when /Madfox/i               ; :Madfox
    when /Maxthon/i              ; :Maxthon
    when /Midori/i               ; :Midori
    when /Minefield/i            ; :Minefield
    when /Minimo/i               ; :Minimo
    when /Mojoo Robot/i          ; :'Mojoo Robot' # Link Checker
    when /MSIE[\/ ]/i            ; :IE #Common
    when /MultiZilla/i           ; :MultiZilla
    when /MyIE2/i                ; :MyIE2
    when /Namoroka/i             ; :Namoroka
    when /NCSA/i                 ; :NCSA_Mosaic
    when /NetFront/i             ; :NetFront
    when /NetNewsWire/i          ; :NetNewsWire
    when /NetPositive/i          ; :NetPositive
    when /Netscape/i             ; :Netscape
    when /NetSurf/i              ; :NetSurf
    when /Notifixious/i          ; :Notifixious # Link Validator
    when /Offline Explorer/i     ; :'Offline Explorer' # Offline Browser
    when /OmniWeb/i              ; :OmniWeb
    when /Online link validator/i; :'Online link validator' # Link Validator
    when /Openwave/i             ; :OpenWave
    when /Opera Mini/i           ; :'Opera Mini' #Embedded Mobile Based
    when /Opera Mobi/i           ; :'Opera Mobile' #Embedded Mobile Based
    when /Opera[\/ ]/i           ; :Opera #Common
    when /Orca/i                 ; :Orca
    when /Oregano/i              ; :Oregano
    when /P3P Validator/i        ; :'P3P Validator' # Validator
    when /Palm/i                 ; :Palm
    when /Peach/i                ; :Peach # Library
    when /Playstation 3/i        ; :PS3 # Console
    when /Playstation portable/i ; :PSP # Console
    when /Phoenix/i              ; :Phoenix
    when /Pogo/i                 ; :Pogo
    when /Python-urllib/i        ; :'Python-urllib' # Library
    when /QtWeb/i                ; :QtWeb
    when /Reciprocal Link/i      ; :'Reciprocal Link'  # Link Checker
    when /REL Link Checker Lite/i; :'REL Link Checker Lite' # Link Checker
    when /retawq/i               ; :Retawq
    when /reqwirelessweb/i       ; :Reqwirelessweb
    when /Safari[\/ ]/i          ; :Safari
    when /SeaMonkey/i            ; :SeaMonkey
    when /Shiira/i               ; :Shiira
    when /Shiretoko/i            ; :Shiretoko
    when /SiteBar/i              ; :SiteBar #Link Checker
    when /Skyfire/i              ; :Skyfire
    when /Sleipnir/i             ; :Sleipnir
    when /Stainless/i            ; :Stainless
    when /Sunrise/i              ; :Sunrise
    when /SuperBot/i             ; :SuperBot # Offline Browser
    when /SymbianOS/i            ; :SymbianOS #Embedded Mobile Based
    when /Symbian/i              ; :Symbian #Embedded Mobile Based
    when /TeaShark/i             ; :TeaShark
    when /Thunderbird/i          ; :Thunderbird # E-Mail Client
    when /UCWEB/i                ; :UCWEB
    when /uzbl/i                 ; :Uzbl
    when /Vivante Link Checker/i ; :'Vivante Link Checker' # Link Checker
    when /w3m/i                  ; :w3m
    #when /W3C-checklink/i        ; :'W3C-checklink' # Link Checker
    #when /W3C_CSS_Validator_JFouffa/i ; :W3C_CSS_Validator_JFouffa # Validator
    #when /W3C_Validator/i        ; :W3C_Validator # Validator
    when /WapTiger/i             ; :WapTiger #Embedded Mobile Based
    when /WDG_Validator/i        ; :WDG_Validator # Validator
    when /Web Downloader/i       ; :'Web Downloader' # Offline Browser
    when /WebCopier/i            ; :WebCopier # Offline Browser
    when /webOS/i                ; :Palm
    when /WebZIP/i               ; :WebZIP # Offline Browser
    when /Wget/i                 ; :Wget # Offline Browser
    when /Winwap/i               ; :Winwap #Embedded Mobile Based
    when /Wii/i                  ; :Wii  # Console
    when /WorldWideWeb/i         ; :WorldWideWeb
    when /Wyzo/i                 ; :Wyzo
    when /Xenu Link Sleuth/i     ; :'Xenu Link Sleuth' # Link Checker
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
    when :iPhone     ; $1 if user_agent =~ /#{name.to_s} OS ([0-9\-\.\_]+)/i
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
