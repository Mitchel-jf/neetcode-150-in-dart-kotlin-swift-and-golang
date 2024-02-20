class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var store: [Int: Int] = [:]
        for n in nums {
            if store[n] != nil{
                return true
            }
            store[n] = 1
        }
        return false
    }
}