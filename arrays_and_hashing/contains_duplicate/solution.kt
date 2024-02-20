class Solution {
    fun containsDuplicate(nums: IntArray): Boolean {
    // use a map, store, to hold values that have been checked
    // loop through nums and add each checked value to store
    // in the loop always check whether store has value first before adding
    // if there's value return true and break out of the loop
    // else return false at the end of the loop

    val store = mutableMapOf<Int, Int>()
    for (n in nums){
        if (store[n] != null){
            return true
        }
        store[n] = n
    }
    return false

    }
}