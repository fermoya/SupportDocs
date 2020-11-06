//
//  SupportOptions+URLs.swift
//  SupportDocsSwiftUI
//
//  Created by Zheng on 10/25/20.
//

import Foundation

extension SupportOptions {
    
    /**
     `URL`s of the data source JSON and a custom 404 error page.
     */
    struct URLs {
        
        /**
         The raw JSON file generated by the GitHub Action.
         
         This is where SupportDocs gets the data to display. An example file can be found at [https://asdasdasdasd](https://TODOTODO)
         
         # Filtering documents
         You can further filter which Documents get displayed by assigning `tag`s to the Markdown file on GitHub.
         1. Add a tag to the top of GitHub Markdown file (next to the **title** parameter)
         2. Create a [category](x-source-tag://Category) inside your app
         3. Assign your `category` to `SupportOptions.categories`
        */
        var dataSource: URL = URL(string: "https://google.com")!
        
        /**
         Web page to display in case something goes wrong.
         */
        var error404: URL = URL(string: "https://google.com")!
    }
}
