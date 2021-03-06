//: #### Other pages
//:
//: * [Demo for `swiftgen colors`](Colors-Demo)
//: * [Demo for `swiftgen coredata`](CoreData-Demo)
//: * [Demo for `swiftgen fonts`](Fonts-Demo)
//: * [Demo for `swiftgen ib`](InterfaceBuilder-Demo)
//: * Demo for `swiftgen json`
//: * [Demo for `swiftgen plist`](Plist-Demo)
//: * [Demo for `swiftgen strings`](Strings-Demo)
//: * [Demo for `swiftgen xcassets`](XCAssets-Demo)
//: * [Demo for `swiftgen yaml`](YAML-Demo)

// setup code
private final class BundleToken {}
bundle = Bundle(for: BundleToken.self)

//: #### Example of code generated by swiftgen json with "inline-swift4" template

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - JSON Files

// swiftlint:disable identifier_name line_length number_separator type_body_length
internal enum JSONFilesInline {
  internal enum Configuration {
    internal static let apiVersion: String = "2"
    internal static let country: Any? = nil
    internal static let environment: String = "staging"
    internal static let options: [String: Any] = ["screen-order": ["1", "2", "3"]]
  }
  internal enum Documents {
    internal enum Document1 {
      internal static let items: [String] = ["Mark McGwire", "Sammy Sosa", "Ken Griffey"]
    }
    internal enum Document2 {
      internal static let items: [String] = ["Chicago Cubs", "St Louis Cardinals"]
    }
  }
  internal enum GroceryList {
    internal static let items: [String] = ["Eggs", "Bread", "Milk"]
  }
  internal enum Mapping {
    internal static let car: Any? = nil
    internal static let foo: [String: Any] = ["bar": "banana", "baz": "orange"]
    internal static let hello: String = "world"
    internal static let weight: Double = 33.3
  }
  internal enum Version {
    internal static let value: String = "1.2.3.beta.4"
  }
}
// swiftlint:enable identifier_name line_length number_separator type_body_length

//: #### Example of code generated by swiftgen json with "runtime-swift4" template

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - JSON Files

// swiftlint:disable identifier_name line_length type_body_length
internal enum JSONFilesRuntime {
  internal enum Configuration {
    private static let _document = JSONDocument(path: "configuration.json")
    internal static let apiVersion: String = _document["api-version"]
    internal static let country: Any? = _document["country"]
    internal static let environment: String = _document["environment"]
    internal static let options: [String: Any] = _document["options"]
  }
}
// swiftlint:enable identifier_name line_length type_body_length

//: #### Usage Example

// Access content embedded inline in Swift
let list = JSONFilesInline.GroceryList.items
let dictionary = JSONFilesInline.Configuration.options
let name = JSONFilesInline.Version.value

// Or access content by loading JSON file at runtime
let stringValue = JSONFilesRuntime.Configuration.apiVersion
let info = JSONFilesRuntime.Configuration.options
