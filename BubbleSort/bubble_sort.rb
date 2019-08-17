def bubble_sort(arr)
    j = 0
    while j < arr.size
        temp = 0
        i = 0
        while i < arr.size-1
            if arr[i] > arr[i+1]
                temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
            end
             
            i+=1
        end

        j+=1
    end
    puts arr.join(",")
end


def bubble_sort_by (arr)
    j = 0
    while j < arr.size
        temp = 0
        i = 0
        while i < arr.size-1
            if yield(arr[i],  arr[i+1])>0
                temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
            end
             
            i+=1
        end

        j+=1
    end

    puts arr.join(",")
end

bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","fuck", "do", "me", "Solar", "hey"]) do |left,right|
    left.length - right.length
end