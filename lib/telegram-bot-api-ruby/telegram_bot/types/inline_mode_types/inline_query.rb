module TelegramBot
  module Types

    class InlineQuery < InlineModeBaseType

      attribute :id         , String
      attribute :from       , User
      attribute :location   , Location
      attribute :query      , String
      attribute :offset     , String

      alias to_s query

    end

  end
end
