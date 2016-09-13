module TelegramBot
  module Types

    class InlineQueryResultVoice < InlineQueryResultBaseType

      attribute :voice_url              , String
      attribute :title                  , String
      attribute :voice_duration         , Integer

    end

  end
end
