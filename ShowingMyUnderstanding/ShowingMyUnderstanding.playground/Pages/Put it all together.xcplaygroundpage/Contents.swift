/*:
 [Previous](@previous) / [Next](@next)
 
 # Put it all together
 
 Create an example that sequence, conditionals, and iteration to produce a simple image.
 
 The image need not be eye-catching or elaborate – it should simply demonstrate your ability to combine these programming structures.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

canvas.drawShapesWithFill = false
for x in stride(from: 0, through: 30, by: 1){
    let diameter = random(from: 30, toButNotIncluding: 200)
    
    if (diameter > 30){
        canvas.borderColor = Color(hue: diameter * x, saturation: 100, brightness: 100, alpha: 100)
    }
    else{
        canvas.borderColor = Color.black
    }
    
    let x = random(from: 0, toButNotIncluding: 301)
    let y = random(from: 0, toButNotIncluding: 301)
    canvas.drawEllipse(centreX: x, centreY: y, width: diameter, height: diameter)
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
