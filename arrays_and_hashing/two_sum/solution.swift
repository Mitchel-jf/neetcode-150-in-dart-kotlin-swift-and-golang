class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // create a hashmap to hold values against indices
        // loop through nums
        // check if the complement of target is in hashmap
        // add the current item to the hashmap
        var store: [Int : Int] = [:]
        for (i,v) in nums.enumerated(){
            let complement = target - v
            if store[complement] != nil{
                return [store[complement]!, i]
            }
            store[v] = i
        }
        return []
    }
}