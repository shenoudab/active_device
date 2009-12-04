class Bot
  
  ##
  # User agent string.

  attr_reader :user_agent

  ##
  # Initialize with user agent _string_.

  def initialize user_agent
    @user_agent = user_agent.strip
  end

  ##
  # Check UserAgent is Bot.
  def self.is_bot? user_agent
    case user_agent
    when /bot/i                  ; true
    when /Spider/i               ; true
    when /Butterfly/i            ; true
    when /Checker/i              ; true
    when /Crawl/i                ; true
    when /Daumoa/i               ; true
    when /Delicious/i            ; true
    when /del.icio.us/i          ; true
    when /Depspid/i              ; true
    when /Flycast/i              ; true
    when /Heritrix/i             ; true
    when /Httrack/i              ; true
    when /Indexing/i             ; true
    when /Ktxn/i                 ; true
    when /Larbin/i               ; true
    when /Links-sql/i            ; true
    when /Me.dium/i              ; true
    when /Miro/i                 ; true
    when /Mozshot/i              ; true
    when /Nutch/i                ; true
    when /odp-entries/i          ; true
    when /oneriot/i              ; true
    when /pbwf/i                 ; true
    when /planetwide/i           ; true
    when /slurp/i                ; true
    when /Survey/i               ; true
    when /Thunderbird/i          ; true
    when /Vermut/i               ; true
    else                         ; false
    end
  end

end