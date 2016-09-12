module TelegramBot
  module Types

    class MessageEntity < BaseType

      attribute :type     , String
      attribute :offset   , Integer
      attribute :length   , Integer
      attribute :url      , String
      attribute :user     , User

    end

  end
end
