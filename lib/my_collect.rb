def my_collect(array)
    if block_given?
        counter = 0
        collection = []
        while counter < array.length
            collection << yield(array[counter])
            counter+=1
        end
        collection
    else 
        puts "Block not given!"
    end
end

languages = ["ruby","javascript","python","objective-c"]
my_collect(languages) do |lang|
    lang.upcase
end

