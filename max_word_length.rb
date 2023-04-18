# @param {String[]} words
# @return {Integer}
def max_product(words)
    greater = 0
    words.each do |word|
        words.each do |word2|
            if word != word2 && word.count(word2) == 0 && word.length * word2.length > greater
                greater = word.length * word2.length
            end
        end
    end
    greater
end
