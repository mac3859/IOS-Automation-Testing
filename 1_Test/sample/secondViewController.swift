//
//  secondViewController.swift
//  sample
//
//  Created by ravi kumar on 12/07/14.
//  Copyright (c) 2014 ravi kumar. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21));
        label.center = CGPoint(x: 160, y: 284);
        label.textAlignment = NSTextAlignment.center;
        //label.text = "I'am rk";
        label.numberOfLines=4;
        self.view.addSubview(label);
        
        let button=UIButton(frame: CGRect(x: 20, y: 20, width: 280, height: 40));
        button.backgroundColor=UIColor.blue;
        //button.setTitle("second view controller", for: UIControlState());
        button.setTitleColor(UIColor.yellow, for: UIControlState());
        button.alpha=0.2;
        button.layer.borderWidth=0.3;
        button.layer.cornerRadius=2;
        button.addTarget(self, action: #selector(secondViewController.pressme), for: .touchUpInside);
        button.titleLabel!.textAlignment=NSTextAlignment.center;
//        button.accessibilityIdentifier = "button456"
        self.view.addSubview(button);
        
        
        //************ date picker programmatically***********//
        
        let datepick=UIDatePicker(frame:CGRect(x: 20, y: 80, width: 280, height: 100));
        datepick.datePickerMode = UIDatePickerMode.date;
//        datepick.accessibilityIdentifier = "datepick123"
        self.view.addSubview(datepick);
        
        //************ web view programmatically **************//
        
        let webview=UIWebView(frame:CGRect(x: 20, y: 240, width: 280, height: 310));
        let url = URL(string: "http://www.rkiosdev.blogspot.in");
        let request = URLRequest(url: url!);
        webview.scalesPageToFit=true;
        webview.loadRequest(request);
        self.view.addSubview(webview);
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pressme(){
        let alertView=UIAlertView();
        alertView.title="RK";
        alertView.addButton(withTitle: "OK");
        alertView.message="going back to first vc";
        
        alertView.show();
        
        self.navigationController!.popToRootViewController(animated: true);
        
    }

}
