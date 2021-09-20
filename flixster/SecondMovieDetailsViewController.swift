//
//  SecondMovieDetailsViewController.swift
//  flixster
//
//  Created by Airi Shimamura on 9/19/21.
//

import UIKit
import AlamofireImage

class SecondMovieDetailsViewController: UIViewController {
   
    
    @IBOutlet weak var backdropView2: UIImageView!
    @IBOutlet weak var posterView2: UIImageView!
    @IBOutlet weak var titleLabel2: UILabel!
    @IBOutlet weak var synopsisLabel2: UILabel!
    
    var movie: [String: Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
                
        titleLabel2.text = movie["title"] as? String
        titleLabel2.sizeToFit()
        
        synopsisLabel2.text = movie["overview"] as? String
        synopsisLabel2.sizeToFit()

        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
    
        posterView2.af.setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
    
        backdropView2.af.setImage(withURL: backdropUrl!)
        
        
        // Do any additional setup after loading the view.
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
