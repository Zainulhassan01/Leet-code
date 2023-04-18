# @param {String[]} nums
# @param {Integer[][]} queries
# @return {Integer[]}
def smallest_trimmed_numbers(nums, queries)
    trimmed_array = []
    final_array = []
    queries.each do |query|
        smallest_num = query.first
        trim_num = query.last
        nums.each do |num|
            trimmed_array.push(num.last(trim_num))
        end
        puts trimmed_array
        if trimmed_array.uniq.length == trimmed_array.length
            index = trimmed_array.find_index(trimmed_array.min(smallest_num).last)
        else
            smallest_ind = trimmed_array.min(smallest_num).last
            indexes = trimmed_array.each_index.select { |i| trimmed_array[i]== smallest_ind }
            index = indexes.last
        end
        final_array << index
        trimmed_array = []
    end
    final_array
end
