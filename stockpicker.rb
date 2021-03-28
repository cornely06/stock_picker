def stock_picker(array)
    buy_date = 0
    sell_date = 0
    profit = 0
    array.each_with_index {|buy_price, buy_day|
        array.each_with_index{|sell_price, sell_day|
            if (sell_price > buy_price) && (sell_day > buy_day) && (sell_price - buy_price > profit)
                buy_date = buy_day
                sell_date = sell_day
                profit = sell_price - buy_price
            end
        }
    }
    puts "For a maximum profit of $#{profit}, buy on day #{buy_date + 1} and sell on day #{sell_date + 1}."
end
stock_picker([17,3,6,9,15,8,6,1,10])