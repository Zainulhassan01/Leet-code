# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def get_common(nums1, nums2)
   if nums1.length >= 1 && nums2.length <= 10 ** 5
      common = nums1 & nums2 
      return common.min if common.length > 0
      return -1
    end
end
