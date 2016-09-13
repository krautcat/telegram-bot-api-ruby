module TelegramBot
  module Types

    class InlineQueryResultArticle < InlineQueryResultBaseType

      attribute :title                  , String
      attribute :url                    , String
      attribute :hide_url               , Boolean
      attribute :description            , String
      attribute :thumb_url              , String
      attribute :thumb_width            , Integer
      attribute :thumb_height           , Integer

    end

  end
end
