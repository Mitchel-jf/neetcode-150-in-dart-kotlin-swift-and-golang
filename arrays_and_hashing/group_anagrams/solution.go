package main

import (
	"sort"
)

func groupAnagrams(strs []string) [][]string {
    // create a hasmap of string -> string array
    // loop through strs, and sort each str
    // check if the sorted str is in the hashmap
    // if it is, append the str to the existing array
    // else put it as an array in the map
    // return the values of the map

    store := map[string][]string{}
    result := [][]string{}
    for _, v := range strs {
        sorted := SortString(v)
        store[sorted] = append(store[sorted], v)
    }

    for _, v := range store {
        result = append(result, v)
    }
    return result

}

type sortRunes []rune

func (s sortRunes) Less(i, j int) bool {
    return s[i] < s[j]
}

func (s sortRunes) Swap(i, j int) {
    s[i], s[j] = s[j], s[i]
}

func (s sortRunes) Len() int {
    return len(s)
}

func SortString(s string) string {
    r := []rune(s)
    sort.Sort(sortRunes(r))
    return string(r)
}
