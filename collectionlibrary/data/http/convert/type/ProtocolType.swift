//
//  ProtocolType.swift
//  CollectionLibrarySwift
//
//  Created by Huatu on 2020/1/19.
//  Copyright © 2020 YoungManSter. All rights reserved.
//

public class ProtocolType: BaseType, LayoutType {
    private(set) var layout: UnsafeMutablePointer<ProtocolLayout>!
    
    override func build() {
        super.build()
        
        layout = builtLayout()
    }
}
