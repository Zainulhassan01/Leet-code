# @param {String[]} products
# @param {String} search_word
# @return {String[][]}
def suggested_products(products, search_word)
    search_array , word_by_word = [],[]
    search_word.split('').each_with_index do |word, index|
        products.each do |product|
            word_by_word << product if product.include?(search_word.slice(0,index+1))
        end
        search_array << word_by_word.sort.first(3)
        word_by_word = []
    end
    search_array
end
