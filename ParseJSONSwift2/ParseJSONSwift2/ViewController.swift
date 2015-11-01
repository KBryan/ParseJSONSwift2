//
//  ViewController.swift
//  ParseJSONSwift2
//
//  Created by KBryan on 2015-11-01.
//  Copyright © 2015 KBryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "http://swapi.co/api/people/1/"
        let session = NSURLSession.sharedSession()
        let url = NSURL(string: urlString)!
        session.dataTaskWithURL(url) { (data:NSData?, response:NSURLResponse?, error:NSError?) -> Void in
            
            if let responseData = data
            {
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments)
                    if let dict = json as? Dictionary<String,AnyObject> {

                        if let name = dict["name"] as? String,
                        let height = dict["height"] as? String,
                        let birth = dict["birth_year"] as? String,
                        let haircolour = dict["hair_color"] as? String{
                            
                            let person = Person(name: name, height: height, birthYear: birth, hairColour: haircolour)
                            print(person)
                            
                            if let films = dict["films"] as? [String]
                            {
                                print(films)
                            }

                            
                        }
                        
                    }
                } catch {
                    print("Could not serialize")
                }
            }
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

