module TelegramBot
  module Types

    class Venue < BaseType

      attribute :location       , Location
      attribute :title          , String
      attribute :address        , String
      attribute :foursqare_id   , String

    end

  end
end
