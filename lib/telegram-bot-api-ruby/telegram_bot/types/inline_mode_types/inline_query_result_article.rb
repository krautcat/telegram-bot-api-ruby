module TelegramBot
  module Types

    class InlineQueryResultArticle < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :title                  , String
      attribute :input_messae_content   , InlineMessageContent
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :url                    , String
      attribute :hide_url               , Boolean
      attribute :description            , String
      attribute :thumb_url              , String
      attribute :thumb_width            , Integer
      attribute :thumb_height           , Integer

    end

  end
end
