# @param {Integer} n
# @return {Integer}
def alternate_digit_sum(n)
    numb = n.digits.reverse
    sum = 0
    numb.each_with_index do |num, ind|
        if ind % 2 == 0
            sum = sum + num
        else
            sum = sum - num
        end
    end
    sum
end
