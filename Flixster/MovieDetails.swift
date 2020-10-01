//
//  MovieDetails.swift
//  Flixster
//
//  Created by Shreyas Pant on 9/28/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetails: UIViewController {

    @IBOutlet weak var backDrop: UIImageView!
    @IBOutlet weak var synopsis: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var poster: UIImageView!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsis.text = movie["overview"] as? String
        synopsis.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185/"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string : baseUrl + posterPath)
        
        poster.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string : "https://image.tmdb.org/t/p/w780/" + backdropPath)
        
        backDrop.af_setImage(withURL: backdropUrl!)
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
