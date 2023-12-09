//
//  DetailsMovieViewController.swift
//  MoviePulse MVVM
//
//  Created by Murad Yarmamedov on 09.12.23.
//

import UIKit
import SDWebImage

class DetailsMovieViewController: UIViewController {
    
    //IBOutlets:
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //ViewModel:
    var viewModel: DetailsMovieViewModel
    
    init(viewModel: DetailsMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsMovieViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }

    private func configView(){
        self.title = "Movie Details"
        
        titleLabel.text = viewModel.movieTitle
        descriptionLabel.text = viewModel.movieDescription
        imageView.sd_setImage(with: viewModel.movieImage)
    }
}
