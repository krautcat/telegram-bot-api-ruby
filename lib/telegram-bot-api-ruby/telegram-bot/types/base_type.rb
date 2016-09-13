module TelegramBot
  module Types

    class BaseType

      include Virtus.model

      def to_compact_hash
          attributes.dup.delete_if { |_, v| v.nil? }
      end

    end

  end
end
