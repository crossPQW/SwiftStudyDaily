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
        self.basicOperators()
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
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

