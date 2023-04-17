//
//  ContentView.swift
//  ChuckNorris
//
//  Created by Süleyman Üren on 17.04.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var chucksVM = ChucksViewModel()
    var body: some View {
        NavigationView{
            List(chucksVM.chucks.reversed()){element in
                Text(element.value)
            }
            .toolbar {
                Button(action: addChunk){
                    Text("Get New Chunk")
                }
            }
        }.navigationTitle(Text("Chucks App"))
    }
    func addChunk(){
        chucksVM.getChunks()
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
