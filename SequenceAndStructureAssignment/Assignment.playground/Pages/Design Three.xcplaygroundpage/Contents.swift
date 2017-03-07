/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Three
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)


// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 1

//// This loop makes a 10 rows of columns
//for x in stride(from: 25, through: 475, by: 50){
//    
//    // This loop makes a single column, bottom to top
//    for y in stride(from: 25, through: 475, by: 50) {
//        
//        // Draw the shapes
//        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
//    }
//}

// This loop is for circles
canvas.fillColor = Color.white
for X in stride(from: 25, through: 475, by: 50){
    for Y in stride(from: 475, through: 25, by: -50){
        for radius in stride(from: 2, through: 82, by: 16){
            canvas.drawShapesWithFill
            canvas.borderColor = Color.init(hue: 230, saturation: 100, brightness: 80, alpha: 100)
            canvas.drawEllipse(centreX: X, centreY: Y, width: radius, height: radius)
           
            
            
        }
    }
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
