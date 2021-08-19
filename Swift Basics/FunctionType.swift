//
//  FunctionType.swift
//  Swift Basics
//
//  Created by Herock Hasan on 18/8/21.
//
/*
 Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.
 */
import Foundation

class FunctionInro
{

    var someInt = 3
    var anotherInt = 107
    
    init() {
        swapTwoInts(&someInt, &anotherInt)
        print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
        
    }
    func greet(person: String, alreadyGreeted: Bool) -> String {
        
        if alreadyGreeted {
            return greetAgain(person: person)
        } else {
            return greet(person: person, alreadyGreeted: true)
        }
    }
    
    func greetAgain(person: String) -> String {
        return "Hello again, " + person + "!"
    }
    
    /*
     Specifying Argument Labels
     You write an argument label before the parameter name, separated by a space:
     */
    
    func greet(person: String, from hometown: String) -> String {
        return "Hello \(person)!  Glad you could visit from \(hometown)."
    }
   // print(greet(person: "Bill", from: "Cupertino"))
    
    /*
     Omitting Argument Labels
     If you don’t want an argument label for a parameter, write an underscore (_) instead of an explicit argument label for that parameter.
     
     */
    
    func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
        // In the function body, firstParameterName and secondParameterName
        // refer to the argument values for the first and second parameters.
    }
   // someFunction(1, secondParameterName: 2)

    /*
     Default Parameter Values

     You can define a default value for any parameter in a function by assigning a value to the parameter after that parameter’s type. If a default value is defined, you can omit that parameter when calling the function.
     */
    
    func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
        // If you omit the second argument when calling this function, then
        // the value of parameterWithDefault is 12 inside the function body.
    }
  //  someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
 //   someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12
    
    /*
     In-Out Parameters

     Function parameters are constants by default. Trying to change the value of a function parameter from within the body of that function results in a compile-time error. This means that you can’t change the value of a parameter by mistake. If you want a function to modify a parameter’s value, and you want those changes to persist after the function call has ended, define that parameter as an in-out parameter instead.
     */
    
    func swapTwoInts(_ a: inout Int, _ b: inout Int) {
        let temporaryA = a
        a = b
        b = temporaryA
        a = 27 + a
    }


}
