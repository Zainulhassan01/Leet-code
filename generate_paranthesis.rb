# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    str = ['(',')']
    arr_of_str = str.map { |str| str * n }
    array = arr_of_str.join().split('').permutation.map(&:join).uniq!
    count = 0
    temp = [ ]
    remove = false
    return ["()"] if n == 1
    return nil if n == 0
    array.each do |arr|
        to_check = arr.split('')
        to_check.each do |check|
            if count == 0 && check == ')'
                remove = true
                break
            end
            if check == '('
                count = count + 1
            elsif check == ')'
                count = count - 1
            end
            remove = false
        end
        unless count < 0 || remove
            temp.push(arr)
        end
        count = 0
    end
    return temp
end
