module TelegramBot
  module Types

    class InlineQueryResultAudio < InlineQueryResultBaseType

      attribute :audio_url              , String
      attribute :title                  , String
      attribute :performer              , String
      attribute :audio_duration         , Integer

    end

  end
end
