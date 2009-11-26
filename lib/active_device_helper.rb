#--
# Copyright (c) 2009 Shenouda Bertel <sbertel@mobithought.com>
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#++

require 'active_device/user_agent'
require 'active_device/brand'
require 'active_device/model'
require 'active_device/handset'
require 'active_device/bot'
require 'active_device/engine'
require 'active_device/browser'
require 'active_device/os'

module ActiveDevice

  module Helper
  
    ##
    # User agent name symbol.

    def agent_name
      Browser.name request.user_agent
    end

    ##
    # User agent version.

    def agent_version
      Browser.version request.user_agent
    end

    ##
    # User agent engine symbol.

    def agent_engine
      Engine.engine request.user_agent
    end

    ##
    # User agent engine version user_agent.

    def agent_engine_version
      Engine.engine_version request.user_agent
    end

    ##
    # User agent os symbol.

    def agent_os
      Os.os request.user_agent
    end

    ##
    # User agent engine version user_agent.

    def agent_os_version
      Os.os_version request.user_agent
    end

    ##
    # User agent engine version user_agent.

    def agent_os_series
      Os.os_series request.user_agent
    end

    ##
    # User agent model symbol.

    def model
      Model.brand_model request.user_agent
    end

    ##
    # User agent model Reselution symbol.

    def model_reselution
      Model.model_reselution request.user_agent
    end

    ##
    # User agent brand symbol.

    def brand
      Brand.mobile_brand request.user_agent
    end
    
  end
end