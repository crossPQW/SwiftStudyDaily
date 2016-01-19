//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//下标

struct TimesTable {
    let a :Int
    subscript(number:Int) -> Int{
        return number * a
    }
}

let b = TimesTable(a: 5)
b[4]

var person = ["name":"Jam", "age": 3]
person["age"]

struct Matrix {
    
    let rows:Int, coms:Int
    var grid: [Double]
    
    init(rows:Int ,coms:Int){
        self.rows = rows
        self.coms = coms
        
        grid = Array(count: rows * coms, repeatedValue: 0)
    }
    
    func indexIsVaildForRow(row:Int, com:Int) -> Bool{
        return rows >= 0 && row < rows && com >= 0 && com < coms
    }
    
    subscript(row:Int, com:Int) -> Double{
        get{
            return grid[(row * coms) + com]
        }
        set{
            grid[(row * coms) + com] = newValue
        }
    }
}

var matrix = Matrix(rows: 3, coms: 5)

//let someValue = matrix[10, 10]