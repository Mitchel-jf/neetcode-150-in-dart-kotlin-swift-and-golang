package containsDuplicate

func containsDuplicate(nums []int) bool {
	

	store := make(map[int]bool)

	for _, v := range nums {
		if store[v] {
			return true
		}
		store[v] = true
	}

	return false

}
