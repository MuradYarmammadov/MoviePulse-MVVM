//
//  DetailsMovieViewModel.swift
//  MoviePulse MVVM
//
//  Created by Murad Yarmamedov on 09.12.23.
//

import Foundation

class DetailsMovieViewModel {
    
    var movie: Movie
    
    var movieTitle: String
    var movieDescription: String
    var movieID: Int
    var movieImage: URL?
    
    init(movie: Movie) {
        self.movie = movie
        
        self.movieTitle = movie.title ?? movie.name ?? ""
        self.movieDescription = movie.overview ?? ""
        self.movieID = movie.id
        self.movieImage = makeImageUrl(movie.backdropPath ?? "")
    }
    
    func makeImageUrl(_ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageCode)")
    }
}
