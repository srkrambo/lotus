//
//  AnimationLayerDSL.swift
//  Lotus
//
//  Created by Vladislav Kondrashkov on 8/31/19.
//  Copyright © 2019 Vladislav Kondrashkov. All rights reserved.
//

public struct AnimationLayerDSL {
    let layer: CALayer
    let animationQueue: AnimationQueue

    init(layer: CALayer) {
        self.layer = layer
        self.animationQueue = AnimationQueue(layer: layer)
    }

    @discardableResult
    public func runAnimation(_ closure: (AnimationMaker) -> Void) -> AnimationLayerChainDSL {
        let animationGroup = AnimationMaker.makeAnimation(item: layer, closure: closure)
        animationQueue.push(animationGroup)
        animationQueue.run()
        return AnimationLayerChainDSL(layer: layer, animationQueue: animationQueue)
    }
}