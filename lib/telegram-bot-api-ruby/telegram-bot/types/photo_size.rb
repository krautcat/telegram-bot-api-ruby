module TelegramBot
  module Types

    class PhotoSize < BaseType

      attribute :file_id    , String
      attribute :width      , Integer
      attribute :height     , Integer
      attribute :file_size  , Integer

    end

  end
end
