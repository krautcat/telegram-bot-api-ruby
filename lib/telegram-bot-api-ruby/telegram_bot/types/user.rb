module TelegramBot
  module Types

    class User < BaseType

      attribute :id         , Integer
      attribute :first_name , String
      attribute :last_name  , String
      attribute :username   , String

    end

  end
end
