let total = Int(readLine()!)!

let hours = total / 3600
let minutes = (total % 3600) / 60
let seconds = total % 60

print("\(hours)h \(minutes)m \(seconds)s")
