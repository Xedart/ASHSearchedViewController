//
//  SHSearchedViewController.swift
//  SHSearchedViewController
//
//  Created by Shkil Artur on 1/10/19.
//  Copyright © 2019 Shkil Artur. All rights reserved.
//

import UIKit

/*

 Provides a navigationitem-integrated search interface
 
 */
open class ASHSearchedViewController: UIViewController {
    
    private var searchBar = ASHSearchBar()
    private let searchButton = ASHSearchBarButtonItem()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        searchButton.target = self
        searchButton.action = #selector(ASHSearchedViewController.searchButtonTapped)
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        searchBar.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 40)
        searchButton.tintColor = searchButtonTintColor
        searchBar.placeholder = searchBarPlaceholder
        setDefaultNavigationItem()
    }
    
    //Trigerred actions:
    
    @objc public func searchButtonTapped() {
        setSearchBarNavigationItem()
    }
    
    //Helpers:
    
    private func setSearchBarNavigationItem() {
        navigationItem.title = nil
        navigationItem.rightBarButtonItem = nil
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: searchBar)
        searchBar.becomeFirstResponder()
        UITextField.appearance(whenContainedInInstancesOf: [type(of: searchBar)]).tintColor = searchBarCursorColor
        UITextField.appearance(whenContainedInInstancesOf: [type(of: searchBar)]).defaultTextAttributes = [NSAttributedString.Key(rawValue: NSAttributedString.Key.font.rawValue): searchBarFont, NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue): searchBarTextColor]
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [type(of: searchBar)]).setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor : searchBarCancelButtonColor,
            NSAttributedString.Key.font : searchBarCancelButtonFont], for: .normal)
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [type(of: searchBar)]).title = searchBarCancelButtonText
    }
    
    private func setDefaultNavigationItem() {
        navigationItem.rightBarButtonItem = searchButton
    }
    
    //Overridable:
    
    ///Ovrride to perform whatever searching you need based on provided search text
    open func searchControllerDidPerformSearch(with searchText: String) {
        //Actual implementation should be provided by subclasses
    }
    
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
}

//UISearchBarDelegate:

extension ASHSearchedViewController: UISearchBarDelegate {
    
    public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchControllerDidPerformSearch(with: searchText)
    }
    
    public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    public func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchControllerDidPerformSearch(with: "")
        searchBar.text = nil
        navigationItem.leftBarButtonItem = nil
        setDefaultNavigationItem()
    }
}
