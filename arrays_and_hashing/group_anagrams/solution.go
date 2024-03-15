package groupAnagrams

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

    store := make(map[string][]string)

    for _, v := range strs {
		sort.Sort()
    }
}

// how can I create a sorting algorithm