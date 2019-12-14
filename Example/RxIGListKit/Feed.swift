//
//  Feed.swift
//  RxIGListKit_Example
//
//  Created by Bruce-pac on 2019/3/24.
//  Copyright © 2019 RxSwiftCommunity. All rights reserved.
//

import Foundation
import IGListDiffKit
import RxIGListKit

class Feed: SectionModelDiffable {

    typealias ObjectType = Feed

    func diffIdentifier() -> NSObjectProtocol {
        return id as NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? Feed else { return false }
        return id == object.id
    }

    var id: Int = 1
    var name: String = ""
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }


}
