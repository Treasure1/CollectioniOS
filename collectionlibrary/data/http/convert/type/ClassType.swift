//
//  ClassType.swift
//  CollectionLibrarySwift
//
//  Created by Huatu on 2020/1/19.
//  Copyright © 2020 YoungManSter. All rights reserved.
//

public class ClassType: ModelType, PropertyType, LayoutType {
    private(set) var layout: UnsafeMutablePointer<ClassLayout>!
    public private(set) var `super`: ClassType?
//    public private(set) var isPureSwiftClass: Bool = false
    
    override func build() {
        super.build()
        
        layout = builtLayout()
        genericTypes = builtGenericTypes()
        properties = builtProperties()
        
        `super` = Metadata.type(layout.pointee.superclass) as? ClassType
        if let superProperties = `super`?.properties {
            properties = properties ?? []
            properties!.insert(contentsOf: superProperties, at: 0)
        }
        
        /// Not sure
//        isPureSwiftClass = (layout.pointee.rodata ~>> UnsafePointer<UInt8>.self).pointee > 0
    }
    
    override public var description: String {
        return "\(name) { kind = \(kind), properties = \(properties ?? []), genericTypes = \(genericTypes ?? []), super = \(`super` != nil ? String(describing: `super`!) : "nil") }"
    }
}

