// MARK: - მესამე ამოცანა
func wordBreak(_ s: String, _ words: [String]) -> Bool {
    var dp = Array(repeating: false, count: s.count + 1)
    dp[0] = true
    
    let set = Set(words)
    
    for i in 1...s.count {
        for j in 0..<i {
            let startIndex = s.index(s.startIndex, offsetBy: j)
            let endIndex = s.index(s.startIndex, offsetBy: i)
            let subString = String(s[startIndex..<endIndex])
            
            if dp[j] && set.contains(subString) {
                dp[i] = true
                break
            }
        }
    }
    
    return dp[s.count]
}

wordBreak("applepenapple", ["apple", "pen"])
