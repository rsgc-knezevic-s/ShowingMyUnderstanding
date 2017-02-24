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

//big red triangle
canvas.lineColor = Color.red
for y in stride(from: 40, through: 75, by: 1){
    canvas.drawLine(fromX: 10, fromY:75 , toX: 290, toY: y)
}

//big yellow triangle
canvas.lineColor = Color.yellow
for x in stride(from: 100, through: 145, by: 1){
    canvas.drawLine(fromX: 250, fromY: 10, toX: x, toY: 290)
}

//big black triangle
canvas.lineColor = Color.black
for z in stride(from: 35, through: 70, by: 1){
    canvas.drawLine(fromX: 200, fromY: 290, toX: z, toY: 10)
}

//small yellow triangle
canvas.lineColor = Color.red
for a in stride(from: 53, through: 75, by: 1){
    canvas.drawLine(fromX: 10, fromY: 75, toX: 190, toY: a)
}




/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
