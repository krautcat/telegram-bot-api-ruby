module TelegramBot
  module Types

    class InlineQueryResultDocument < InlineQueryResultBaseType

      attribute :title                  , String
      attribute :caption                , String
      attribute :document_url           , String
      attribute :mime_type              , String
      attribute :description            , String
      attribute :thumb_url              , String
      attribute :thumb_width            , Integer
      attribute :thumb_height           , Integer

    end

  end
end
