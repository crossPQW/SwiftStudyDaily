//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum someenum
{
    case north
    case sourth
    case east
    case west
}

enum zimu {case a,b,s,d,f,g,qw,et}

var zimua = zimu.a

var bei   = someenum.north

bei = .north

enum barCode {
    case UPCA (Int, Int, Int, Int)
    case QRCode(String)
}

var pbarcode = barCode.UPCA(1, 2, 3, 4)
pbarcode = .QRCode("sadasdasdsadasd")

switch pbarcode{
case .UPCA(let a,let b,let c,let d):
    print("UPCA")
case .QRCode(let str):
    print("QRCode")
    pbarcode
    print(str)
}

enum cup:Int{
    case a = 34
    case b = 35
    case c = 36
    case d = 37
}

enum zimubiao:Int{
    case a = 0,b,c,d,e
}

zimubiao.c.rawValue
zimubiao.e.rawValue

enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

Planet.Mercury.rawValue
Planet.Earth.rawValue

let sum = Planet.Mercury.rawValue + Planet.Mars.rawValue

enum girlCup :Int{
    case acup = 35,bcup,ccup,dcup,ecup
}

girlCup.ccup.rawValue
girlCup.dcup.hashValue

let fcup = girlCup(rawValue: 36)
fcup
girlCup.dcup.rawValue

if let possiblecup = girlCup(rawValue: 40)
{
    switch possiblecup{
    case girlCup.dcup:
        print("find")
    default:
        print("notfound")
    }
}else{
    print("hahahaha")
}

