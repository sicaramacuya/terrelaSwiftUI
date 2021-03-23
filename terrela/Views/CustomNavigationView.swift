//
//  CustomNavigationView.swift
//  terrela
//
//  Created by Eric Morales on 3/20/21.
//

import SwiftUI

struct CustomNavigationView: UIViewControllerRepresentable {
    
    func makeCoordinator() -> Coordinator {
        return CustomNavigationView.Coordinator(parent: self)
    }
    
    
    // Just Change Your View That Requires Search Bar...
    var view: AnyView
    
    // Ease of use...
    var largeTitle: Bool
    var title: String
    var placeHolder: String
    
    // onSearch and onCancel Closures...
    var onSearch: (String) -> ()
    var onCancel: () -> ()
    
    // require closure on Call...
    init(view: AnyView, placeHolder: String? = "Search", largeTitle: Bool? = true, title: String, onSearch: @escaping (String) -> (), onCancel: @escaping () -> ()) {
        
        self.title = title
        self.largeTitle = largeTitle!
        self.placeHolder = placeHolder!
        self.view = view
        self.onSearch = onSearch
        self.onCancel = onCancel
    }
    
    // Integrating UIKit Navigation Controller With SwiftUI View...
    func makeUIViewController(context: Context) -> UINavigationController {
        
        // requires SwiftUI View
        let childView = UIHostingController(rootView: view)
        
        
        let controller = UINavigationController(rootViewController: childView)
        
        // Nav Bar Data...
        controller.navigationBar.topItem?.title = title
        controller.navigationBar.prefersLargeTitles = largeTitle
        
        // Search Bar...
        let searchController = UISearchController()
        searchController.searchBar.placeholder = placeHolder
        
        // setting delegate...
        searchController.searchBar.delegate = context.coordinator
        
        // Setting Search Bar in NavBar
        controller.navigationBar.topItem?.searchController = searchController
        // disabling hide on scroll...
        controller.navigationBar.topItem?.hidesSearchBarWhenScrolling = false
        // disabling dim background
        searchController.obscuresBackgroundDuringPresentation = false
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        
        // updating real time...
        uiViewController.navigationBar.topItem?.title = title
        uiViewController.navigationBar.topItem?.searchController?.searchBar.placeholder = placeHolder
        uiViewController.navigationBar.prefersLargeTitles = largeTitle
        
    }
    
    // search bar delegate ...
    
    class Coordinator: NSObject, UISearchBarDelegate {
        
        
        var parent: CustomNavigationView
        
        init(parent: CustomNavigationView) {
            self.parent = parent
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            // when text changes...
            self.parent.onSearch(searchText)
        }
        
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            // when cancel button is clicked...
            self.parent.onCancel()
        }
    }
    
}


