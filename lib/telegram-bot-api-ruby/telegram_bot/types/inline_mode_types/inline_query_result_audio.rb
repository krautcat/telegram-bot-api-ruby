module TelegramBot
  module Types

    class InlineQueryResultAudio < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :audio_url              , String
      attribute :title                  , String
      attribute :performer              , String
      attribute :audio_duration         , Integer
      attribute :reply_markup           , String
      attribute :input_message_content  , Integer

    end

  end
end
