module TelegramBot
  module Types

    class ChosenInlineResult < InlineModeBaseType

        attribute :result_id          , String
        attribute :from               , User
        attribute :location           , Location
        attribute :inline_message_id  , String
        attribute :query              , String

        alias to_s query

    end

  end
end
