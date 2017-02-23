/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Create an Example
 
 Create an example where overlapping shapes combine to create an image.
 
 You can find a simple image on the Internet and attempt to reproduce it.
 
 Or, you can create your own.

 ## Remember
 
 Commit your work as you make progress on this page.

 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)


for y in stride(from: 15, through: 50, by: 1){
    canvas.drawLine(fromX: 25, fromY:50 , toX: 275, toY: y)
}

for x in stride(from: 130, through: 200, by: 1){
    canvas.drawLine(fromX: 250, fromY: 10, toX: x, toY: 235)
}







/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
