module TelegramBot
  module Types

    class InputVenueMessageContent < InlineModeBaseType

      attribute :latitude       , Float
      attribute :longitude      , Float
      attribute :title          , String
      attribute :address        , String
      attribute :foursquare_id  , String

  end
end
