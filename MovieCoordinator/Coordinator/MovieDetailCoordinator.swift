//
//  MovieDetailCoordinator.swift
//  MovieCoordinator
//
//  Created by Abdulrahman on 10/24/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import Foundation
import UIKit
class MovieDetailCoordinator:Coordinator {
    private let presenter: UINavigationController
    private var movieDetailViewController: MovieDetailViewController?
    private let movie: Movie
    
    init(presenter: UINavigationController, movie: Movie) {
        self.presenter = presenter
        self.movie = movie
    }
    
    func start() {
        let movieDetailViewController = MovieDetailViewController()
        movieDetailViewController.movie = movie
        self.movieDetailViewController = movieDetailViewController
        presenter.pushViewController(movieDetailViewController, animated: true)
    }
    
    
}
