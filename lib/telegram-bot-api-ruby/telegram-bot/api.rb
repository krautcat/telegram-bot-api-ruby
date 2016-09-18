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
    # Allow calling API methods in snake_case and          #
    # camelCase                                            #
    #------------------------------------------------------#
    def method_missing(method_name, *args, &block)
      api_method = method_name.to_s
      api_method = camelize(api_method) if api_method.include?('_')

      if API_METHODS.include?(api_method)
        call_api_method(api_method, *args)
      else
        super
      end
    end


    def respond_to_missing?(method_name, include_private = false)
      api_method = method_name.to_s
      api_method = camelize_method(api_method) if api_method.include?('_')

      API_METHODS.include?(api_method) || super
    end

    def call_api_method(method_name, options = {})
      params = build_params(options)

    end

    private

    def camelize_method(method_name)
      method_words = method_name.split('_')
      method_words.drop(1).map!(&:capitalize!)
      method_words.join
    end

    def build_params(options)
      options.each_with_object(Hash.new(0)) do |(key, value), params|
        params[key] = checking_conveyor(value)
      end
    end

    def checking_conveyor(value)
      jsonify_inline_query_results(jsonify_reply_markup(value))
    end

    def jsonify_reply_markup(value)
      return value unless REPLY_KEYBOARD_MARKUP_TYPES.include?(value.class)
      value.to_compact_hash.to_json
    end

    def jsonify_inline_query_results(value)
      return value unless value.is_a? && value.all? do |el|
        INLINE_QUERY_RESULT_TYPES.include?(el.class)
      end
      value.map { |el| el.to_compact_hash}
    end

  end
end
