module TelegramBot
  module Types

    class Video < BaseType

      attribute :file_id    , String
      attribute :width      , Integer
      attribute :height     , Integer
      attribute :duration   , Integer
      attribute :thumb      , PhotoSize
      attribute :mime_type  , String
      attribute :file_size  , Integer

    end

  end
end
