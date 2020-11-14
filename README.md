![SupportDocs Logo](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/SupportDocsSmall.png)

![SupportDocs Header](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/HeaderImage.png)

### Generate help centers for your iOS apps, with Markdown!

# SupportDocs is currently under heavy development. Check back in a couple days!

## Table of Contents

-   [How It Works](#how-it-works)
-   [Installation](#installation)
    -   [Set up the GitHub repo](#set-up-the-github-repo)
    -   [Install the library](#install-the-library)
         -   [CocoaPods](#cocoapods)
         -   [Swift Package Manager](#swift-package-manager)
-   [Usage](#usage)
    - [Using the GitHub Repo](#using-the-github-repo)
        - [Adding and Editing Documents](#adding-and-editing-documents)
        - [Tagging Documents](#tagging-documents)
        - [Deleting Documents](#deleting-documents)
    - [Using the Library](#using-the-library)
        - [SwiftUI](#swiftui)
        - [UIKit](#uikit)
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
Installing SupportDocs takes 2 steps: 
1. Set up the GitHub repo where you write your documents
2. Install the library inside your app

### Set Up the GitHub Repo
This will be where you write your documents. GitHub Pages will translate your Markdown into HTML, and a custom GitHub Action will automatically compile the web pages into a JSON file.

1. Scroll up to the top of this page and click <kbd>Use this template</kbd>
2. Enter a repo name -- this can be whatever you want
3. Make sure it's set to `Public` (If you have `GitHub free`, GitHub Pages only works for public repos)
4. Make sure to check **Include all branches**. This is **really** important.
5. Click <kbd>Create repository from template</kbd>
6. In your brand new repo, click the <kbd>Settings</kbd> tab
7. Scroll down to the GitHub Pages section, and select **DataSource** branch and **/ (root)** folder. Then click <kbd>Save</kbd>.
8. That's it for the GitHub repo! Now time to install the library in your app.

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/GitHubRepo1.png) | ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/GitHubRepo2.png)
| --- | --- |
![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/GitHubRepo3.png) | ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/GitHubRepo4.png)

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
3. Click the <kbd>+</kbd> button
4. Enter `https://github.com/aheze/SupportDocs` in the text field
5. Click <kbd>Next</kbd>
6. Enter the latest version, `0.0.30`, in the text field. Leave <kbd>Up to Next Major</kbd> selected.
7. Click <kbd>Next</kbd>
8. Click <kbd>Finish</kbd>, and you're done!

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/SPM1.png) | ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/SPM2.png)
| --- | --- |
![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/SPM3.png) | ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Installation/SPM4.png)

---

## Usage
SupportDocs is pretty simple to use, but there's 2 parts: the GitHub repo and the library in your app.
- The GitHub repo is where you add and edit your documents, using Markdown. This is online, so you can edit at any time and always show the latest information to your users. All your documents are compiled into a single JSON file, which you'll pass into the library.
- The library is what's displayed to your users, in your app. All it needs is the url of the JSON file, and you can either use SwiftUI or UIKit to embed it.

### Using the GitHub Repo

In you brand new repo that you set up earlier, switch to the **DataSource** branch. The example documents are inside `Sample-Boba`, `Sample-FastFood`, and `Sample-Smoothies` -- take a look around. Here's a guide:
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

Documents don't need to be in folders -- they can be in the root directory, or inside a folder inside a folder, whatever. However, we recommmend that you use folders to organize your documents. In the example:
- Documents tagged with <kbd>boba</kbd> are in the `Sample-Boba` folder,
- Documents tagged with <kbd>fastFood</kbd> are in the `Sample-FastFood` folder, and
- Documents tagged with <kbd>boba</kbd> are in the `Sample-Smoothies` folder.

#### Adding and Editing Documents

To add a document, just click the <kbd>Create new file</kbd> button. Or, to add it to a folder, navigate to the folder and then click the <kbd>Create new file</kbd> button.

Add a document | Add a document in `Sample-Boba` folder
:--- | :---
![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/CreateNewFile.png) | ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/CreateNewFileInFolder.png)

If you want to add a folder, see [here](https://stackoverflow.com/a/63635965/14351818).

Then, to make the document eligible for SupportDocs, you must fulfill these criteria:
1. The document extension must end in `.md`
2. At the top of the document (this is called the [Front Matter](https://jekyllrb.com/docs/front-matter/)), you need to fill in the `title`. We strongly suggest you add [tags](#tagging-documents) too.
```yaml
---
title: Buy blue boba
tags: boba
---
```

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/DocumentCriteria.png)

The `title` is what will be displayed in each row of the list, in the SupportDocs library. Once you select a row, it's also what's shown as the title of the navigation bar.

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/TitleInList.png) | ![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/TitleInNavigationBar.png)
--- | ---

Everything after the `---` of the Front Matter will be the content of your document. You use [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) to write this!
<table>
<tr>
<td>
  Markdown
</td>
<td>
  Result:　　　　　　　　　　　　　　　↓
</td>
</tr>
<tr>
<td>
  
```Markdown
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

![](https://raw.githubusercontent.com/aheze/SupportDocs/DataSource/Images/blueBoba.jpg)
```
</td>
<td>
  <img src="https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/MarkdownResult.png">
</td>
</tr>
</table>

That's it for adding and editing documents!

#### Tagging Documents

With tags, you get a lot of control over what to display in the library. To add tags, just fill in the `tags`, underneath the `title`. For example, check out this [example document](https://github.com/aheze/SupportDocs/blob/DataSource/Sample-Boba/BuyBlueBoba.md) in the `DataSource` branch.

```yaml
---
title: Buy blue boba
tags: boba
---

```

This document is tagged with <kbd>boba</kbd>. As you might assume, there are other documents in the `DataSource` branch also tagged with <kbd>boba</kbd> -- here they are:

![Documents with tags](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Tags.png)

Once your documents have tags, you can choose to show which documents to show and which ones to hide, in the library. This is covered in the `Categories` documentation.

#### Deleting Documents

Select the document to delete, then just click on the trash icon in the top-right corner.


---

### Using the Library
The library is the view that you embed in your app, and what the user sees. But before you present it, you need to get the data source URL first! Go to your brand-new repo's `DataSource` branch, scroll down in the `README`, and **copy the URL**.

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/Usage/CopyDataSourceURL.png)

The custom GitHub Action generated this URL for you, so keep it safe! 

Now you can present the view in your app. You can use SwiftUI *or* UIKit, and here's the least code that you need to write for it to work.

#### SwiftUI
```Swift
import SwiftUI
import SupportDocs

struct SwiftUIExampleViewMinimalCode: View {
    let dataSource = URL(string: "https://raw.githubusercontent.com/aheze/SupportDocs/DataSource/_data/supportdocs_datasource.json")!
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
        
        let dataSource = URL(string: "https://raw.githubusercontent.com/aheze/SupportDocs/DataSource/_data/supportdocs_datasource.json")!
        
        let supportDocsViewController = SupportDocsViewController(dataSourceURL: dataSource)
        self.present(supportDocsViewController, animated: true, completion: nil)
    }
}
```

---

## Library Customization
Pretty much everything in the SupportDocs library can be customized through the `SupportOptions` struct.

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/OptionsPreview/CustomizableOptions.png)

### Categories

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/OptionsPreview/CategoriesPreview.png)
### Navigation Bar

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/OptionsPreview/NavigationBarPreview.png)
### Progress Bar

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/OptionsPreview/ProgressBarPreview.png)
### List Style

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/OptionsPreview/ListStylePreview.png)
### Navigation View Style

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/OptionsPreview/NavigationStylePreview.png)
### Other

![](https://raw.githubusercontent.com/aheze/SupportDocs/main/Assets/OptionsPreview/OtherPreview.png)



