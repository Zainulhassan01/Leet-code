# @param {String[]} queries
# @param {String[]} words
# @return {Integer[]}
def num_smaller_by_frequency(queries, words)
    final_arr = []
    count = 0
    queries.each do |query|
        max_count = max_char(query)
        words.each do |word|
            max_word_count = max_char(word)
            if max_count < max_word_count
                count = count + 1
            end
        end
        final_arr << count
        count = 0
    end
    final_arr
end

def max_char(word)
    count = 1
    array_word = word.split('')
    array_word.each do |wd|
        if word.count(wd) > count
            count = word.count(wd) 
        end
    end
    count
end
