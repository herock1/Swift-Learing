//
//  ClosourType.swift
//  Swift Basics
//
//  Created by Herock Hasan on 20/8/21.
//

import Foundation

class ClosourType
{
    init() {
        
        var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        names.sort(by: backward(_:_:))
        print(names)
        
        let reserveNames  = names.sorted(by: {(s1: String , s2 : String)->Bool in
                                           return s1 > s2 })
        print(reserveNames)
        
       
    }
    
    func callClosour()
    {
        
        someFunctionWithEscapingClosure { _output in
            print(_output)
        }
    }
    
    func backward(_ s1: String, _ s2: String) -> Bool {
        return s1 < s2
    }
    
    func someFunctionWithEscapingClosure(completionHandler: @escaping (String) -> Void) {
        
        
        
            // your code here {
                completionHandler("Hello I am escaping closour")
            // then call }
    }


    
}
