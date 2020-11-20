![SupportDocs Logo](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/SupportDocsSmall.png)

![SupportDocs Header](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/HeaderImage.png)

### Generate help centers for your iOS apps, with Markdown!

# SupportDocs is currently under heavy development. Check back in a couple days!

## Table of Contents

-   [How It Works](#how-it-works)
-   [Installation](#installation)
    -   [Set Up the GitHub Repository](#set-up-the-github-repository)
    -   [Install the Library](#install-the-library)
        -   [CocoaPods](#cocoapods)
        -   [Swift Package Manager](#swift-package-manager)
-   [Usage](#usage)
    -   [Using the GitHub Repository](#using-the-github-repository)
        -   [Adding and Editing Documents](#adding-and-editing-documents)
        -   [Tagging Documents](#tagging-documents)
        -   [Extended Documentation ↗](Documentation/UsingTheRepository.md)
    -   [Using the Library](#using-the-library)
        -   [SwiftUI](#swiftui)
        -   [UIKit](#uikit)
        -   [Result](#result)
        -   [Extended Documentation ↗](Documentation/UsingTheRepository.md)
-   [Library Customization](Documentation/LibraryCustomization.md)
    -   [Examples](Documentation/LibraryCustomization.md#examples)
        -   [SwiftUI](Documentation/LibraryCustomization.md#swiftui)
        -   [UIKit](Documentation/LibraryCustomization.md#uikit)
    -   [Categories](Documentation/LibraryCustomization.md#categories)
        -   [One Tag](Documentation/LibraryCustomization.md#one-tag)
        -   [Two Tags](Documentation/LibraryCustomization.md#two-tags)
        -   [Multiple Tags in One Category](Documentation/LibraryCustomization.md#multiple-tags-in-one-category)
    -   [Navigation Bar](Documentation/LibraryCustomization.md#navigation-bar)
        -   [Title](Documentation/LibraryCustomization.md#title)
        -   [Title Color](Documentation/LibraryCustomization.md#title-color)
        -   [Dismiss Button Title](Documentation/LibraryCustomization.md#dismiss-button-title)
        -   [Button Tint Color](Documentation/LibraryCustomization.md#button-tint-color)
        -   [Background Color](Documentation/LibraryCustomization.md#background-color)
    -   [Progress Bar](Documentation/LibraryCustomization.md#progress-bar)
        -   [Foreground Color](Documentation/LibraryCustomization.md#foreground-color)
        -   [Background Color](Documentation/LibraryCustomization.md#background-color-1)
    -   [List Style](Documentation/LibraryCustomization.md#list-style)

## How It Works

1. Write documents in Markdown
2. Let GitHub Pages compile the documents into a website
3. Wait for the GitHub Action to generate a JSON data source and a README for you
4. The SupportDocs library downloads the JSON and compiles it into a customizable format

![How It Works - Graphic](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/HowItWorks.png)

## Installation

Installing SupportDocs takes two steps:

1. Set up the GitHub repository where you write and host your documents
2. Install the library inside your app

### Set Up the GitHub Repository

This will be where you write your documents. GitHub Pages will translate your Markdown into HTML, and a custom GitHub Action will automatically compile the web pages into a JSON file.

1. Scroll up to the top of this page and click <kbd>Use this template</kbd>
2. Enter a repository name -- this can be whatever you want
3. Make sure it's set to `Public` (If you are using the free version of GitHub, GitHub Pages only works for public repos)
4. Make sure to check **Include all branches**. This is **really** important.
5. Click <kbd>Create repository from template</kbd>
6. In your brand new repository, click the <kbd>Settings</kbd> tab
7. Scroll down to the GitHub Pages section, and select `DataSource` branch and **/ (root)** folder. Then click <kbd>Save</kbd>.
8. That's it for the GitHub repository! Now time to install the library in your app.

| ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/GitHubRepo1.png) | ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/GitHubRepo2.png) |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/GitHubRepo3.png) | ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/GitHubRepo4.png) |

---

### Install the Library

This is the actual interface that your users will see. You can install using **CocoaPods** or **Swift Package Manager**, whichever one you prefer.

#### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To install SupportDocs into your Xcode project using CocoaPods, add it in your `Podfile`:

```ruby
pod 'SupportDocs'
```

#### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is built into Xcode, which makes it really easy to use.

1. Go to your project settings
2. Click your project
3. Switch to the <kbd>Swift Packages</kbd> tab
4. Click the <kbd>+</kbd> button
5. Enter `https://github.com/aheze/SupportDocs` in the text field
6. Click <kbd>Next</kbd>
7. Enter the latest version, `0.0.30`, in the text field. Leave <kbd>Up to Next Major</kbd> selected.
8. Click <kbd>Next</kbd>
9. Click <kbd>Finish</kbd>, and you're done!

| ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/SPM1.png) | ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/SPM2.png) |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/SPM3.png) | ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/SPM4.png) |

## Usage

SupportDocs is pretty simple to use, with two parts: the GitHub repository and the library in your app.

The GitHub repository is where you add and edit your documents using Markdown. This is online, so you can edit at any time and always show the latest information to your users. All your documents are compiled into a single JSON file, the URL of which you'll pass into the library.
The library is what's displayed to your users, in your app. All it needs is the URL of the JSON file, and you can either use SwiftUI or UIKit to embed it.

<details>
  <summary>Show Extended Documentation</summary>

-   [Overview](Documentation/UsingTheRepository.md#overview)
-   [Using the `DataSource` Branch](Documentation/UsingTheRepository.md#using-the-datasource-branch)
-   [Adding and Editing Documents](Documentation/UsingTheRepository.md#adding-and-editing-documents)
-   [Tagging Documents](Documentation/UsingTheRepository.md#tagging-documents)
-   [Deleting Documents](Documentation/UsingTheRepository.md#deleting-documents)

</details>


## Using the GitHub Repository
In you brand new repository that you set up earlier, switch to the `DataSource` branch. The example documents are inside `Sample-Boba`, `Sample-FastFood`, and `Sample-Smoothies` -- take a look around. Here's an [explanation of the directory listing](Documentation/DataSource.md#directory-listing).

In you brand new repository that you set up earlier, switch to the `DataSource` branch. The example documents are inside the `Sample-Boba`, `Sample-FastFood`, and `Sample-Smoothies` folders -- take a look around. Here's a guide:

<details>
<summary><strong>Show guide</strong></summary>
  
<hr>
  
![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/Guide.png)

- `.github/workflows` is for the GitHub Action, for compiling your documents into JSON
- `Images` contains the images used in the example documents
- `Sample-Boba` contains all documents tagged with <kbd>boba</kbd>
- `Sample-FastFood` contains all documents tagged with <kbd>fastFood</kbd>
- `Sample-Smoothies` contains all documents tagged with <kbd>smoothies</kbd>
- `_data` contains the generated data source URL
- `_layouts` is for GitHub Pages to convert your Markdown into HTML
- `_sass` is where you can customize the look of the HTML, including light and dark mode colors
- `_scripts` contains the script used by the GitHub Action, as well as the README template. This template is what you should edit if you want to change the README at all -- if you change it directly, your changes will be overriden.
- `assets/css` applies the `_sass`
- `.gitignore` is for git to ignore unnecessary files
- `404.md` is the 404 document that will be displayed if your URLs are wrong. You can also pass this into `options.other.error404` in case your data source URL fails.
- `README.md` is for your reference. It contains a link to the data source URL, and a table of contents that shows all your documents. **Do not** edit this file directly -- instead, edit the file in `_scripts/README.md`.
- `_config.yml` sets the default theme, "Primer," for GitHub Pages. We recommend that you don't change this, as we customized dark mode specifically for the "Primer" theme -- you'll need to configure `assets/css/main.scss` if you use your own theme.

<hr>

</details>

Documents can be placed in the root directory or a subfolder. However, we recommmend that you use folders to organize your documents. In the example,

-   Documents tagged with `boba` are in the `Sample-Boba` folder
-   Documents tagged with `fastFood` are in the `Sample-FastFood` folder
-   Documents tagged with `smoothies` are in the `Sample-Smoothies` folder

#### Adding and Editing Documents

- To add a document, click the <kbd>Create new file</kbd> button.
- If you want to add it to a folder, navigate to the folder first and then click the <kbd>Create new file</kbd> button.
    - If you want to *create a new folder*, click <kbd>Create new file</kbd> -- then, in the filename, first put the folder name, then a slash (`/`), followed by the filename (Example: `fastFood/Burgers.md`). Read more [here](https://stackoverflow.com/a/63635965/14351818).

| Add a Document                                                                                                               | Add a Document in the `Sample-Boba` Subfolder                                                                                   |
| :--------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------ |
| ![Root Directory "Create new file"](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/CreateNewFile.png) | ![Subfolder "Create new file"](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/CreateNewFileInFolder.png) |

Then, to make the document eligible for SupportDocs, you must fulfill these criteria:

-   The document extension must end in `.md`
-   At the top of the document (this is called the [front matter](https://jekyllrb.com/docs/front-matter/)), you need to fill in the `title`. We strongly suggest you add [tags](#tagging-documents) too.

```yaml
---
title: Buy blue boba
tags: boba
---

```

![Example File With Front Matter Highlighted](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/DocumentCriteria.png)

The `title` is what will be displayed in each row of the list, in the SupportDocs library. Once you select a row, it's also what's shown as the title of the navigation bar.

| ![Title in Library List](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/TitleInList.png) | ![Title in Navigation Bar](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/TitleInNavigationBar.png) |
| --------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |


Everything after the `---` of the front matter is your document's content. You use [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) to write your documents.

<table>
<tr>
<td>
  Markdown
</td>
<td>
  Result
</td>
</tr>
<tr>
<td>
  
```markdown
---
title: Buy blue boba
tags: boba
---

# Buy blue boba

Blue and yummy. Buy this at [google.com](https://google.com)

1. Eat
2. Eat
3. Eat
4. Eat
5. Eat

![Blue Boba Image](https://raw.githubusercontent.com/aheze/SupportDocs/DataSource/Images/blueBoba.jpg)

````
</td>
<td>
  <img src="https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/MarkdownResult.png">
</td>
</tr>
</table>

#### Tagging Documents

With tags, you get a lot of control over what to display in the library. To add tags, just fill in the `tags`, underneath the `title`. For example, check out this [example document](https://github.com/aheze/SupportDocs/blob/DataSource/Sample-Boba/BuyBlueBoba.md) in the `DataSource` branch.

```yaml
---
title: Buy blue boba
tags: boba
---
````

This document has the tag `boba`. As you might assume, there are other documents in the `DataSource` branch also tagged with `boba`.

Here is a graphic which shows the documents, titles, and tags in the `DataSource` branch.

![Documents with Front Matter](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Tags.png)

Once your documents have tags, you can choose to show which documents to show and which ones to hide, in the library. This is covered in the [Categories section](Documentation/LibraryCustomization.md#categories) of the library customization documentation.

---

### Using the Library
The library is the view that you embed in your app, and what the user sees. But before you present it, you need to get the data source URL first! Go to your brand-new repo's **DataSource** branch, scroll down to the `README`, and **copy the URL**.

![Data Source URL Location](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/CopyDataSourceURL.png)

The custom GitHub Action generated this URL for you, so keep it safe! 

Now you can present the view in your app. You can use SwiftUI *or* UIKit, and here's the least code that you need to write for it to work.

#### SwiftUI
```Swift
import SwiftUI
import SupportDocs

struct SwiftUIExampleViewMinimalCode: View {
    let dataSource = URL(string: "https://raw.githubusercontent.com/aheze/MyHelpCenter/DataSource/_data/supportdocs_datasource.json")!
    @State var supportDocsPresented = false
    
    var body: some View {
        Button("Present SupportDocs from SwiftUI!") { supportDocsPresented = true }
        .sheet(isPresented: $supportDocsPresented, content: {
            SupportDocsView(dataSourceURL: dataSource, isPresented: $supportDocsPresented)
        })
    }
}
```

#### UIKit
```Swift
import UIKit
import SupportDocs

class UIKitExampleControllerMinimalCode: UIViewController {
    
    /**
     Connect this inside the storyboard.
     
     This is just for demo purposes, so it's not connected yet.
     */
    @IBAction func presentButtonPressed(_ sender: Any) {
        
        let dataSource = URL(string: "https://raw.githubusercontent.com/aheze/MyHelpCenter/DataSource/_data/supportdocs_datasource.json")!
        
        let supportDocsViewController = SupportDocsViewController(dataSourceURL: dataSource)
        self.present(supportDocsViewController, animated: true, completion: nil)
    }
}
```

#### Result

![Result Graphic](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/BasicResult.png)

Now that you have the library set up and working, you can hop on over to the [library customization](Documentation/LibraryCustomization.md) section and customize SupportDocs to your liking. Perhaps add a "Dismiss" button or only show documents with specific tags.

---

## Customization
SupportDocs is heavily customizable, both in the rendered web page and the library view.

### The Rendered Web Page

### The Library View

Pretty much everything in the SupportDocs library can be customized through the `SupportOptions` struct.
