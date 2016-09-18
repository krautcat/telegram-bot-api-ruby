module TelegramBot
  module Types

    class ForceReply < BaseType

      attribute :force_reply, Boolean
      attribute :selective  , Boolean, default: false

    end

  end
end
