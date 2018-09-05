//
//  Playlist+Convenience .swift
//  PlaylistPractice2
//
//  Created by Porter Frazier on 9/5/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import Foundation

extension Playlist {
    
    convenience init(name: String) {
        
        self.init(context: CoreDataStack.context)
        self.name = name
    }
    
}
