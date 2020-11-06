//
//  SupportOptions+ProgressBar.swift
//  SupportDocsSwiftUI
//
//  Created by Zheng on 10/25/20.
//

import SwiftUI

public extension SupportOptions {
    
    /**
     Options for the progress bar color
     */
    struct ProgressBar {
        
        public init(
            foregroundColor: UIColor = UIColor.systemBlue,
            backgroundColor: UIColor = UIColor.secondarySystemBackground
        ) {
            self.foregroundColor = foregroundColor
            self.backgroundColor = backgroundColor
        }
        
        /**
         Color of the moving part of the progress bar
         */
        var foregroundColor: UIColor = UIColor.systemBlue
        
        /**
         Color of the progress bar's background
         */
        var backgroundColor: UIColor = UIColor.secondarySystemBackground
    }
}

