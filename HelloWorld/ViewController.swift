//
//  ViewController.swift
//  HelloWorld
//
//  Created by johahogb on 22/02/15.
//  Copyright (c) 2015 johahogb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PhotoImageView: UIImageView!
    
    // Create a place to render the image
    let context = CIContext(options: nil)
    
    
    @IBAction func appFilter(sender: AnyObject) {
    

        let inputImage = CIImage(image: PhotoImageView.image)
        let radomColor = [kCIInputAngleKey: (Double(arc4random_uniform(314)))]
        
        let filterImage = inputImage.imageByApplyingFilter( "CIHueAdjust", withInputParameters: radomColor)
        let renderedImage = context.createCGImage(filterImage, fromRect: filterImage.extent())
        
        PhotoImageView.image = UIImage(CGImage:renderedImage)
        
    }
    
    @IBAction func test(sender: AnyObject) {
    
    
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
