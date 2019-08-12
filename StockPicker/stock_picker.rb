def find(stock_price)
    new_price = []
    len = stock_price.size
    profit = 0
    purchasing_day = 0
    selling_day = 0
    i = 0

    stock_price.each do |price|
        new_price = stock_price[(i..len)]
        j = 0 
        new_price.each do |cost|

            if (cost-price)>profit
                profit = cost - price
                selling_day = j + i
                purchasing_day = i
            end

            j+=1
        end
        i+=1    
    end
    puts ("Purchase on: " + purchasing_day.to_s)
    puts ("Sell on: " + selling_day.to_s)
    puts ("Profit will be:" + profit.to_s)
end

price_list = []
price_list=gets.chomp

find(price_list)
