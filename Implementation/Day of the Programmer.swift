import Foundation

/*
 * Complete the 'dayOfProgrammer' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts INTEGER year as parameter.
 */

func dayOfProgrammer(year: Int) -> String {
    // Write your code here
    let transitionYear = 1918
    let julianLeapYear = year % 4 == 0
    let greogrianLeapYear = (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0 )

    let leapYear = year < transitionYear ? julianLeapYear : greogrianLeapYear

    let feburaryDays = year == transitionYear ? 15 : (leapYear ? 29 : 28)

    let output = 256 - (31 + feburaryDays + 31 + 30 + 31 + 30 + 31 + 31)

    return "\(String(format: "%0.2d", output)).09.\(year)"
}

// Example usage:
print(dayOfProgrammer(year: 2017)) // "13.09.2017"
print(dayOfProgrammer(year: 2016)) // "12.09.2016"
print(dayOfProgrammer(year: 1918)) // "26.09.1918"