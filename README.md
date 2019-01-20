# ASHSearchedViewController

Navigation bar-integrated search interface

ASHSearchedViewController is lightweight UIViewController subclass that provides a navigation bar-integrated searching interface
with a search button, searchbar, cancel button and rich customization capabilities.


## Example

First thing first - import the library:

```Swift
import ASHSearchedViewController
```

Then, you should make your viewcontroller subclass of ASHSearchedViewController instead of UIViewController:

```Swift

class MyViewController: ASHSearchedViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

```

Finally, you should override ```searchControllerDidPerformSearch(with searchText: String)``` to provie actual implementation
of your search:

```Swift

override func searchControllerDidPerformSearch(with searchText: String) {
        print("Searched term: \(searchText)")
}

```

## Requirements

ASHSearchedViewController works with iOS 9.0 or above.

## Installation

### CococaPods

Add to your podfile:

```bash
pod 'ASHSearchedViewController'
```

## Customization

ASHSearchedViewController provides a handful of methods to override in order to customize appearance:

```Swift
///Override to provide your custom color for the search button.
open var searchButtonTintColor: UIColor {
    return UIColor(red: 0, green: 122/255, blue: 1, alpha: 1)
}

///Override to provide your custom font for search button text and placeholder.
open var searchBarFont: UIFont {
    return UIFont.systemFont(ofSize: 16)
}

///Override to provide your custom placeholder for the search bar.
open var searchBarPlaceholder: String {
    return "Search"
}

///Override to provide your custom text for the cancel button.
open var searchBarCancelButtonText: String {
    return "Cancel"
}

///Override to provide your custom color for search bar placeholder text.
open var searchBarCursorColor: UIColor {
    return UIColor.lightGray
}

///Override to provide your custom color for search bar text.
open var searchBarTextColor: UIColor {
    return UIColor.black
}

///Override to provide your custom color search bar for cancel button.
open var searchBarCancelButtonColor: UIColor {
    return UIColor(red: 0, green: 122/255, blue: 1, alpha: 1)
}

///Override to provide your custom font for search bar cancel button.
open var searchBarCancelButtonFont: UIFont {
    return UIFont.boldSystemFont(ofSize: 16)
}
```

## License

ASHSearchedViewController is licensed under MIT License.

## Contact

xedartmail@gmail.com
