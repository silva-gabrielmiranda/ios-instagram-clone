//
//  Main.swift
//  instagram-clone
//
//  Created by Gabriel Miranda on 25/09/22.
//

import SwiftUI

struct Main: View {
    
    @State var names = ["Aimbotkin", "Andresto", "Applejuice", "Arizona", "Afraid", "Auron", "Badboy", "Baddie", "Beard", "Beverly", "Bison", "Blackbird", "Blade", "Blakemore", "Boatswain", "Boogerman", "Brockley", "Browski", "Bullet", "Bunny", "Butcher", "Chester", "Churchill", "Cliffhanger", "Condor", "Cook", "Cougar", "Coyote", "Crooked", "Cross", "Dakota", "Dawg", "Deceit", "Denver", "Diggi", "Donutop", "Duke", "Dustin", "Enzo", "Esquilo", "Father", "Firion", "Floridaman", "Frenzy", "Foxy", "Garandthumb", "Goat", "Golden", "Grandpa", "Grim", "Grommet", "Gunporn", "Handsome", "Haunted", "Hellshrimp", "Honorable", "Hypno", "Instructor", "Ironfists", "Iowa", "James", "Jeff", "Jersey", "John", "Juggernaut", "Justkilo", "Kentucky", "Lancaster", "Lee", "Legia", "Litton", "Lost", "Lunar", "Madknight", "Mamba", "Marooner", "Meldon", "Melo", "Michigan", "Mike", "Momma", "Mortal", "Mother", "Nevada", "Nine-hole", "Noisy", "Nukem", "Ocean", "Oklahoma", "OneEye", "Oskar", "Philbo", "Quebec", "Racoon", "Rage", "Rambo", "Rassler", "Receit", "Rib-eye", "Riot", "Rock", "Rocket", "Ronny", "Rossler", "RoughDog", "Scar", "Scottsdale", "Seafarer", "Shadow", "SharkBait", "Sharkkiller", "Sherman", "Sherifu", "Shifty", "Slayer", "Sly", "Snake", "Sneaky", "Sniperlife", "Solem", "Solidus", "Spectator-6", "Spyke", "Stamper", "Striker", "Texas", "Three-Teeth", "Trent", "Trickster", "Triggerhappy", "Two-Finger", "Vicious", "Victor", "Voodoo", "Voss", "Wadley", "Weasel", "Whale-Eye", "Whisky", "Whitemane", "Woodrow", "Wrath", "Zed", "Zero-Zero"].shuffled()
    var iconSize: CGFloat = 25
    var iconPadding: CGFloat = 10
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Image("logo")
                    .resizable()
                    .colorInvert()
                    .frame(width: 100, height: 30)
                    .padding(.horizontal)
                Spacer()
                Image(systemName: "plus.app")
                    .resizable()
                    .frame(width: iconSize, height: 25)
                    .padding(.horizontal, iconPadding)
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: iconSize, height: 24)
                    .padding(.horizontal, iconPadding)
                Image(systemName: "paperplane")
                    .resizable()
                    .frame(width: iconSize, height: 22)
                    .padding(.horizontal, iconPadding)
            }
                .padding(.vertical)
            GeometryReader { geometry in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        NewStory(size: 80)
                        ForEach(names[0..<10].indices, id: \.self){ index in
                            Story(size: 80, userName: names[index])
                        }
                    }
                }
                .frame(height: geometry.size.height * 0.1, alignment: .top)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
