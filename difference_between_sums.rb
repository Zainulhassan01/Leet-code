# @param {Integer[]} nums
# @return {Integer}
def difference_of_sum(nums)
    sum = nums.sum
    digit_sum = 0
    nums.each do |num|
        digit_sum = digit_sum + num.digits.sum
    end
    difference = sum - digit_sum
    difference
end
