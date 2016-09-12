module TelegramBot
  module Types

    class Voice < BaseType

      attribute :file_id    , String
      attribute :duration   , Integer
      attribute :mime_type  , String
      attribute :file_size  , Integer

    end

  end
end
