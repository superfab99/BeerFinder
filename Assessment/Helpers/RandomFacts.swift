//
//  RandomFacts.swift
//  Assessment
//
//  Created by Suyog Sawant on 01/12/22.
//

import Foundation
class RandomFacts{
    static var facts : [String] = ["One of the most famous styles of beer is Pilsner. Pilsner is a type of pale or blond lager, distinct for its light straw or golden color. The most successful and iconic beers like Budweiser, Pabst Blue Ribbon, and Coors, are made in the Pilsner style.",
    "From the name itself, craft beer is as handmade as it gets. A microbrewery or craft brewery painstakingly produces small amounts of beer in batches, emphasizing its quality, flavor, and brewing techniques in contrast to commercial, mass-produced beer.",
    "When consuming craft beers, drinkers are gulping the taste of dedication and hard work that went into creating the fermented masterpiece. On the other hand, commercial beers are referred to as “stale and flat.” Craft beer brewers give a tremendous amount of time perfecting its quality.",
    "What makes Guinness or stout unique from other beers is its overwhelming, roasted flavor. The stout’s flavor comes from the roasted barley from that has not been malted. It also stands out from other beers as the only drink associated with fighting cancer. According to a study, drinking stout with your meals helps fight free radicals, which occurs when the body starts to metabolize the food.",
    "With not much differences between the two, stout is basically just a stronger version of porter. However, one distinction between the two is that porters use malted barley while stouts are made from unmalted roasted barley.",
    "Commonly referred to as “White Beers,” the Belgian-style ale Witbier has a very pale and cloudy in appearance due to it being unfiltered and the high level of wheat or oats. Other varieties of Witbiers are fairly dry but generally, they have a slightly sweet, honey-like flavor. As its name suggests, it has a large proportion of wheat compared to the amount of malted barley.",
    "For instance, the Chodovar Beer Spa in the Czech Republic offers a 20-minute bath in beer brewing ingredients. The company says that this method boosts blood circulation, opens up pores, softens the skin and infuses the body with vitamins of their clients."]
    
    static func getRandomFacts() -> String{
        let randomInt = Int.random(in: 0...6)
        return facts[randomInt]
    }
}
