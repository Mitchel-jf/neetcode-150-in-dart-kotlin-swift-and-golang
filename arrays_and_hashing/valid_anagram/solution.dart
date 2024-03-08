void main() {
  var s = Solution();

  bool isAnagram = s.isAnagram("abcde", "edcba");
  print(isAnagram);
}


// Harder Solution
// - check their length, if it's not the same return false
// - reduce s into a list of letters (except you can loop through a string)
// - create a map that will store the string characters as keys and the corresponding count as values
// - loop through s and store the count of each letter in a map
// - loop through the t and compare the count to t to the store
class Solution {
  bool isAnagram(String s, String t) {
   

    if (s.length != t.length) return false;
    final store = <String, int>{};

    for (int i = 0; i < s.length; i++) {
      String a = s[i];
      store[a] = (store[a] ?? 0) + 1;
    }

    for (int i = 0; i < t.length; i++) {
      String b = t[i];
      if (store[b] == null) return false;
      if (store[b]! <= 0) return false;
      store[b] = store[b]! - 1;
    }
    return true;
  }
}
