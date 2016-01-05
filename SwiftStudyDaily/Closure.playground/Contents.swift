//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let names = ["111","222","333","444","555"]

func backards(s1:String,s2:String) -> Bool{
    return s1 > s2
}

var reverseds = names.sort(backards)

reverseds = names.sort({
    (s1:String,s2:String) -> Bool in
    s1 > s2
})

///所有的类型都可以被推断正确,所以参数类型不需要写,参数的小括号也不需要,返回值箭头也不需要了
reverseds = names.sort({ s1,s2 in return s1 > s2 })

//单表达式闭包隐式返回,即这个时候可以省略return关键字
reverseds = names.sort({ s1,s2 in s1 > s2 })

//swift自动为内联闭包提供了参数缩写的功能,可以直接通过$0,$1,$2来顺序调用闭包的参数,这时候in关键字也可以省略
reverseds = names.sort({ $0 > $1 })

//运算符函数
//swift中string类型定义了>的字符串实现,它接收俩字符串返回一个bool值跟sort()方法参数类型一致,因此可以简单的传递一个>号,swift自动判断实现
reverseds = names.sort(>)

func someFuncThatTakeAClosure(closure: () -> Void){
    //函数体
}

someFuncThatTakeAClosure({//不使用尾随闭包进行函数调用
    //闭包主体部分
})

someFuncThatTakeAClosure(){//使用尾随闭包进行函数调用
    //闭包主体部分
}

reverseds = names.sort(){ $0 > $1}
reverseds = names.sort{ $0 > $1 }

let digitNames = [0: "零", 1: "壹", 2: "二",   3: "三", 4: "四",
    5: "五", 6: "六", 7: "⑦", 8: "⑧", 9: "9⃣️"
]

let numbers = [16,58,520]
let strings = numbers.map({
    (var number) -> String in
    var output = ""
    while number > 0{
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
})
print(strings)

func makeIncrementor(forIncrementor amount: Int) -> () ->Int{
    var runningTotal = 0
    func incrementot() -> Int{
        runningTotal += amount
        return runningTotal
    }
    return incrementot
}

let incrementorBy10 = makeIncrementor(forIncrementor: 10)
incrementorBy10()
incrementorBy10()
incrementorBy10()

let incrementorBy7 = makeIncrementor(forIncrementor: 7)
incrementorBy7()
incrementorBy7()
incrementorBy7()

incrementorBy10()

let alsoIncrementorBy10 = incrementorBy10
alsoIncrementorBy10()

///无法逃逸,意味着闭包不能在函数返回之后执行
func noEscapeClosure (@noescape closure: () -> Void){
    closure()
}

var completedHandles :[() -> Void] = []
func escapeClosure(completedHandle: () -> Void){
    completedHandles.append(completedHandle)
}

class comeClass {
    var x = 10
    func doSomething (){
        
        escapeClosure{self.x = 100}
        x

        noEscapeClosure({
            self.x = 200
        })
        x
    }
}

let instance = comeClass()
instance.doSomething()
print(instance.x)

completedHandles.first?()
instance.x

//闭包延时求值
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
customersInLine.count

let customersProvider = {customersInLine.removeAtIndex(0)}
customersInLine.count

//闭包调用之前,并不会移除
customersProvider()
customersInLine.count


func ahaha(customersProvider: ()-> String){
    customersProvider()
}

//ahaha({
//    customersInLine.removeAtIndex(0)
//})
ahaha(){
    customersInLine.removeAtIndex(0)
}
customersInLine.count

customersInLine

func autoClosure(@autoclosure customersProvider:() ->String){
    customersProvider()
}
autoClosure(customersInLine.removeAtIndex(0))
customersInLine

var customerProviders :[() ->String] = []
func collectCustomerProviders(@autoclosure(escaping) customersProvider: ()-> String){
    customerProviders.append(customersProvider)
}

collectCustomerProviders(customersInLine.removeAtIndex(0))
collectCustomerProviders(customersInLine.removeAtIndex(0))
customersInLine

for customersProvider in customerProviders{
    print(customersProvider() )
}





