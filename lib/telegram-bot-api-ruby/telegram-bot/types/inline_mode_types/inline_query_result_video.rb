module TelegramBot
  module Types

    class InlineQueryResultVideo < InlineQueryResultBaseType

      attribute :video_url              , String
      attribute :mime_type              , String
      attribute :thumb_url              , String
      attribute :title                  , String
      attribute :caption                , String
      attribute :video_width            , Integer
      attribute :video_height           , Integer
      attribute :video_duration         , Integer
      attribute :description            , String

    end

  end
end
