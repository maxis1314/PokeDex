//
//  PokeCell.swift
//  PokeDex
//
//  Created by Darshan Gowda on 17/11/16.
//  Copyright © 2016 Darshan Gowda. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var pokeImage: UIImageView!
    @IBOutlet weak var pokeName: UILabel!
    
    var pokemon : Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    func configureCell(_ pokemon : Pokemon){
        self.pokemon = pokemon;
        
        pokeName.text = pokemon.name
        pokeImage.image = UIImage(named: "\(pokemon.pokedexId)")
    }
}
