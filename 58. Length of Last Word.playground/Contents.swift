//Time Complexity: O(n) - n = s.count Worst Case: It will run for length of given string s.
//Space Complexity: O(1) - only 1 variable length is saved

//Puesdo Code:
//We reverse the given string.
//Then we use for loop on it and increment length each time char is found.
//Return length when whitespace is found but its not before the first word.

//Functions Used: .reversed()

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var length = 0
        let reversedStr = s.reversed()
        for char in reversedStr {
            if char != " " {
                length += 1
            }
            else if length > 0 {
                return length
            }
        }
        return length
    }
}
