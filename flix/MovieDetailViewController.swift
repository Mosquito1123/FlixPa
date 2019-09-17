//
//  MovieDetailViewController.swift
//  flix
//
//  Created by Carlos Estrada on 9/16/19.
//  Copyright © 2019 Carlos Estrada. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailViewController: UIViewController {
    
    var movie: [String:Any]!

    
    @IBOutlet weak var movieBackdrop: UIImageView!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = movie["title"] as? String
        movieTitle.text = self.title
        movieDescription.text = movie["overview"] as? String
        
        let releaseDate = movie["release_date"] as! String
        movieYear.text = String(releaseDate.prefix(4))

        let posterBaseURL = "https://image.tmdb.org/t/p/w185/"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: posterBaseURL + posterPath)

        moviePoster.af_setImage(withURL: posterURL!)
        
        let backdropbaseURL = "https://image.tmdb.org/t/p/w780/"
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: backdropbaseURL + backdropPath)
        
        movieBackdrop.af_setImage(withURL: backdropURL!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
