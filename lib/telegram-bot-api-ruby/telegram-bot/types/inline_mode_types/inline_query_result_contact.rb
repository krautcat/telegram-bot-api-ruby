module TelegramBot
  module Types

    class InlineQueryResultContact < InlineQueryResultBaseType

      attribute :phone_number           , String
      attribute :first_name             , String
      attribute :last_name              , String
      attribute :thumb_url              , String
      attribute :thumb_width            , Integer
      attribute :thumb_height           , Integer

    end

  end
end
