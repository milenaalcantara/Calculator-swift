import Foundation

let calculator = Calculator()
print("10 + 2 = \(calculator.calculate(a: 10, b: 2, operation: .sum))")
print("10 - 2 = \(calculator.calculate(a: 10, b: 2, operation: .subtraction))")
print("10 * 2 = \(calculator.calculate(a: 10, b: 2, operation: .multiplication))")
print("10 / 2 = \(calculator.calculate(a: 10, b: 2, operation: .division))")