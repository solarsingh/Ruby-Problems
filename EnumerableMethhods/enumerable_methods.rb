module Enumerable 
    def my_each
        i = 0
        while i<self.size
            yield(self[i])
            i+=1
        end
    end

    def my_each_with_index
        i=0
        while i<self.size 
            yield(i, self[i])
            i+=1
        end
    end

    def my_select
        selection = []
        self.my_each do |element|
            if yield(element) == true 
               selection << element
            end
        end
        return selection
    end

    def my_all? 
        bool = true
        count = 0
        self.my_each do |element|
            if yield(element) == true 
                count+=1
            end
        end
        bool = false if count < self.size
        return bool
    end

    def my_any? 
        bool = true
        count = 0
        self.my_each do |element|
            if yield(element) == true
                count+=1
            end
        end
        bool = false if count == 0
        return bool
    end

    def my_none? 
        bool = true
        count = 0
        self.my_each do |element|
            if yield(element) == false
                count+=1
            end
        end
        bool = false if count < self.size
        return bool
    end

    def my_count
        count = 0
        self.my_each do |element|
            if yield(element) == true || yield(element) == nil
                count+=1
            end
        end
        return count
    end

    def my_map 
        value = 0
        arr = []
        self.my_each do |element|
            value = yield(element)
            # value = (&do_something(element))
            arr<<value
        end
        return arr
    end

    def my_inject
        result = 0
        self.my_each do |element|
            result = yield(result, element)
        end

        self[0]!=nil ? result = result : result = nil
        return result
    end

end

