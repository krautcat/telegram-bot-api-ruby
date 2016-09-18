module TelegramBot
  class Bot
    attr_reader   :api, :timeout, :offset, :proxy
    attr_accessor :logger

    API_URL = 'https://api.telegram.com'.freeze

    def initialize(bot_token, args = {})
      options = default_options.merge(args)
      @api        = Api.new(bot_token)
      @timeout    = options[:timeout]
      @offset     = options[:offset]
      @proxy      = options[:proxy]
      @logger     = options[:logger]
      @connection = Excon.new(API_URL, persistent: true, proxy: @proxy)
    end

    def get_me
      @me ||= User.new(API.getMe)
    end

    def self.run(*args, &block)
      new(*args).run(&block)
    end

    def run
      yield self
    end

    private

    def default_options
      { offset: 0, timeout: 20, logger: NullLogger.new, proxy: nil }
    end

  end
end
