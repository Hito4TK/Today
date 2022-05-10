//
//  CAGradientLayer+ListStyle.swift
//  Today
//
//  Created by Hito4TK on 2022/05/10.
//

import UIKit

extension CAGradientLayer {
    static func gradientLayer(for style: ReminderListStyle, in frame: CGRect) -> Self {
        let layer = Self()
        layer.colors = colors(for: style)
        layer.frame = frame
        return layer
    }
    
    private static func colors(for style: ReminderListStyle) -> [CGColor] {
        let beginColor: UIColor
        let endColor: UIColor
        
        switch style {
        case .all:
            beginColor = UIColor(named: "TodayGradientAllBegin")!
            endColor = UIColor(named: "TodayGradientAllEnd")!
        case .future:
            beginColor = UIColor(named: "TodayGradientFutureBegin")!
            endColor = UIColor(named: "TodayGradientFutureEnd")!
        case .today:
            beginColor = UIColor(named: "TodayGradientTodayBegin")!
            endColor = UIColor(named: "TodayGradientTodayEnd")!
        }
        return [beginColor.cgColor, endColor.cgColor]

    }
    
}
