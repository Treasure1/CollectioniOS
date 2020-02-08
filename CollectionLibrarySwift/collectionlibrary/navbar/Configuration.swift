//
//  Configuration.swift
//  CollectionLibrarySwift
//
//  Created by Huatu on 2019/10/28.
//  Copyright © 2019 YoungManSter. All rights reserved.
//

import UIKit

public final class Configuration {
    
    public var isEnabled = true
    
    public var isHidden = false
    
    public var alpha: CGFloat = 1
    
    public var barTintColor: UIColor?
    
    public var tintColor: UIColor?
    
    public var shadowImage: UIImage?
    
    // Hides shadow image.
    public var isShadowHidden: Bool = false
    
    public var titleTextAttributes: [NSAttributedString.Key : Any]?
    
    public var isTranslucent: Bool = true
    
    public var barStyle: UIBarStyle = .default
    
    public var statusBarStyle: UIStatusBarStyle = .default
    
    /// Additional height for the navigation bar.
    public var additionalHeight: CGFloat = 0
    
    @available(iOS 11.0, *)
    /// Padding of navigation bar content view.
    public lazy var layoutPaddings: UIEdgeInsets = {
        Const.NavigationBar.layoutPaddings
    }()
    
    public var shadow: Shadow?
    
    var _largeTitleTextAttributes: [NSAttributedString.Key: Any]?
    
    var backgroundImage: UIImage?
    
    var barMetrics: UIBarMetrics = .default
    
    var barPosition: UIBarPosition = .any
}

extension Configuration {
    
    @available(iOS 11.0, *)
    public var largeTitleTextAttributes: [NSAttributedString.Key: Any]? {
        get { return _largeTitleTextAttributes }
        set { _largeTitleTextAttributes = newValue }
    }
}

extension Configuration {
    
    public func setBackgroundImage(
        _ backgroundImage: UIImage?,
        for barPosition: UIBarPosition = .any,
        barMetrics: UIBarMetrics = .default) {
        self.backgroundImage = backgroundImage
        self.barPosition = barPosition
        self.barMetrics = barMetrics
    }
}

