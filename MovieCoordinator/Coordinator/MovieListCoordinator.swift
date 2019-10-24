//
//  MovieListCoordinator.swift
//  MovieCoordinator
//
//  Created by Abdulrahman on 10/24/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import Foundation
import UIKit

class MovieListCoordinator:Coordinator {
    
    private var presenter: UINavigationController
    private var movieDetailCoordinator: MovieDetailCoordinator?
    private var movieListViewController: MovieListViewController?
    private var movies: [Movie]
    
    
    init(presenter: UINavigationController, movies: [Movie]) {
          self.presenter = presenter
          self.movies = movies
      }
    
    func start() {
        let movieListViewController = MovieListViewController()
        movieListViewController.delegate = self
        movieListViewController.movies = movies
        
         self.movieListViewController = movieListViewController
        self.presenter.pushViewController(movieListViewController, animated: true)
        
    }
    
    
}

extension MovieListCoordinator : MovieListViewControllerDelegate {
    func movieListViewController(_ controller: MovieListViewController, didSelect movie: Movie) {
        let movieDetailCoordinator = MovieDetailCoordinator(presenter: presenter, movie: movie)
        
        self.movieDetailCoordinator = movieDetailCoordinator
        movieDetailCoordinator.start()
    }
    
    
}

