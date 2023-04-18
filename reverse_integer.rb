# @param {Integer} x
# @return {Integer}
def reverse(num)
    add_exp = false
    str = num.to_s
    if num < 0
        puts "num: #{num}"
        str = str.delete!(str.first)
        add_exp = true
    end
    reverse = str.reverse
    reverse.insert(0, "-") if add_exp
    reverse.to_i
end
