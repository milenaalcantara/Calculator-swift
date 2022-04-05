import Foundation

enum Operation{
    case sum
    case subtraction
    case multiplication
    case division
}

class Calculator{

    func sum(a: Double, b: Double) -> Double {
        return a + b
    }

    func subtraction(a: Double, b: Double) -> Double {
        return a - b
    }

    func multiplication(a: Double, b: Double) -> Double {
        return a * b
    }

    func division(a: Double, b: Double) -> Double {
        return a / b
    }

    func calculate(a: Double, b: Double, operation: Operation) -> Double {
        switch operation{
            case .sum:
                return sum(a: a, b: b)
            case .subtraction:
                return subtraction(a: a, b: b)
            case .multiplication:
                return multiplication(a: a, b: b)
            case .division:
                return division(a: a, b: b)
        }
    }
}