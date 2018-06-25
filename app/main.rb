require "rubygems"
require "sinatra/base"
require "metabase"
require 'platform_sh'

class Main < Sinatra::Base
  configure do
    if PlatformSH::on_platform?
      $METABASE_URL = PlatformSH::config["relationships"]["metabase"][0]["host"]
    end
  end

  get '/' do
    begin
      client = Metabase::Client.new(
        url: $METABASE_URL
      )
    rescue Exception => e  
      message+= e.message  
      message+= e.backtrace.inspect
    end
    message
  end

end
