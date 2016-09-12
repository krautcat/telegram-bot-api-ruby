module TelegramBot
  module Types

    class UserProfilePhotos < BaseType

      attribute :total_count  , Integer
      attribute :photos       , Array[Array[PhotoSize]]

    end

  end
end
