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
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var tyoeLbl: UILabel!
    
    @IBOutlet weak var defenseLbl: UILabel!
    
    @IBOutlet weak var heightLbl: UILabel!
    
    @IBOutlet weak var podexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseAttackLbl: UILabel!
    
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var currentEvoImg: UIImageView!
    
    @IBAction func disMissButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pokemonName.text = pokemon.name
        let img = UIImage(named: "\(pokemon.pokedexID)")
        mainImage.image = img
        pokemon.downloadPokemonDetails { () -> () in
            // this will be called after download is completed
            self.upDateUI()
        }
        
    }
    func upDateUI() {
        descriptionLabel.text = pokemon.description
        tyoeLbl.text = pokemon.type
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        podexLbl.text = "\(pokemon.pokedexID)"
        if pokemon.nextEvolutionId == "" {
            print("No Evolution Available")
            nextEvoImg.hidden = true
        } else {
            nextEvoImg.hidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
            
            if pokemon.nextEvolutionLevel != "" {
                str += " - LVL \(pokemon.nextEvolutionLevel)"
            }

        }
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
