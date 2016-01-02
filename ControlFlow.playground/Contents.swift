//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//for 循环
for var a = 0; a < 5; ++a{
    print("\(a) times is \(a)")
}

for a in 1...5{
    print("\(a) times is \(a)")
}

let base = 3
let time = 10
var answer = 1

for _ in 1...time{
    answer *= base
}

var index :Int
for index = 0; index < 3; ++index{
    index
}
index


//let finaleCount = 25
//var board = [Int](count: finaleCount + 1, repeatedValue: 0)
//board[3] = 3
//board[6] = 11
//board[9] = 9
//board[10] = 2
//board[14] = -10
//board[19] = -11
//board[22] = -2
//board[24] = -8
//
//var squre = 0
//var diceRoll = 0
//while squre < finaleCount{
//    if ++diceRoll == 7{
//        diceRoll = 1
//    }
//    squre += diceRoll
//    if squre < board.count{
//        squre += board[squre]
//    }
//}
//print("game over")
//
//repeat{
//    squre += board[squre]
//    if ++diceRoll == 7 {diceRoll = 1}
//    squre += diceRoll
//}while squre < finaleCount

let someChar:Character = "e"
switch someChar{
    case "a","e","i","o","u":
        print("\(someChar) is a vowel")
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        print("\(someChar) is a consonant")
    default:
        print("nothime")
}

let number = 15
var naturalCount: String
switch number{
    case 0:
        naturalCount = "No"
    case 1...100:
        naturalCount = "1-100"
    case 100...200:
        naturalCount = "100-200"
    default:
        naturalCount = ">200"
}
print(naturalCount)

let somePoint = (1,1)
switch somePoint{
case (0, 0):
    print("原点")
case (_, 0):
    print("在X轴上")
case (0, _):
    print("在Y轴上")
case (-2...2,-2...2):
    print("在-2-2的区域内")
default:
    print("出去啦")
}

let otherPoint = (1, -1)
switch otherPoint{
case let(x, y) where x == y:
    print("45度角")
case let(x, y) where x == -y:
    print("-45")
default:
    print("都不在")
}

let input = "great minds is alike"
var outPut = ""
for char in input.characters{
    switch char{
    case "a", "e", "i", "o", "u", " ":
        //continue会跳过本次循环,接下来的会继续执行
        continue
    default:
        outPut.append(char)
    }
}
print(outPut)

let integerToDesc = 5
var desc = "the number is \(integerToDesc)"
switch integerToDesc{
case 2,3,5,7,9:
    desc += "niubi number, and also"
    fallthrough//这个关键字能够显示的贯穿swith语句
default:
    desc += " a integer"
}
print(desc)

let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

gameLoop : while square != finalSquare{
    if ++diceRoll == 7 {diceRoll = 1}
    switch square + diceRoll{
    case finalSquare:
        break gameLoop//到达最后一个,结束游戏
    case let newSqure where newSqure > finalSquare:
        continue gameLoop
    default:
        square += diceRoll
        square += board[square]
    }
}

func greet(person:[String:String]){
    guard let name = person["name"] else {
        return
    }
    print("hello name")
    
    guard let location = person["location"] else {
        print("hello location")
        return
    }
    
    print("neither")
}

greet(["name" : "John"])

greet(["name" : "lily", "location": "henan"])


if #available(iOS 9, OSX 10.10, *){
    print("ios 9 & osx 10.10 is available")
}else{
    print("no")
}
