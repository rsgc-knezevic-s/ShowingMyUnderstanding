/*:
 [Previous](@previous) / [Next](@next)

 # Sequence - Practice
 
 When does sequence matter?

 Here is an example of an image that is created and depends on statements being run in a certain order:

 ![overlapping_shapes](overlapping_shapes.png "Overlapping Shapes Logo")

 In this shape, there are lines and circles used.

 Color and alpha (transparency) matter.

 Try reproducing this image for practice.

 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note

 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)


canvas.defaultLineWidth = 74

//draw blue circles
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.blue
canvas.lineColor = Color.blue
canvas.drawEllipse(centreX: 75, centreY: 75, width: 75, height: 75)
canvas.drawEllipse(centreX: 75, centreY: 225, width: 75, height: 75)
canvas.drawLine(fromX: 75, fromY: 75, toX: 75, toY: 225)
canvas.drawLine(fromX: 75, fromY: 225, toX: 150, toY: 75)


//draw red circles
canvas.fillColor = Color.red
canvas.lineColor = Color.red
canvas.drawEllipse(centreX: 225, centreY: 75, width: 75 , height: 75)
canvas.drawEllipse(centreX: 225, centreY: 225, width: 75 , height: 75)
canvas.drawLine(fromX: 225, fromY: 75, toX: 225, toY: 225)
canvas.drawLine(fromX: 225, fromY: 225, toX: 150, toY: 75)


//middle part
canvas.fillColor = Color.black
canvas.lineColor = Color.black
canvas.defaultLineWidth = 1
canvas.drawEllipse(centreX: 150, centreY: 75, width: 75 , height: 75)

for x in stride(from: 112, through: 188, by: 1){
    canvas.drawLine(fromX: 150, fromY: 157, toX: x, toY: 80)
}











/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
