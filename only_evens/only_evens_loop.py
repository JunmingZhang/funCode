def only_evens(lst):
	result = []
	for subList in lst:
		ind = 0
		while ind < len(subList) \
				and subList[ind] % 2 == 0:
			ind += 1
		if ind == len(subList):
			result.append(subList)
	return result

if __name__ == "__main__":
	print(only_evens([[1, 2, 4], [4, 0, 6], [22, 4, 3], [2]]))
				