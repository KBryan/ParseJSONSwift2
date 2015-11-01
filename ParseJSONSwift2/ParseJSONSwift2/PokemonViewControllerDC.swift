//
//  PokemonViewControllerDC.swift
//  ParseJSONSwift2
//
//  Created by KBryan on 2015-11-01.
//  Copyright © 2015 KBryan. All rights reserved.
//

import UIKit

class PokemonViewControllerDC: UIViewController {

    var pokemon:Pokemon!
    
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var myPokemonName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pokemonName.text = pokemon.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
