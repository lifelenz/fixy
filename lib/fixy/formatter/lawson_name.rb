module Fixy
  module Formatter
    module LawsonName

      #
      # Lawson Formatter
      #
      # Only contains printable characters and is
      # right-justified and filled with 0's.
      #

      def format_lawson_name(input, byte_width)
        input_string = String.new(input.to_s).tr "#{self.class::LINE_ENDING_CRLF}#{line_ending}", ''
        result = ''

        if input_string.bytesize <= byte_width
          result << input_string
        else
          input_string.each_char do |char|
            if result.bytesize + char.bytesize <= byte_width
              result << char
            else
              break
            end
          end
        end

        # result << '0' * (byte_width - result.bytesize)
        padding = '#' * (byte_width - result.bytesize)

        result + padding
      end
    end
  end
end
