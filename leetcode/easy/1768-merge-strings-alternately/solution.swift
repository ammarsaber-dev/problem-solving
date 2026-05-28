// https://leetcode.com/problems/merge-strings-alternately/

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var final = ""

    let w1Array = Array(word1)
    let w2Array = Array(word2)

    for i in 0 ..< max(w1Array.count, w2Array.count) {
        if i < w1Array.count {
            final.append(w1Array[i])
        }

        if i < w2Array.count {
            final.append(w2Array[i])
        }
    }

    return final
}

print(mergeAlternately("abc", "def")) // "adbecf"
