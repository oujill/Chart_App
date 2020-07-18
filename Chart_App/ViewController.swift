//
//  ViewController.swift
//  Chart_App
//
//  Created by JillOU on 2020/7/18.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //show Circular Progress Ring
        view.addSubview(show_circularProgressRing())
    }
    func show_circularProgressRing() -> UIView{
        //底層的圓環
        let circularPath = UIBezierPath(ovalIn: CGRect(x: 110, y: 310, width: 200, height: 200))
        let circularLayer = CAShapeLayer()
        circularLayer.path = circularPath.cgPath
        circularLayer.strokeColor = UIColor.gray.cgColor
        circularLayer.fillColor =  UIColor.clear.cgColor
        circularLayer.lineWidth = 25
        
        //表層的圓環
        let percentageCircularPath = UIBezierPath(arcCenter: CGPoint(x: 210, y: 410), radius: 100, startAngle: CGFloat.pi/180*270, endAngle: CGFloat.pi/180*360, clockwise: true)
        let percentageCircularLayer = CAShapeLayer()
        percentageCircularLayer.path = percentageCircularPath.cgPath
        percentageCircularLayer.strokeColor = UIColor.blue.cgColor
        percentageCircularLayer.fillColor = UIColor.clear.cgColor
        percentageCircularLayer.lineWidth = 25

        //將兩圓環疊加成為UIView
        let view = UIView()
        view.layer.addSublayer(circularLayer)
        view.layer.addSublayer(percentageCircularLayer)
        return view
    }

}

//可將內圓邊角變成圓弧狀
//percentageCircularLayer.lineCap = .round
