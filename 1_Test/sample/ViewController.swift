//
//  ViewController.swift
//  sample
//
//  Created by ravi kumar on 02/07/14.
//  Copyright (c) 2014 ravi kumar. All rights reserved.
//

import UIKit
var segments=UISegmentedControl();
var sliderlabel=UILabel();
class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        
        
        //******** creating label programmatically*******//
        
        let label = UILabel(frame: CGRect(x: 120, y: 80, width: 150, height: 100));
        //label.center = CGPointMake(160, 284);
        label.textAlignment = NSTextAlignment.center;
        label.text = " ^Click the above button to move to next view controller <<< uiview";
        label.numberOfLines=4;
        label.accessibilityIdentifier = "label123"
        self.view.addSubview(label);
        
        sliderlabel = UILabel(frame: CGRect(x: 120, y: 240, width: 150, height: 100));
        //label.center = CGPointMake(160, 284);
        sliderlabel.textAlignment = NSTextAlignment.center;
        sliderlabel.numberOfLines=4;
        self.view.addSubview(sliderlabel);
        
        
        //******** creating button programmatically*******//
        
        let button=UIButton(frame: CGRect(x: 20, y: 20, width: 280, height: 40));
        button.backgroundColor=UIColor.blue;
        //button.setTitle("Ravi Kumar", for: UIControlState());
        button.setTitleColor(UIColor.yellow, for: UIControlState());
        button.alpha=0.6;
        button.layer.borderWidth=0.3;
        button.layer.cornerRadius=2;
        button.accessibilityIdentifier = "button123"
        //*** button action***//
        button.addTarget(self, action: #selector(ViewController.pressme), for: .touchUpInside);
        button.titleLabel!.textAlignment=NSTextAlignment.center;
        self.view.addSubview(button);
        
        
        //******** creating UIView programmatically *********//
        
        let view=UIView(frame: CGRect(x: 20, y: 80, width: 100, height: 100));
        view.backgroundColor=UIColor.yellow;
        view.layer.borderColor=UIColor.white.cgColor;
        view.layer.cornerRadius=25;
        view.layer.borderWidth=6;
        self.view.addSubview(view);
        
        //******** creating textfield programmatically********//
        
        let myTextField = UITextField(frame: CGRect(x: 20, y: 200, width: 280.00, height: 40.00));
        myTextField.backgroundColor = UIColor.gray;
        //myTextField.placeholder="  Enter here";
        //myTextField.text = "    Enter here";
        myTextField.borderStyle = UITextBorderStyle.line;
        myTextField.isSecureTextEntry=true;
        myTextField.accessibilityIdentifier = "textfield123"
        self.view.addSubview(myTextField);
        
        //******** creating UIslider ***********//
        
        let slider=UISlider(frame:CGRect(x: 20, y: 260, width: 280, height: 20));
        slider.minimumValue = 0;
        slider.maximumValue = 100;
        slider.isContinuous = false;
        slider.value = 0;
        slider.addTarget(self, action: #selector(ViewController.sliderValueDidChange(_:)), for: .valueChanged);
        slider.accessibilityIdentifier = "slider123"
        self.view.addSubview(slider);
        
        
        
        //********** creating UISwitch programmatically *******//
        
        let customSwitch = UISwitch(frame:CGRect(x: 150, y: 300, width: 50, height: 30))
        customSwitch.setOn(true, animated: false);
        customSwitch.addTarget(self, action: #selector(ViewController.switchValueDidChange(_:)), for: .valueChanged);
        customSwitch.accessibilityIdentifier = "switch123"
        
        self.view.addSubview(customSwitch);
        
        
        
        //********** creating UITextView programmatically *******//
        
        let textview=UITextView(frame:CGRect(x: 20, y: 330, width: 280, height: 60));
        textview.isScrollEnabled=true;
        textview.backgroundColor=UIColor.gray;
        textview.textColor=UIColor.blue;
        textview.textAlignment=NSTextAlignment.center;
        self.view.addSubview(textview);
        
        
        
        //********** creating UIImageView Programmatically******//
        
        let imageView = UIImageView(frame: CGRect(x: 20, y: 400, width: 100, height: 150));
        let image = UIImage(named: "image.jpg");
        imageView.image = image;
        self.view.addSubview(imageView);
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func pressme(){
        
        //******** navigation from one view controller to another *******//
       
        self.navigationController!.pushViewController(secondViewController(), animated: false);
        
        //******** creating UIalertview programmatically*******//
        
        let alertView=UIAlertView();
        alertView.title="RK";
        alertView.addButton(withTitle: "OK");
        alertView.message="Now you are in second view controller";
//        alertView.accessibilityValue = "alert123"
        alertView.show();
    }
    
    
    func sliderValueDidChange(_ slider: UISlider) {
        sliderlabel.text=String(stringInterpolationSegment: slider.value);
    }
    
    func switchValueDidChange(_ aSwitch: UISwitch) {
        sliderlabel.text="switch pressed";
    }
}

