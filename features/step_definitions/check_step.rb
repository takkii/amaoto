Given /^今日は"([^"]+)"月$/ do |mon|
@mon = mon.to_i
raise "今日の月が違います" unless @mon == Date.today.month.to_i
end

When /^来月の月の数字を計算する$/ do
@next_month = next_month(@mon)
end

Then /^"([^"]+)"月が算出される$/ do |nmon|
raise "来月の月が違います" unless @next_month == nmon.to_i
end

def next_month(a)
a.to_i + 1
end