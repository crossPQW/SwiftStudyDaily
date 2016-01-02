//
//  ViewController.swift
//  SwiftStudyDaily
//
//  Created by 黄少华 on 15/12/23.
//  Copyright © 2015年 黄少华. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.base()
//        self.basicOperators()
//        self.stringsAndCharactets()
        collectionTypes()
    }

    //base 基础部分
    func base (){
        //变量在使用之前需要进行生命,通常我们用let 声明常量,用var声明变量
        let number = 100 //不可修改
        _  = 200//可以修改
        
        var x = 100,y = 200, z = 300
        
        var string: String = "hello world"
        
        var a, b, c: String
        
        var aString: String = "hello"
        aString .appendContentsOf("world")
        print(aString)
        
        print("the current value is \n(hello world) \n and the value is \(aString)")
        
        let min8 = UInt8.min
        let max8 = UInt8.max
        print("min is \(min8),max is \(max8)")//Uint8
        
        typealias hhh = String
        var heiheihei: hhh = "asdasdadas"
        print(heiheihei)
        
        var isOpen = true
        if isOpen{
            print("true")
        }
        else
        {
            print("false")
        }
        
//        let error = (404, "NOT FOUND")
//        print(error.0,error.1)
//        
//        let (code,message) = error
//        print(code,message)
        
        let httpError = (code: 200, message:"OK")
        print(httpError.code,httpError.1)
        
        var http404Code :Int? = 404
        http404Code = nil
        
        
        let possibleNumber = "111111"
        let convertNumber = Int(possibleNumber)
        
        if convertNumber == nil{
            print("isnil")
        }else{
            print("nonnull")
        }
        
        if convertNumber != nil{
            print("it is has value is \(convertNumber!)")//如果一个可选值确定有值可以用!强制解析
        }
        
        //可选绑定
//        if let constant = someOption{
//            statement
//        }
        if let actualNumber = convertNumber{
            print("\(actualNumber) is \(convertNumber)")
        }else{
//            print("\(actualNumber) is not  \(convertNumber)") //这里会报错,因为转换成功后只能在第一个分支里面使用转换好的变量
        }
        
        if let firstNumber = Int("100"), secondNumber = Int("100000") where firstNumber < secondNumber
        {
            print("\(firstNumber) < \(secondNumber)")
        }
        
        func canthrowerror() throws{
            //这个函数可能抛出错误
        }
        do{
            try canthrowerror()
            
        }catch{
            
        }
        
        func makeerror() throws{
            
        }
        do{
            try makeerror()
        }catch {
            
        }
        
        let age = 3
        assert(age < 3, "age is less than 3")
    }
    
    //基本运算符
    func basicOperators(){
        
        let a = 1
        var b = 2
        b = a
        print(b)

        let (x,y) = (3, 4)
        
        let string = "hello" + "world"
        print(string)
        
        print(9 % 4)
        print(-9 % 4)
        
        let defaultColorName = "red"
        var userDefineColorName :String?
        userDefineColorName = "green"
        var colorNameTouse = userDefineColorName ?? defaultColorName
        print(colorNameTouse)
        
        for index in 1...5{
            print("\(index) \n")
        }
        
        let names = ["a","b","c","d","e"]
        let count = names.count
        for inde in 0..<count {
            print("第\(inde) ge ren jiao zuo \(names[inde])")
        }
    
    
    //字符串与字符
    func stringsAndCharactets(){
        var emptyString = ""
        var otherEmptyString = String()
        
        if emptyString.isEmpty && otherEmptyString.isEmpty {
            print("all is empty")
        }
        
        var hello = "hello"
        hello += "world"
        print(hello)
        
        for c in "DOG🐶".characters{
            print(c)
        }
        
        let cats: [Character] = ["c","a","t"]
        var catstring = String(cats)
        print(catstring)
        
        var fuck = "fuck"
        fuck += "you"
        let tanhao:Character = "!"
        fuck.append(tanhao)
        fuck.appendContentsOf("heheda")
        print(fuck)
        
        let thress = 3
        let result = "\(thress) * 2.5 is \(Double(thress) * 3)"
        print(result)
        
        let strings = "strings"
        let count = strings.characters.count
        
        let green = "green"
        print(green.startIndex,green.endIndex.predecessor())
        
        var welcome = "welcome"
        welcome.insert("r", atIndex: welcome.endIndex)
        welcome.insertContentsOf("u r ".characters, at: welcome.startIndex)
        print(welcome)
        
        welcome.removeAtIndex(welcome.endIndex.predecessor())
        print(welcome)
    }
    
    //集合类型
    func collectionTypes(){
        //swift中对集合类存储类型要求非常明确,不能存不正确的类型进去,array,dictionary,set被实现为泛型集合
        
        //空数组
        var someInts = [Int]()
        print(someInts)
        
        someInts.append(3)
        print(someInts)
        
        someInts = []//这时候someInts是空数组,但是还是int型的
        print(someInts)
        
        var threeDoubles = [Double](count: 3, repeatedValue: 10.10)
        print(threeDoubles)
        var otherDoubles = [Double](count: 3, repeatedValue: 100)
        var sixDoubles = threeDoubles + otherDoubles
        print(sixDoubles)//数组可以直接相加
        
        var strings = ["aaaaa","bbbbbb","cccccc"]
        var otherStrings: [String] = ["adasdasda","asdasdada","wrewrwr"]
        print(strings,"\n",otherStrings)
        
        var stringandnumbers = ["asdad",23,"asdadad",43]
        print(stringandnumbers)
        stringandnumbers.append("2423")
        print( stringandnumbers)
        var asdad = stringandnumbers[0]
        print(asdad)
        stringandnumbers[1...3] = ["vvfvvvvv","dfdfdfdfdf","trtrtrt"]
        print(stringandnumbers)
        let num = stringandnumbers.removeLast()
        print(num)
        
        var hahas = ["haha","dsadad","dsdd",32323,"32323",54545]
        for item in hahas{
            print(item)
        }
        
        for (index,items) in hahas.enumerate(){
            print("items \(index) : \(items)")
        }
        
        var numbers = Array<Int>()
        numbers.insert(23, atIndex: 0)
        print(numbers)
        
        var stringSet = Set<String>()
        stringSet.insert("dadasd")
        print(stringSet)
        
        //set的两种构造方法
        var set1:Set<String> = ["huang","shao","hua"]
        var set2:Set = ["huang","shao","hua"]
        print(set1,set2)
        
        //字典
        var book = [Int : String]()
        book[10] = "十"
        book[1] = "yi"
        print(book)
        book = [:]
        
        var person = ["name":"hahaha","sex":"famale","age":"six"]
        print("person has \(person.count) items")
        person["name"] = "huangshaohua"
        print(person)
        
        //这个方法在有key的时候更新值,没有key的时候创建一个key-value
        person.updateValue("one", forKey: "age")
        person.updateValue("blue", forKey: "coloe")
        print(person)
        
        for (a,b) in person{
            print(a,b)
        }
        
        let keys = person.keys.sort()
        let values = person.values.sort()
        print(keys,values)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

