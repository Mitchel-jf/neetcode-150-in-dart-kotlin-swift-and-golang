// create a store (map) that holds the value to index, v->k
// run a loop on nums
// check if the difference between target and current index is in the store
// if it is, return the indices

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final store = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
      final dif = target - nums[i];
      if (store[dif] != null) {
        return [store[dif]!, i];
      }
      store[nums[i]] = i;
    }
    return [];
  }
}
