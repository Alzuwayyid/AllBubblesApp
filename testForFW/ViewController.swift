//
//  ViewController.swift
//  testForFW
//
//  Created by Mohammed on 17/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bubbleView: UIView!
    var str = "Hello my friendo"
    @IBOutlet var textFiel: UITextField!
    
    var tempBubbleView: UIView!
    let customView = UIView()
    let label = UILabel()
        
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.bubbleView = UIView()
    
        
        self.textFiel.delegate = self
        
//        bubbleView.backgroundColor = .blue
        
        
//        customView.backgroundColor = .systemGreen
        bubbleView.addSubview(customView)
        
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        customView.leadingAnchor.constraint(equalTo: bubbleView.leadingAnchor, constant: 10).isActive = true
        customView.trailingAnchor.constraint(equalTo: bubbleView.trailingAnchor, constant: -10).isActive = true
        customView.topAnchor.constraint(equalTo: bubbleView.topAnchor, constant: 10).isActive = true
        customView.bottomAnchor.constraint(greaterThanOrEqualTo: bubbleView.bottomAnchor, constant: -20).isActive = true
        
        customView.addSubview(label)
        
        self.showBubble()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        self.tempBubbleView = UIView()
//        self.view.addSubview(tempBubbleView)
//        self.view.translatesAutoresizingMaskIntoConstraints = false
//
//        tempBubbleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
//        tempBubbleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
//        tempBubbleView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
//        tempBubbleView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
//
//        self.tempBubbleView.backgroundColor = .systemPurple
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        self.bubbleView = UIView()
//
//        self.view.addSubview(bubbleView)
//
//        view.translatesAutoresizingMaskIntoConstraints = false
//
//        bubbleView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
////        bubbleView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 248).isActive = true
//        view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: self.bubbleView.trailingAnchor, constant: 248).isActive = true
//        bubbleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 89).isActive = true
////        bubbleView.bottomAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 602).isActive = true
//        view.safeAreaLayoutGuide.bottomAnchor.constraint(greaterThanOrEqualTo: self.bubbleView.bottomAnchor, constant: 602).isActive = true
//        bubbleView.heightAnchor.constraint(greaterThanOrEqualToConstant: 127).isActive = true
////        bubbleView.heightAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.heightAnchor, constant: 127).isActive = true
////        bubbleView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, constant: 146).isActive = true
//        bubbleView.widthAnchor.constraint(equalToConstant: 146).isActive = true
//
//        self.textFiel.delegate = self
//
//        self.showBubble()
//    }

    
    @IBAction func didType(_ sender: UITextField) {
        self.str = sender.text!
        DispatchQueue.main.async {
            self.showBubble()
        }
    }
    
    func showBubble(){

        
//        customView.heightAnchor.constraint(greaterThanOrEqualTo: bubbleView.heightAnchor).isActive = true
//        customView.heightAnchor.constraint(equalTo: bubbleView.heightAnchor).isActive = true
//        customView.widthAnchor.constraint(equalTo: bubbleView.widthAnchor).isActive = true
        
        let width: CGFloat = bubbleView.frame.width
        let height: CGFloat = bubbleView.frame.height - 10
        
        
//        label.center = customView.center
        label.clipsToBounds = true
        label.text = str
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
//        label.backgroundColor = .systemRed
//        label.sizeToFit()

        

        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 22, y: height))
        bezierPath.addLine(to: CGPoint(x: width - 17, y: height))
        bezierPath.addCurve(to: CGPoint(x: width, y: height - 17), controlPoint1: CGPoint(x: width - 7.61, y: height), controlPoint2: CGPoint(x: width, y: height - 7.61))
        bezierPath.addLine(to: CGPoint(x: width, y: 17))
        bezierPath.addCurve(to: CGPoint(x: width - 17, y: 0), controlPoint1: CGPoint(x: width, y: 7.61), controlPoint2: CGPoint(x: width - 7.61, y: 0))
        bezierPath.addLine(to: CGPoint(x: 21, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 4, y: 17), controlPoint1: CGPoint(x: 11.61, y: 0), controlPoint2: CGPoint(x: 4, y: 7.61))
        bezierPath.addLine(to: CGPoint(x: 4, y: height - 11))
        bezierPath.addCurve(to: CGPoint(x: 0, y: height), controlPoint1: CGPoint(x: 4, y: height - 1), controlPoint2: CGPoint(x: 0, y: height))
        bezierPath.addLine(to: CGPoint(x: -0.05, y: height - 0.01))
        bezierPath.addCurve(to: CGPoint(x: 11.04, y: height - 4.04), controlPoint1: CGPoint(x: 4.07, y: height + 0.43), controlPoint2: CGPoint(x: 8.16, y: height - 1.06))
        bezierPath.addCurve(to: CGPoint(x: 22, y: height), controlPoint1: CGPoint(x: 16, y: height), controlPoint2: CGPoint(x: 19, y: height))
        bezierPath.close()
        
        let incomingMessageLayer = CAShapeLayer()
        incomingMessageLayer.path = bezierPath.cgPath
        incomingMessageLayer.frame = CGRect(x: 0,
                                            y: 0,
                                            width: width,
                                            height: height)
        
//        incomingMessageLayer.frame = CGRect(x: bubbleView.frame.width/2 - width/2,
//                                            y: bubbleView.frame.height/2 - height/2,
//                                            width: width,
//                                            height: height)
        

        
        
        bubbleView.layer.mask = incomingMessageLayer
        
        
        label.translatesAutoresizingMaskIntoConstraints = false

        label.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 0).isActive = true
        label.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: 0).isActive = true
        label.topAnchor.constraint(equalTo: customView.topAnchor, constant: 0).isActive = true
        label.bottomAnchor.constraint(greaterThanOrEqualTo: customView.bottomAnchor, constant: 0).isActive = true
//        label.heightAnchor.constraint(greaterThanOrEqualTo: customView.heightAnchor).isActive = true
        
//        tempBubbleViewHeight.constant = label.frame.height
        view.layoutIfNeeded()
        customView.layoutIfNeeded()
        bubbleView.layoutIfNeeded()
                
    }

}

extension ViewController: UITextFieldDelegate{
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        self.str = textField.text!
        DispatchQueue.main.async {
            self.showBubble()
        }
    }

}
