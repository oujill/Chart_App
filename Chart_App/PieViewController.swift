//
//  PieViewController.swift
//  Chart_App
//
//  Created by JillOU on 2020/7/18.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class PieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            //show Donut Chart
            view.addSubview(show_pieChart())
        }
        func show_pieChart() -> UIView{
            let percentages:[CGFloat] = [40, 15, 45]
            var start:CGFloat = 270
            let view = UIView()
            for percentage in percentages{
                //比例圓餅圖
                let end = start + percentage
                let percentageCircularPath = UIBezierPath()
                percentageCircularPath.move(to: CGPoint(x: 210, y: 410))
                percentageCircularPath.addArc(withCenter: CGPoint(x: 210, y: 410), radius: 100, startAngle: CGFloat.pi/180*start/100*360, endAngle: CGFloat.pi/180*end/100*360, clockwise: true)
                let percentageCircularLayer = CAShapeLayer()
                percentageCircularLayer.path = percentageCircularPath.cgPath
                percentageCircularLayer.fillColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1).cgColor
                percentageCircularLayer.lineWidth = 25

                //將圓餅疊加成為UIView
                view.layer.addSublayer(percentageCircularLayer)
                //將percentage startAngle起始點更新
                start = end
            }
            return view
        }
}
