//
//  ObjCClassType.swift
//  CollectionLibrarySwift
//
//  Created by Huatu on 2020/1/19.
//  Copyright © 2020 YoungManSter. All rights reserved.
//

/// e.g. NSString
public class ObjCClassType: BaseType, LayoutType {
    private(set) var layout: UnsafeMutablePointer<BaseLayout>!
    
    override func build() {
        super.build()
        
        layout = builtLayout()
    }
}
