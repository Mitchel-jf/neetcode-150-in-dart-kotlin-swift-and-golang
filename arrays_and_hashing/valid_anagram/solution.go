package main

import "fmt"

func main(){
	 a := isAnagram("abcde", "edcba")
	 fmt.Println(a)
}
// the steps is in steps.md
func isAnagram(s, t string) bool {
	if len(s) != len(t) {
		return false
	}
	sMap := make(map[string]int)
	tMap := make(map[string]int)

	for  i := 0; i < len(s); i++  {
		sMap[string(s[i])]++
		tMap[string(t[i])]++
	}

	for i := 0; i < len(s); i++{
		c := string(s[i])
		if sMap[c] != tMap[c] {
			return false
		}
	}

	return true
}
