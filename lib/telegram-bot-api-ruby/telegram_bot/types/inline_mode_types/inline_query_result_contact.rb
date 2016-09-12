module TelegramBot
  module Types

    class InlineQueryResultContact < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :phone_number           , String
      attribute :first_name             , String
      attribute :last_name              , String
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent
      attribute :thumb_url              , String
      attribute :thumb_width            , Integer
      attribute :thumb_height           , Integer

    end

  end
end
