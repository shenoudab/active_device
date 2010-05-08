class Model
  ##
  # User agent user_agent.

  attr_reader :user_agent

  ##
  # Initialize with user agent _user_agent_.

  def initialize user_agent
    @user_agent = user_agent.strip
  end

  def self.brand_model user_agent
    case user_agent
    when /iPad/i                        ; :iPad
    when /iPhone/i                      ; :iPhone
    when /SAMSUNG[\w\-\.\_\ ]*/i        ; samsung_models user_agent
    when /Nokia[\w\.\_\ ]*/i            ; nokia_models user_agent
    when /HTC[\w\-\.\_\ ]*/i            ; htc_models user_agent
    when /SonyEricsson[\w\-\.\_\ ]*/i   ; sonyericsson_models user_agent
    when /Opera Mini/i                  ; :'Opera Mini'
    when /Opera Mobi/i                  ; :'Opera Mobile'
    when /Palm/i                        ; palm_models user_agent
    when /webOS/i                       ; palm_models user_agent
    when /^Mozilla[0-9\-\.\_\ ]*/i      ; :Unknown
    else                                ; :"#{user_agent[/[\w\-\.\_]*/i]}"
    end
  end

  ##
  # Return the Nokia model for user agent _user_agent_.
  # Note: Nokia Models Include "Nokia" Returend Value.

  def self.nokia_models user_agent
    if user_agent =~ /^Nokia[\w\.\_\ ]*/i
      model = user_agent[/Nokia[\w\.\_\ ]*/i]
    else
      model = user_agent[/Nokia[\w\.\_\ ]*/i]
    end
    model_clear model
  end

  def self.htc_models user_agent
    if user_agent =~ /^HTC[\w\-\.\_\ ]*/i
      model = user_agent[/[\w\-\.\_\ ]*/i]
    elsif user_agent =~ /Vodafone[\w\-\.\_\ ]*/i
      model = user_agent[/Vodafone[\w\-\.\_\ ]*/i]
    else
      model = user_agent[/HTC[\w\-\.\_\ ]*/i]
    end
    model_clear model
  end

  def self.sonyericsson_models user_agent
    if user_agent =~ /^SonyEricsson[\w\.\_]*/i
      model = user_agent[/SonyEricsson[\w\.\_]*/i]
    else
      model = user_agent[/SonyEricsson[\w\.\_]*/i]
    end
    model_clear model
  end

  def self.samsung_models user_agent
    if user_agent =~ /^Samsung[\w\.\_\-]*/i
      model = user_agent[/Samsung[\w\.\_\-]*/i]
    else
      model = user_agent[/Samsung[\w\.\_\-]*/i]
    end
    model_clear model
  end

  def self.palm_models user_agent
    if user_agent =~ /webOS[\w\.\_\-]*/i
      if user_agent[/Pre[\w\.\_\-]*/i]
        model = :'Palm Pre'
      elsif user_agent[/Pixi[\w\.\_\-]*/i]
        model = :'Palm Pixi'
      else 
        model = user_agent[/[\w\.\_\-]*/i]
      end
    elsif user_agent =~ /PalmOS[\w\.\_\-]*/i
      model = user_agent[/Palm[\.\_\-][\w]*/i]
    elsif user_agent =~ /PalmSource[\w\.\_\-]*/i
      model = user_agent[/Palm[\.\_\-][\w]*/i]
    else
      model = user_agent[/Palm[\w\.\_\-]*/i]
    end
    model_clear model
  end

  def self.model_clear model
    model = model.to_s
    if model.include?("Profile")
      model =  model.gsub(/Profile[\w\.\_\ ]*/i, "")
    elsif model.include?("Mozilla")
      model =  model.gsub(/Mozilla[\w\.\_\ ]*/i, "")
    end
    :"#{model.chomp("-").strip}"
  end
  ##
  # Return the model reselution for user agent _user_agent_.

  def self.model_reselution user_agent
    case user_agent
    when /([0-9]+x+[0-9]*)/i            ; :"#{user_agent[/([0-9]+x+[0-9]*)/i]}"
    else                                ; :'Not Recognized'
    end
  end

end
