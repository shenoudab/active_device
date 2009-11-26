class UserAgent
  ##
  # User agent user_agent.

  attr_reader :user_agent

  ##
  # Initialize with user agent _user_agent_.

  def initialize user_agent
    @user_agent = user_agent.strip
  end
  
  ##
  # User agent user_agent.

  def to_s
    user_agent
  end

  ##
  # Inspect.

  def inspect
    "#<Agent:#{name} version:#{version.inspect} engine:\"#{engine.to_s}:#{engine_version}\" os:#{os.to_s.inspect}>"
  end

  ##
  # Check if the agent is the same as _other_ agent.

  def == other
    user_agent == other.user_agent
  end

  @agents = []

  ##
  # Map agent _name_ to _options_.

  def self.map name, options = {}
    @agents << [name, options]
  end
  
end
