def stock_picker (prices)
    
    best_day = []
    profit = -100

    for i in 0..prices.length - 1 do
       for j in i + 1..prices.length - 1 do
    
            if (prices[j] - prices[i]) > profit
                profit = prices[j] - prices[i]
                best_day = [i,j]
            end

        end
    end

    return best_day
end

     stock_prices = [17,3,6,9,15,8,6,1,10]
     p stock_picker(stock_prices)
     #=> [1, 4]
