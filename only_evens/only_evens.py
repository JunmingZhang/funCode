def only_evens(lst):
	def helper(ind=0, result=[]):
		if ind == len(lst):
			return result
		else:
			res = subHelper(lst[ind], len(lst[ind]))
			if res:
				result.append(lst[ind])
			return helper(ind + 1, result)
	def subHelper(subList, n):
		if n == 0:
			return True
		else:
			if subList[n - 1] % 2 == 0:
				return subHelper(subList, n - 1)
			return False
	return helper(0, [])

if __name__ == "__main__":
	print(only_evens([[1, 2, 4], [4, 0, 6], [22, 4, 3], [2]]))