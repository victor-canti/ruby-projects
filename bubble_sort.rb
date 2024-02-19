def bubble_sort array 
    n = array.length

    while n > 0
        for i in 1..n-1 do
            if array[i-1] > array[i]

                stored_nums = [array[i], array[i-1]]
                array[i] = stored_nums[1]
                array[i-1] = stored_nums[0]

            end 
        end
        n -= 1
    end

    return array;
end

    p bubble_sort([4,3,78,2,0,2])
    #=> [0, 2, 2, 3, 4, 78]