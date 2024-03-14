class Solution {
    fun twoSum(nums: IntArray, target: Int): IntArray {
        // create a map called store
        // loop through nums
        // get the diff between target and nums[i]
        // check if diff exists in store
        // return the indices
        var store: MutableMap<Int,Int> = mutableMapOf()
        for (i in nums.indices ){
            val dif = target - nums[i]
            if (store[dif] != null){
                return intArrayOf(store[dif]!!, i)
            }
            store[nums[i]] = i
        }
        return intArrayOf(0,0)
    }
}