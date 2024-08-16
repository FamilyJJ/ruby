=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
It should return a pair of days representing the best day to buy and the best day to sell. 
Days start at 0.
=end

def stock_picker(array)
  buy_day_number = 0
  sell_day_number = 0
  profit = 0

  array.each_with_index do |buy_price, buy_day|
    (buy_day + 1...array.size).each do |sell_day|
    current_profit = array[sell_day] - buy_price

        if current_profit > profit
          profit = current_profit
          sell_day_number = sell_day
          buy_day_number = buy_day
        end
    end
  end
  [buy_day_number, sell_day_number]  
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
