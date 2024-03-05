// MARK: - მეორე ამოცანა
func minWindow(_ s: String, _ t: String) -> String {
    var charCount = [Character: Int]()
    var left = 0
    var minLen = Int.max
    var minStart = 0
    var count = t.count
    
    for char in t {
        charCount[char, default: 0] += 1
    }
    
    for (right, char) in s.enumerated() {
        if let charCountValue = charCount[char] {
            if charCountValue > 0 {
                count -= 1
            }
            
            charCount[char] = charCountValue - 1
        }
        
        while count == 0 {
            if right - left < minLen {
                minLen = right - left
                minStart = left
            }
            
            let leftChar = s[s.index(s.startIndex, offsetBy: left)]
            if let charCountValue = charCount[leftChar] {
                charCount[leftChar] = charCountValue + 1
                
                if charCountValue == 0 {
                    count += 1
                }
            }
            
            left += 1
        }
    }
    
    if minLen != Int.max {
        let start = s.index(s.startIndex, offsetBy: minStart)
        let end = s.index(start, offsetBy: minLen + 1)
        return String(s[start..<end])
    } else {
        return ""
    }
}

minWindow("ADOBECODEBANC", "ABC")
