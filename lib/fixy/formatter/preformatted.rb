module Fixy
  module Formatter
    module Preformatted

      #
      # ShiftOccurrence Formatter
      #
      # Only contains printable characters and is
      # left-justified and filled with spaces.
      #

      def format_preformatted(input, _byte_width)
        # input
        String.new(input.to_s).gsub(/\s+/, ' ').strip
      end
    end
  end
end
