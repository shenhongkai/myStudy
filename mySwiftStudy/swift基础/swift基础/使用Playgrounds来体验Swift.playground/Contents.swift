import UIKit

var str = "Hello, playground"
let constant = 10
var number = 10

var result = number + constant


var greeting = "Hello "
var name = "Simon"

var message = greeting + name

message.uppercased()
message.lowercased()
message.count

var bookPrice = 39
var numOfCopies = 5
var totalprice = bookPrice * numOfCopies
var totalPriceMessage = "The price of the book is $" + String(totalprice)

var totalPriceMessage2 = "The price of the book is $ \(totalprice)"

var timeYouWakeUp = 6

if timeYouWakeUp == 6 {
    print("Cook yourself a big brekfast!")
} else {
    print("Go out for breakfast")
}

var bouns = 3333

switch bouns {
case 10000...:
    print("大于一万")
case 5000...9999:
    print("haha")
case ...4999:
    print("sss")
default:
    print("hello")
}

var bookCollection = ["tool","re","akjdas"]
bookCollection[0]

bookCollection.append("askdd")
bookCollection.count


for index in 0...bookCollection.count - 1 {
    print(bookCollection[index])
}

for book in bookCollection {
    print(book)
}


var bookCollectionDic = ["1":"你","2":"好","3":"啊"]

bookCollectionDic["1"]

for (key, value) in bookCollectionDic {
    print("ISBN: \(key)")
    print("Title: \(value)")
}

var num = "1"
var mea = bookCollectionDic[num]
print(mea!)

var msms :String?
msms = "ios"

var mmm = "You job is " + msms!

if let msms = msms {
    print("asdad" + msms)
}

var emojidict = ["👻":"鬼","😀":"笑","😂":"哭"]
var emo = "👻"
var emoMeaning = emojidict[emo]

let containerView = UIView(frame: CGRect(x: 20,y:20, width: 100, height: 100))

containerView.backgroundColor = UIColor.orange


let emoLabel = UILabel(frame: CGRect(x: 30,y: 30,width: 60,height: 30))
emoLabel.text = emo
emoLabel.font = UIFont.systemFont(ofSize: 40.0)

containerView.addSubview(emoLabel)

let meaningLabel = UILabel(frame: CGRect(x: 30, y: 70, width: 30, height: 20))
meaningLabel.text = emoMeaning
meaningLabel.font = UIFont.systemFont(ofSize: 20.0)
meaningLabel.textColor = UIColor.blue
meaningLabel.textAlignment = NSTextAlignment.center

containerView.addSubview(meaningLabel)
















