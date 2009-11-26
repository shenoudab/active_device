module ActiveDevice
  class Bot
    PREFIX = {
      # Common prefixes (mozilla not included)
      :common => %w(opera),
      # Mobile browser prefixes
      :embedded => %w(blackberry docomo waptiger winwap),
      # Textmode browser prefixes
      :text => %w(elinks lynx retawq w3m/) << "links ",
      # Uncommon browser prefixes
      :rare => %w(advanced amaya amiga aplix cyberdog dillo galaxy genius
        hotjava ibm ibrowse icab ice klondike ncsa netsurf openwave
        reqwirelessweb sunrise worldwideweb),
      # These usually are not prefixes in their normal UA string
      :odd => %w(android avant firefox k-meleon konqueror netscape safari
         seamonkey) }

    ID = {
      :mobile => %w(^sec blackberry midp mmp netfront opera safari semc
        sonyericsson symbian up\\.browser up\\.link) << "windows ce",
      :moz_compatible => %w(amigavoyager antfresco aol applewebkit avant
        blackberry elaine gecko ibrowse icab khtml konqueror msie netfront netp
        netscape omniweb opera teleca voyager),
      :moz_platform => %w(amiga beos brew bsd danger dreamcast iphone ipod linux
        mac os/2 palm pda playstation ps2 ps3 psp risc star-blade sunos syllable
        symbian win x11 zx),
      :bot => %w(<a <script bot butterfly checker crawl daumoa del\\.icio\\.us
        depspid flycast heritrix httrack indexing ktxn larbin links-sql
        me\\.dium miro mozshot nutch odp-entries oneriot pbwf planetwide slurp
        spider survey thunderbird vermut) << "black widow" }

    REGEXP = {
      :prefix => /^#{PREFIX.values.flatten! * "|^"}/,
      :mobile => /#{ID[:mobile] * "|"}/,
      :moz_compatible => /#{ID[:moz_compatible] * "|"}/,
      :moz_platform => /#{ID[:moz_platform] * "|"}/,
      :bot => /#{ID[:bot] * "|"}/ }

    def is_bot?
      self.is_bot? user_agent
    end
    
    ##
    # User agent brand symbol.
    def self.is_bot? user_agent
      case user_agent
      when /bot/i                  ; true
      when /Spider/i               ; true
      else                         ; false
      end
    end

    def robot?(user_agent)
      !browser?(user_agent)
    end

    def browser?(user_agent)
      # Empty string might be an anonymized browser
      return true if user_agent.nil? || user_agent =~ /^\s*$/
      ua_lc = user_agent.downcase
      if ua_lc[0,7] == "mozilla"
        is_browser = ua_lc =~ REGEXP[:moz_compatible] || ua_lc =~ REGEXP[:moz_platform]
      else
        is_browser = ua_lc =~ REGEXP[:prefix] || ua_lc =~ REGEXP[:mobile]
      end
      is_browser = ua_lc[REGEXP[:bot]].nil? if is_browser
      return is_browser
    end
  end

  module BotHelper
    def robot?(user_agent)
      self.class.urobot.robot?(user_agent)
    end

    def browser?(user_agent)
      self.class.urobot.browser?(user_agent)
    end

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def bot
        @bot ||= ActiveDevice::BOT.new
      end
    end
  end

end