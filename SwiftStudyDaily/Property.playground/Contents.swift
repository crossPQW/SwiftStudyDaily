//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct lengRang {
    var firstValue:Int
    let lenght :Int
}

var rangOfThree = lengRang(firstValue: 0, lenght: 3)

rangOfThree.firstValue = 7

var rangOfFour = lengRang(firstValue: 0, lenght: 4)

rangOfFour.firstValue = 5

class DataImport {
    var fileName = "name.file"
}

class DataManager {
    lazy var dataImport = DataImport()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("somedata")
manager.data.append("some mode data")

//只在用的时候才初始化lazy声明的属性,多个线程同时访问的时候无法保证只初始化一次
manager.data.append(manager.dataImport.fileName)

struct SomePoint {
    var x = 0.0
    var y = 0.0
}

struct SomeSize {
    var width = 0.0
    var height = 0.0
}

struct SomeRect {
    var origin = SomePoint()
    var size = SomeSize()
    var center: SomePoint{
        get{
            let centerX = origin.x + size.width * 0.5
            let centerY = origin.y + size.height * 0.5
            return SomePoint(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - size.width * 0.5
            origin.y = newCenter.y - size.height * 0.5
        }
    }
}

var squre = SomeRect(origin: SomePoint(x: 0, y: 0), size: SomeSize(width: 100, height: 100))

let initSqure = squre.center

squre.center = SomePoint(x: 20, y: 20)

squre.origin.x
squre.origin.y

struct newRect {
    var origin = SomePoint()
    var size = SomeSize()
    var center:SomePoint{
        get{
            let centerX = origin.x + size.width * 0.5
            let centerY = origin.y + size.height * 0.5

            return SomePoint(x: centerX, y: centerY)
        }
        set{
            origin.x = newValue.x - size.width * 0.5
            origin.y = newValue.y - size.height * 0.5
        }
    }
}

//只读属性,省略set方法,get方法花括号
struct Cuboid{
    var width = 0.0
    var height = 0.0
    var depth = 0.0
    var volume:Double{
        return width * height * depth
    }
}

class StepCounter {
    var totalStep: Int = 0{
        willSet{
            print("newValue == \(newValue)")
        }
        didSet{
            if totalStep > oldValue{
//                totalStep = 99 这里赋值的话,oldvalue永远是这个值
                print("oldValue == \(oldValue)")
            }
        }
    }
}

let step = StepCounter()
step.totalStep = 100
step.totalStep = 200
step.totalStep = 300


//类型属性
struct SomeStructure
{
    static var storeTypeProperty = "some value"
    static var computedTypeProperty: Int {
        return 1
    }
}

enum someEnumerator{
    static var storeTypeProperty = "some value"
    static var computedTypeProperty: Int {
        return 2
    }
}

class SomeClass {
    static var storeTypeProperty = "some value"
    static var computedTypeProperty: Int {
        return 3
    }
    class var ovrideableComputedTypeProperty:Int {
        return 4
    }
}

class OtherClass:SomeClass {
    override class var ovrideableComputedTypeProperty:Int{
        return 5
    }
}



SomeStructure.storeTypeProperty
SomeStructure.computedTypeProperty
someEnumerator.storeTypeProperty
someEnumerator.computedTypeProperty
SomeClass.storeTypeProperty
SomeClass.computedTypeProperty
SomeClass.ovrideableComputedTypeProperty


OtherClass.ovrideableComputedTypeProperty
SomeClass.ovrideableComputedTypeProperty
print("\(OtherClass.ovrideableComputedTypeProperty),\(SomeClass.ovrideableComputedTypeProperty)")


struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLavelForAllChannel = 0
    var currentLavel: Int = 0{
        didSet{
            if currentLavel > AudioChannel.thresholdLevel{
                currentLavel = AudioChannel.thresholdLevel
            }
            if currentLavel > AudioChannel.maxInputLavelForAllChannel{
                AudioChannel.maxInputLavelForAllChannel = currentLavel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLavel = 7
leftChannel.currentLavel
AudioChannel.maxInputLavelForAllChannel
rightChannel.currentLavel

rightChannel.currentLavel = 13
rightChannel.currentLavel
AudioChannel.maxInputLavelForAllChannel

