# frozen_string_literal: true

puts ''

one = ARGV[1].toutf8
open(one) do |f|
  while str2 = f.gets
    str = str2.chomp!
    two = ARGV[2].toutf8
    # all search.
    three = /#{two}/o

    begin
      if str.match(three) || {}[:match]
        printf('%2d : %s', f.lineno, str)
        puts ''
      end
    rescue Timeout::Error, Exception => e
      # puts e.message
      # puts e.backtrace
      # puts e.backtrace_locations
      exit!
    end
  end

  if f.eof? == true
    puts ''
  elsif f.eof == false
    begin
      raise
    rescue Exception => ee
      puts ee.backtrace
      puts ee.backtrace_locations
      exit!
    else
      puts ''
    end
    end
end
