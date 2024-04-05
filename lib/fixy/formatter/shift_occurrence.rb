module Fixy
  module Formatter
    module ShiftOccurrence

      #
      # ShiftOccurrence Formatter
      #
      # Only contains printable characters and is
      # left-justified and filled with spaces.
      #

      def format_shiftoccurrence(input, byte_width)
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

        padding = '0' * (byte_width - result.bytesize)

        padding + result
        # result << ' ' * (byte_width - result.bytesize)

        # s = 0
        # e = 21
        # shift_array = []
        # while e < result.length
        #   shift = result[s..e]
        #
        #   # shift_array << ShiftOccurrence.new(shift[0..7], shift[8..12], shift[13..17], shift[18..21]).generate
        #   shift_array << { date: shift[0..7], active_jtc: shift[8..12], rate_of_pay: shift[13..17], hours: shift[18..21] }
        #   e += 22
        # end
        #
        # shift_array.to_s

      end
    end
  end
end
