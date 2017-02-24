/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a conditional statement to respond to random number generation.
  
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)


// Generate a random number
let number = random(from: 0, toButNotIncluding: 300)
let h = random(from: 15, toButNotIncluding: 45)

canvas.drawShapesWithFill = false
if (number > 150){
        for z in stride(from: 10, through: 290, by: h){
    for x in stride(from: 10, through: 290, by: h){
        canvas.drawEllipse(centreX: z , centreY: x, width: h + x, height: x)
        
    }
    }
}
else{
    for z in stride(from: 10, through: 290, by: h){
        for x in stride(from: 10, through: 290, by: h){
            canvas.drawEllipse(centreX: z , centreY: x, width:  x, height: number)
            
        }
    }
    
}





/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
