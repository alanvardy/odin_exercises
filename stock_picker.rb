def best_sell_day(days, buy_day)
  buy_sell_return = [0, 0, 0] # buy day, sell day, best_return
  days.each_index do |sell_day|
    next unless sell_day > buy_day
    if days[sell_day] - days[buy_day] > buy_sell_return[2]
      buy_sell_return = [buy_day, sell_day, days[sell_day] - days[buy_day]]
    end
  end
  buy_sell_return
end

def stock_picker(days)
  buy_sell_return = [0, 0, 0] # buy day, sell day, best_return
  days.each_index do |buy_day|
    new_option = best_sell_day(days, buy_day)
    buy_sell_return = new_option if new_option[2] > buy_sell_return[2]
  end
  buy_sell_return[0, 2].inspect
end

puts stock_picker([5, 1, 8, 3, 9, 7])
