module TelegramBot
  module Types

    class Chat < BaseType

      attribute :id         , Integer
      attribute :type       , String
      attribute :title      , String
      attribute :username   , String
      attribute :first_name , String
      attribute :last_name  , String

    end

  end
end
