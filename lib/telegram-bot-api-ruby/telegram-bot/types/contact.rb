module TelegramBot
  module Types

    class Contact < BaseType

      attribute :phone_number   , String
      attribute :first_name     , String
      attribute :last_name      , String
      attribute :user_id        , Integer

    end

  end
end
