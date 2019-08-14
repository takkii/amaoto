# frozen_string_literal: true

puts ''

onece = ARGV[1].toutf8

open(onece) do |f|
  while (str2 = f.gets)
    str = str2.chomp!
    twice = ARGV[2].toutf8
    # AND
    three_act2 = /^(?=.*#{twice})/o

    begin
      if str.match(three_act2) || {}[:match]
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

puts ''
