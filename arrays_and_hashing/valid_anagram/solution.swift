// compare the lengths of the strings, return false if they're not equal
// create one store to hold all the characters
// loop through a string and add all the characters there
// loop the second string and check if the characters exist, then minus

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count{
            return false
        }
        var store: [String:Int] = [:]

        for c in s{
            let b = String(c)
            if store[b] == nil{
                store[b] = 1
            }else{
                store[b]! += 1
            }
        }

        for c in t{
            let b = String(c)
            if store[b] == nil{
                return false
            }
            if store[b]! <= 0{
                return false
            }
            store[b]! -= 1
        }

        return true
    }
}