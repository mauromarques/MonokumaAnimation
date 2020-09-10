//
//  ViewController.swift
//  MonokumaAnimation
//
//  Created by Mauro Canhao on 09/09/2020.
//  Copyright © 2020 Mauro Canhao. All rights reserved.
//

import UIKit
import CoreGraphics

class ViewController: UIViewController {

    var upperHead = UIImageView()
    var jaw = UIImageView()
    var container = UIView()
    var tapImage = UIImageView()
    var timer : Timer?
    
    var circle1 = UIView()
    var circle2 = UIView()
    var circle3 = UIView()
    var circle4 = UIView()
    var circle5 = UIView()
    var circle6 = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        upperHead = createUpperHead()
        jaw = createJaw()
        container = createContainer()
        tapImage = createTap()
        
        circle1 = createCircle(color: .white)
        circle2 = createCircle(color: .black)
        circle3 = createCircle(color: .white)
        circle4 = createCircle(color: .black)
        circle5 = createCircle(color: .white)
        circle6 = createCircle(color: .black)
        
        applyConstraints()
        
        UIView.setAnimationsEnabled(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        idleAnimate()
    }

    func createUpperHead() -> UIImageView {
        let image = UIImageView()
        image.backgroundColor = .clear
        image.alpha = 1
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "monokumaUpperHead")
        image.layer.applySketchShadow(color: .black, alpha: 0.5, x: 0, y: 5, blur: 20, spread: 0)
        return image
    }
    
    func createContainer() -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    
    func createTap() -> UIImageView {
        let image = UIImageView()
        image.backgroundColor = .clear
        image.alpha = 1
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "tapSpeechBubble")
        return image
    }
    
    func createJaw() -> UIImageView {
        let image = UIImageView()
        image.backgroundColor = .clear
        image.alpha = 1
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "monokumaBottomHead")
        image.layer.applySketchShadow(color: .black, alpha: 0.7, x: 0, y: 1.5, blur: 10, spread: 0)
        return image
    }
    
    func applyConstraints () {
           //Apply and activate constraints for autolayout
        view.addSubview(container)
        container.translatesAutoresizingMaskIntoConstraints = false
           container.addSubview(jaw)
           upperHead.translatesAutoresizingMaskIntoConstraints = false
           container.addSubview(upperHead)
           jaw.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tapImage)
        tapImage.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(circle1)
        circle1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(circle2)
        circle2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(circle3)
        circle3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(circle4)
        circle4.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(circle5)
        circle5.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(circle6)
        circle6.translatesAutoresizingMaskIntoConstraints = false
           
        view.bringSubviewToFront(container)
        
           let constraints = [
               upperHead.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               upperHead.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -view.frame.height * 0.021450335161487),
               upperHead.widthAnchor.constraint(equalToConstant: 200),
               upperHead.heightAnchor.constraint(equalToConstant: 200),
               
               jaw.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               jaw.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: view.frame.height * 0.0051188299817185),
               jaw.widthAnchor.constraint(equalToConstant: 200),
               jaw.heightAnchor.constraint(equalToConstant: 200),
            
            container.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            container.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            container.widthAnchor.constraint(equalToConstant: 200),
            container.heightAnchor.constraint(equalToConstant: 200),
            
            tapImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -50),
            tapImage.bottomAnchor.constraint(equalTo: container.topAnchor, constant: -10),
            tapImage.heightAnchor.constraint(equalToConstant: 100),
            tapImage.widthAnchor.constraint(equalToConstant: 100),

            circle1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circle1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circle1.widthAnchor.constraint(equalToConstant: 50),
            circle1.heightAnchor.constraint(equalToConstant: 50),
            
            circle2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circle2.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circle2.widthAnchor.constraint(equalToConstant: 50),
            circle2.heightAnchor.constraint(equalToConstant: 50),
            
            circle3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circle3.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circle3.widthAnchor.constraint(equalToConstant: 50),
            circle3.heightAnchor.constraint(equalToConstant: 50),
            
            circle4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circle4.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circle4.widthAnchor.constraint(equalToConstant: 50),
            circle4.heightAnchor.constraint(equalToConstant: 50),
            
            circle5.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circle5.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circle5.widthAnchor.constraint(equalToConstant: 50),
            circle5.heightAnchor.constraint(equalToConstant: 50),
            
            circle6.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circle6.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circle6.widthAnchor.constraint(equalToConstant: 50),
            circle6.heightAnchor.constraint(equalToConstant: 50),
           ]
           NSLayoutConstraint.activate(constraints)
          
       }
    
    func idleAnimate() {
        animateGroup()
        timer = Timer.scheduledTimer(timeInterval: 4, target: self, selector: #selector(animateGroup), userInfo: nil, repeats: true)

    }
    @objc func animateGroup() {
        headAnimate()
        headEnlarge()
    }
    
    func headEnlarge() {
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseInOut, animations: {
            self.container.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            self.view.layoutIfNeeded()
        }) { (true) in
            
        }
    }
    
    func headAnimate() {
        UIView.animate(withDuration: 0.1, delay: 1, options: [.curveEaseOut], animations: {
            self.container.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 100))
            self.view.layoutIfNeeded()
        }, completion: { (true) in
            UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseInOut], animations: {
                self.container.transform = CGAffineTransform(rotationAngle: -2 * CGFloat(Double.pi / 100))
                self.view.layoutIfNeeded()
            }, completion: { (true) in
                UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseInOut], animations: {
                    self.container.transform = CGAffineTransform(rotationAngle: 2 * CGFloat(Double.pi / 100))
                    self.view.layoutIfNeeded()
                }, completion: { (true) in
                    UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseInOut], animations: {
                        self.container.transform = CGAffineTransform(rotationAngle: -2 * CGFloat(Double.pi / 100))
                        self.view.layoutIfNeeded()
                    }, completion: { (true) in
                        UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseInOut], animations: {
                            self.container.transform = CGAffineTransform(rotationAngle: 2 * CGFloat(Double.pi / 100))
                            self.view.layoutIfNeeded()
                        }, completion: { (true) in
                            UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseOut],  animations: {
                                self.container.transform = CGAffineTransform(rotationAngle: -1.5 * CGFloat(Double.pi / 100))
                                self.view.layoutIfNeeded()
                            }, completion: { (true) in
                                UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseOut],  animations: {
                                    self.container.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat(Double.pi / 100))
                                    self.view.layoutIfNeeded()
                                    
                                }, completion: { (true) in
                                    
                                })
                            })
                        })
                })
            })
        })
        }
        
    )}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        timer?.invalidate()
              print("Button tapped")
        //        performSegue(withIdentifier: "segueID", sender: nil)

                UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseInOut], animations: {
                    self.upperHead.transform = CGAffineTransform(translationX: 0, y: 5)
                    self.jaw.transform = CGAffineTransform(translationX: 0, y: -5)
                    self.tapImage.alpha = 0
                    self.view.layoutIfNeeded()
                           
                    UIView.animate(withDuration: 0.2, delay: 0.2, options: [.curveEaseInOut], animations: {
                        self.upperHead.transform = CGAffineTransform(translationX: 0, y: 0)
                        self.jaw.transform = CGAffineTransform(translationX: 0, y: 0)
                        self.view.layoutIfNeeded()
                        
                    })
                       }, completion: { (true) in

                       })
                
                UIView.animate(withDuration: 0.7, delay: 0.4, options: [.curveEaseInOut], animations: {
                    self.upperHead.transform = CGAffineTransform(translationX: 0, y: -100)
                    self.container.alpha = 0
                    self.jaw.transform = CGAffineTransform(translationX: 0, y: 100)
                    self.view.layoutIfNeeded()
                    self.timer = Timer.scheduledTimer(timeInterval: 0.6, target: self, selector: #selector(self.tunnelTransition), userInfo: nil, repeats: false)

                }, completion: { (true) in

                })
    }
    
    @objc func perSegue() {
        self.performSegue(withIdentifier: "segueID", sender: nil)
    }
    
    func createCircle(color: UIColor) -> UIView {
        let circle = UIView()
        circle.backgroundColor = color
        circle.layer.cornerRadius = 25
        return circle
    }
    
    @objc func tunnelTransition() {
    
    UIView.animate(withDuration: 1, delay: 0, animations: {
        self.circle1.transform = CGAffineTransform(scaleX: 20, y: 20)
        self.circle1.layoutIfNeeded()
        UIView.animate(withDuration: 1, delay: 0.3, animations: {
            self.circle2.transform = CGAffineTransform(scaleX: 20, y: 20)
            self.circle2.layoutIfNeeded()
        })
        UIView.animate(withDuration: 1, delay: 0.6, animations: {
            self.circle3.transform = CGAffineTransform(scaleX: 20, y: 20)
            self.circle3.layoutIfNeeded()
        })
        UIView.animate(withDuration: 1, delay: 0.9, animations: {
            self.circle4.transform = CGAffineTransform(scaleX: 20, y: 20)
            self.circle4.layoutIfNeeded()
        })
        UIView.animate(withDuration: 1, delay: 1.2, animations: {
            self.circle5.transform = CGAffineTransform(scaleX: 20, y: 20)
            self.circle5.layoutIfNeeded()
        })
        UIView.animate(withDuration: 1, delay: 1.5, animations: {
            self.circle6.transform = CGAffineTransform(scaleX: 20, y: 20)
            self.circle6.layoutIfNeeded()
            self.timer = Timer.scheduledTimer(timeInterval: 1.8, target: self, selector: #selector(self.perSegue), userInfo: nil, repeats: false)
        })
    }, completion: { (true) in
        
    })
   }

}

