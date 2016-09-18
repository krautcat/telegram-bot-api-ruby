module TelegramBot
  module Types

    class KeyboardButton

      attribute :text            , String
      attribute :request_contact , Boolean, default: false
      attribute :request_location, Boolean, default: false

    end

  end
end
