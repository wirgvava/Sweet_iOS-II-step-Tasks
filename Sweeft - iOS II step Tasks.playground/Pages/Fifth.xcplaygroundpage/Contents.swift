// MARK: - მეხუთე ამოცანა
func minMeetingRooms(_ intervals: [[Int]]) -> Int {
    let n = intervals.count
    var startTimes = [Int]()
    var endTimes = [Int]()
    
    for i in 0..<n {
        startTimes.append(intervals[i][0])
        endTimes.append(intervals[i][1])
    }
    
    startTimes.sort()
    endTimes.sort()
    
    var roomsNeeded = 0
    var endIndex = 0
    
    for i in 0..<n {
        if startTimes[i] < endTimes[endIndex] {
            roomsNeeded += 1
        } else {
            endIndex += 1
        }
    }
    
    return roomsNeeded
}

minMeetingRooms([[0, 30],[5, 10],[15, 20]])
