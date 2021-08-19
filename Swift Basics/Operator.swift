//
//  Operator.swift
//  Swift Basics
//
//  Created by Herock Hasan on 18/8/21.
//

import Foundation
enum OperatorType {
    case add
    case subtract
    case multiply
    case division
}

    func applyOperator(_ num1 : Int, _ num2 : Int, _ operationType : OperatorType) -> Int {
        switch operationType {
        case .add:
            return num1 + num2
        case .subtract:
        return num1 - num1
        case .multiply:
        return num1 * num1
        case .division:
        return num1 / num1
       
        }
    }
    


