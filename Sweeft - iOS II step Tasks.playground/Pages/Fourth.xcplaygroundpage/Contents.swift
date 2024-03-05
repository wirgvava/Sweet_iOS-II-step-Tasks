// MARK: - მეოთხე ამოცანა
func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var frequencyDict = [Int: Int]()
    
    for num in nums {
        frequencyDict[num, default: 0] += 1
    }
    
    let sortedNums = frequencyDict.keys.sorted { frequencyDict[$0]! > frequencyDict[$1]! }
    var result = Array(sortedNums.prefix(k))
    
    return result
}


topKFrequent([1,1,1,2,2,3], 2)
