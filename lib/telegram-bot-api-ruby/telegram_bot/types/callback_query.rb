module TelegramBot
  module Types

    class CallbackQuery < BaseType

      attribute :id                 , String
      attribute :from               , User
      attribute :message            , Message
      attribute :inline_message_id  , String
      attribute :data               , String

    end

  end
end
