module TelegramBot
  module Types

    class Sticker < BaseType

      attribute :file_id    , String
      attribute :width      , Integer
      attribute :height     , Integer
      attribute :thumb      , PhotoSize
      attribute :emoji      , String
      attribute :file_size  , Integer

    end

  end
end
