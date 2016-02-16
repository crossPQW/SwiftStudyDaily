//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//定义了一个Velical的基类
class Velical {
    var speed = 0.0
    var description : String{
        return "trveal at \(speed) miles per hour"
    }
    
    func makeNoise() {
        
    }
}

let someVelical = Velical()
someVelical.speed = 100
print(someVelical.description)

//生成一个子类继承自Velical类
class Bicycle:Velical{
    var hasBcsyet:Bool = false
}

let someBicycle = Bicycle()
someBicycle.speed = 20
someBicycle.description

someBicycle.hasBcsyet

//生成一个新的子类继承自Bicycle
class Bike:Bicycle {
    var isNew:Bool = true
}

let someBike = Bike()
someBike.speed = 4.13
someBike.isNew = false
someBike.makeNoise()

//生成一个类继承自Velical,重写方法
class train: Velical {
    override func makeNoise() {
        print("呜~~~~")
    }
    
    func distanse()->Double{
        return self.speed * 100
    }
}

let someTrain = train()
someTrain.makeNoise()
someTrain.speed = 40
someTrain.distanse()

class Car: Velical {
    var xishu = 3.6
    override var description:String{
        return "trveal speed is \(super.speed * xishu)"
    }
}

let someCar = Car()
someCar.speed = 90
someCar.description

class AutomaticCar: Car {
    override var speed:Double{
        didSet{
            xishu = speed / 10 + 1
        }
    }
}

let autoCar = AutomaticCar()
autoCar.speed = 50
autoCar.xishu
