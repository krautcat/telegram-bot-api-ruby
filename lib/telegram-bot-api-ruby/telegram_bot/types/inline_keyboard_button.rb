module TelegramBot
  module Types

    class InlineKeyboardButton < BaseType

      attribute :text                 , String
      attribute :url                  , String
      attribute :callback_data        , String
      attribute :switch_inline_query  , String

    end

  end
end
