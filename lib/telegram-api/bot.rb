require 'telegram-api/bot/types'
require 'telegram-api/bot/exceptions'
require 'telegram-api/bot/api'
require 'telegram-api/bot/null_logger'
require 'telegram-api/bot/client'
require 'telegram-api/bot/bot'
require 'telegram-api/bot/version'

module TelegramBot
  def self.new(*args)
    Bot.new(*args)
  end
end
