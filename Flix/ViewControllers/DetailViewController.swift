//
//  DetailViewController.swift
//  Flix
//
//  Created by user143252 on 8/6/18.
//  Copyright © 2018 notserpp. All rights reserved.
//

import UIKit
import AlamofireImage

enum MovieKeys {
    static let title = "title"
}

class DetailViewController: UIViewController {
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let movie = movie {
        titleLabel.text = movie["title"] as? String
        releaseDateLabel.text = movie["release_date"] as? String
        overviewLabel.text = movie["overview"] as? String
        let backdropPathString = movie["backdrop_path"] as! String
        let posterPathString = movie["poster_path"] as! String
        let baseURLString = "https://image.tmdb.org/t/p/original"
        let backdropURL = URL(string: baseURLString + backdropPathString)!
        backDropImageView.af_setImage(withURL: backdropURL)
            
        let posterPathURL = URL(string:  baseURLString + posterPathString)!
            posterImageView.af_setImage(withURL: posterPathURL)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
