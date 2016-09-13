module TelegramBot
  module Types

    class ChatMember < BaseType

      attribute :user     , User
      attribute :status   , String

    end

  end
end


