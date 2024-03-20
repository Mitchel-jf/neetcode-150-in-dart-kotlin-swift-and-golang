// my solution
class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    var store = <String, List<String>>{};
    for (final str in strs) {
      var sortedStr = sortString(str);
      if (store[sortedStr] != null)
        store[sortedStr]!.add(str);
      else
        store[sortedStr] = [str];
    }
    return store.values.toList();
  }

  String sortString(String str) {
    var arr = str.split("");
    arr.sort();
    return arr.join();
  }
}

// best performance
// class Solution {
//   List<List<String>> groupAnagrams(List<String> strs) {
//     Map<String, List<String>> result = {};
//     while (strs.length > 0) {
//       String str = strs.removeLast();
//       result.update(
//         (str.split('')..sort()).join(),
//         (value) => value..add(str),
//         ifAbsent: () => [str],
//       );
//     }

//     return result.values.toList();
//   }
// }
