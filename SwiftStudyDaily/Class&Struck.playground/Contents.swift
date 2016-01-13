//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class someClass {
    
}

struct someStruck {
    
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var string = "hahah"
    var bool = true
    var a = 3
    var name : String?
}

let resolution = Resolution()
let videoModel = VideoMode()

resolution.width
resolution.height

videoModel.resolution.width
videoModel.bool
videoModel.name

videoModel.resolution.width = 190
videoModel.resolution.height = 200

var newResu = Resolution(width: 100, height: 200)
newResu.width
newResu.height

let hd = Resolution(width: 1920, height: 1080)
var newhd = hd
newResu.width = 960
newResu.height = 480
hd.width

enum CompassPoint {
    case a
    case b
    case c
    case d
}

var currentdi = CompassPoint.b

let newCurrent = currentdi

currentdi = .d

newCurrent


var video = VideoMode()
var name = video.name
name = "hahahahha"

var otherName = name

name = "xixixixixi"

print(otherName)

video.name = "huangshaohua"
video.resolution = hd
video.string = "shuai"
video.bool = false
video.a = 3000

var otherVideo = video

otherVideo.name

video.name = "shenqian"

otherVideo.name//可以看出class是值传递,也会跟着改版

otherVideo === video


