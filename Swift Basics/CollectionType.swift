//
//  CollectionType.swift
//  Swift Basics
//
//  Created by Herock Hasan on 18/8/21.
//

import Foundation


class CollectionIntro {
    
    func arryIntro() ->[ Any] {
        let threeDoubles = Array(repeating: 0.0, count: 3)
        return threeDoubles
    }
    
    func iterateArray()  {
        var shoppingList = ["Eggs", "Milk"]
        shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
        for item in shoppingList {
            print(item)
        }

    }
    
    /*
     
     Use the intersection(_:) method to create a new set with only the values common to both sets.
     Use the symmetricDifference(_:) method to create a new set with values in either set, but not both.
     Use the union(_:) method to create a new set with all of the values in both sets.
     Use the subtracting(_:) method to create a new set with values not in the specified set.

     */
    func setIntro()
    {
        let oddDigits: Set = [1, 3, 5, 7, 9]
        let evenDigits: Set = [0, 2, 4, 6, 8]
        let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

        print("Unition",oddDigits.union(evenDigits).sorted())
        // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        print("Interserction",oddDigits.intersection(evenDigits).sorted())
        // []
        print("subtracting",oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
        // [1, 9]
        print("Symmetric",oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

    }
    
    /*
     Dictionaries

     A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary
     */
    
    func dictionaryIntro()  {
    var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
    }
}



