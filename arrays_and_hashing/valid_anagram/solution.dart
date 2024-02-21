class Solution {
  bool isAnagram(String s, String t) {
    // check their length, if it's not the same return false
    // reduce s into a list of letters
    // loop through s and store the count of each letter in a map
    // loop through the map and compare the count to t

    if (s.length != t.length) return false;
    final sArr = s.split("");

    final store = <String, int>{};
    for (var a in sArr) {
      if (store[a] == null)
        store[a] = 1;
      else
        store[a] = store[a]! + 1;
    }

    final tArr = t.split("");
    for (var b in tArr) {
      if (store[b] == null) return false;
      if (store[b]! <= 0) return false;
      store[b] = store[b]! - 1;
    }
    return true;
  }
}
