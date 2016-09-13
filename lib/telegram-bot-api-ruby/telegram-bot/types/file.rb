module TelegramBot
  module Types

    class File < BaseType

      attribute :file_id    , String
      attribute :file_size  , Integer
      attribute :file_path  , String

    end

  end
end
