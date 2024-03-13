package twoSum

// steps
// create a store to hold the values mapped to the index of nums
// loop through nums
// check the store first for the difference of target and nums[index]
// if it exists, return the indices and end the program
func twoSum(nums []int, target int) []int {
	store := make(map[int]int)
    for i,v := range nums{
        dif := target - v
        if j, ok := store[dif]; ok{
            return []int{j, i}
        }
        store[v] = i
    }
    return []int{}
}