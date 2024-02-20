class Solution {
  bool containsDuplicate(List<int> nums) {
    // use a map, store, to hold values that have been checked
    // loop through nums and add each checked value to store
    // in the loop always check whether store has value first before adding
    // if there's value return true and break out of the loop
    // else return false at the end of the loop

    var store = <int, bool>{};

    for (final value in nums) {
      if (store[value] == true) return true;
      store[value] = true;
    }

    return false;
  }
}
