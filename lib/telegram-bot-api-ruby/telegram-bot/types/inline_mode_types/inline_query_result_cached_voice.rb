module TelegramBot
  module Types

    class InlineQueryResultCachedVoice < InlineQueryResultBaseType

      attribute :voice_file_id          , String
      attribute :title                  , String

    end

  end
end
