module TelegramBot
  class API

    #------------------------------------------------------#
    # API methods on which Telegram API server responds on #
    # grouped by theirs functions                          #
    #------------------------------------------------------#
    API_METHODS = %w(
      getUpdates setWebhook
      getMe
      sendMessage forwardMessage sendPhoto sendAudio sendDocument sendSticker
      sendVideo sendVoice sendLocation sendVenue sendContact getFile
      sendChatAction getUserProfilePhotos kickChatMember leaveChat
      unbanChatMember getChat getChatAdministrators getChatMembersCount
      getChatMember
      answerCallbackQuery
      editMessageText editMessageCaption editMessageReplyMarkup
      answerInlineQuery
    ).freeze
    REPLY_KEYBOARD_MARKUP_TYPES = [
      TelegramBot::Types::ReplyKeyboardMarkup,
      TelegramBot::Types::ReplyKeyboardHide,
      TelegramBot::Types::InlineKeyboardMarkup,
      TelegramBot::Types::ForceReply
    ].freeze
    INLINE_QUERY_RESULT_TYPES = [
      TelegramBot::Types::InlineQueryResultArticle,
      TelegramBot::Types::InlineQueryResultAudio,
      TelegramBot::Types::InlineQueryResultContact,
      TelegramBot::Types::InlineQueryResultDocument,
      TelegramBot::Types::InlineQueryResultGif,
      TelegramBot::Types::InlineQueryResultLocation,
      TelegramBot::Types::InlineQueryResultMpeg4Gif,
      TelegramBot::Types::InlineQueryResultPhoto,
      TelegramBot::Types::InlineQueryResultVenue,
      TelegramBot::Types::InlineQueryResultVideo,
      TelegramBot::Types::InlineQueryResultVoice,
      TelegramBot::Types::InlineQueryResultCachedPhoto,
      TelegramBot::Types::InlineQueryResultCachedGif,
      TelegramBot::Types::InlineQueryResultCachedMpeg4Gif,
      TelegramBot::Types::InlineQueryResultCachedSticker,
      TelegramBot::Types::InlineQueryResultCachedDocument,
      TelegramBot::Types::InlineQueryResultCachedVideo,
      TelegramBot::Types::InlineQueryResultCachedVoice,
      TelegramBot::Types::InlineQueryResultCachedAudio
    ].freeze

    attr_reader :bot_token

    def initialize(token)
        @bot_token = token
    end

    #------------------------------------------------------#
    # Allow calling API methods as API.methodName or       #
    # API.method_name (i.e. supports different notations)  #
    #------------------------------------------------------#
    def method_missing(method_name, *args)
      endpoint = method_name.to_s
      endpoint = camelize(endpoint) if endpoint.include?('_')

      API_METHODS.include?(endpoint) ? call(endpoint, *args) : super
    end


    def respond_to_missing?(*args)
      method_name = args[0].to_s
      method_name = camelize_method(method_name) if method_name.include?('_')

      API_METHODS.include?(method_name) || super
    end

  end
end
