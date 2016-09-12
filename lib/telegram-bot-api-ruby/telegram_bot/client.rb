module TelegramBot
  class Bot
    API_URL = 'https://api.telegram.com'.freeze

    def initialize(args = {})
      # compatibility with just passing a token
      if args.is_a?(String)
        args = { token: args }
      end

      @token      = opts.fetch(:token)
      @timeout    = opts[:timeout]  || 50
      @offset     = opts[:offset]   || 0
      @logger     = opts[:logger]   || NullLogger.new
      @proxy      = opts[:proxy]    || nil
      @connection = Excon.new(API_URL, persistent: true, proxy: @proxy)
    end

  end
end
