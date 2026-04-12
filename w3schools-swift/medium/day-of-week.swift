/*
Convert a day number to a day name.

Instructions
Read a number from input (1 to 7).

Print the name of the day:

1 = Monday
2 = Tuesday
3 = Wednesday
4 = Thursday
5 = Friday
6 = Saturday
7 = Sunday
If the number is not 1-7, print Invalid.
*/

// let day = Int(readLine()!)!
// switch day {
// case 1:
//     print("Monday")
// case 2:
//     print("Tuesday")
// case 3:
//     print("Wednesday")
// case 4:
//     print("Thursday")
// case 5:
//     print("Friday")
// case 6:
//     print("Saturday")
// case 7:
//     print("Sunday")
// default:
//     print("Invalid")
// }

//////////////////////////////////////////////////////////////////////////////
let day = Int(readLine()!)!
let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
print(day >= 1 && day <= 7 ? days[day - 1] : "Invalid")
