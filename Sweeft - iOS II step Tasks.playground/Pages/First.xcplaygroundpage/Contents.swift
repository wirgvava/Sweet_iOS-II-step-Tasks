// MARK: - პირველი ამოცანა
func lengthOfLongestSubstring(_ s: String) -> Int {
    var maxLength = 0
    var startIndex = 0
    var charIndexMap: [Character : Int] = [:]
    
    for (currentIndex, char) in s.enumerated() {
        if let prevIndex = charIndexMap[char], prevIndex >= startIndex {
            startIndex = prevIndex + 1
        }
        maxLength = max(maxLength, currentIndex - startIndex + 1)
        charIndexMap[char] = currentIndex
    }
    
    return maxLength
}

lengthOfLongestSubstring("abcabcbb")
