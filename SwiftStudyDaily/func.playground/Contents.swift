//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sayHelloTo(sb : String) -> String{
    
    let result = "hello " + sb + " !"
    return result
}

sayHelloTo("huangshaohua")
print(sayHelloTo("niubi"))

func sbSayHelloTo(var sb: String,to: String) -> String{
    sb = "sb"
    let result = sb + " say " + sayHelloTo(to)
    return result
}

sbSayHelloTo("huangshaohua", to:"shenqian")

sbSayHelloTo("hello", to: "shenqian")

func jiajian(a:Int,b:Int) -> (jia:Int,jian:Int){
    return (a + b, a - b)
}

let (a, b) = jiajian(10, b: 20)
print(a, b)

//一个找出数组最大值与最小值的方法
func minandmax(array :[Int]) -> (min:Int,max:Int)? {
    if array.isEmpty {
        return nil
    }
    var minValue = array[0]
    var maxValue = array[0]
    for number in array{
        if minValue < number{
            minValue = number;
        }else if maxValue > number{
            maxValue = number
        }
    }
    
    return (minValue, maxValue)
}

minandmax([100,200,3,1,4,5,-2])
minandmax([])

func sayHello(to person:String,and otherperson:String){
    print("hello \(person), \(otherperson)")
}

sayHello(to: "shenqian", and: "huangshaohua")

func example(a:Int,_ b:Int){
    
}
example(1, 2)

//可以给函数添加带默认值的参数
func sayFuck(to person:String, and otherperson :String = "you"){
    print("fuck \(person) + \(otherperson)")
}
sayFuck(to: "lalala")


//一个求平均数的函数,可以接受可选数量的参数,需要在参数后面加...
func arithmeticMean(numbers:Double...) -> Double{
    var total:Double = 0
    for number in numbers{
        total += number
    }
    return total / Double(numbers.count)
}
//调用的时候随便传入几个参数
arithmeticMean(1,2,3,4,5,6)

func changerParams(var a:String,b:String){
    a += " test "
    print(a + b)
}
changerParams("a", b: "b")


//输入输出参数
func swipInts(inout a:Int, inout _ b:Int){
    let tempint = a
    a = b
    b = tempint
}

var someint = 3
var otherint = 4
//调用输入输出函数需要在参数前加&
swipInts(&someint, &otherint)
print(someint,otherint)

func addTwoInts(a:Int,b:Int) ->Int{
    return a + b
}
//定义一个函数类型为上面那个函数
var mathfunc: (Int, Int) -> Int = addTwoInts
mathfunc(2, 4)
print("result : \(mathfunc(2, 5))")

let otherMathFunc = mathfunc
print("result is \(otherMathFunc(3, 8))")


func printMathFunc(otherMathFunc:(Int,Int)->Int, _ a:Int,_ b:Int){
    print(otherMathFunc(a,b))
}
printMathFunc(addTwoInts, 100, 200)

//func stepForward(input: Int) -> Int {
//    return input + 1
//}
//func stepBackward(input: Int) -> Int {
//    return input - 1
//}
//func chooseFunc(type:Bool) -> (Int) ->Int{
//    return type ? stepBackward : stepForward
//}
//
//var currentValue = 3
//let moveNearZero = chooseFunc(currentValue > 0)
//while currentValue != 0{
//    print(currentValue)
//    currentValue = moveNearZero(currentValue)
//}
//print("zero")

func chooseStep(back : Bool) -> (Int) ->Int{
    func stepBack(input:Int) ->Int{
        return input - 1
    }
    func stepForward(input:Int)->Int{
        return input + 1
    }
    return back ? stepForward : stepBack
}

var currentValue = 3
let moveToZero = chooseStep(currentValue < 0)
while currentValue != 0{
    print(currentValue)
    currentValue = moveToZero(currentValue)
}
print("0")