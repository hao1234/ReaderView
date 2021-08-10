//
//  ContentView.swift
//  AlienReader
//
//  Created by Hao Nguyen on 10/08/2021.
//

import SwiftUI
import SafariServices


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {
    // whether or not to show the Safari ViewController
    @State var showSafari = false
    @State var isNavigationBarHidden: Bool = true
    
    let news: [MenuItem] = [
        MenuItem(
            id: "1",
            title: "Price analysis 6/28",
            url: "https://cointelegraph.com/news/price-analysis-6-28-btc-eth-bnb-ada-doge-xrp-dot-uni-bch-ltc"
        ),
        MenuItem(
            id: "2",
            title: "Binance suspends popular fiat ramp for U.K",
            url: "https://cointelegraph.com/news/binance-suspends-popular-fiat-ramp-for-u-k-customers-amid-regulatory-crackdown"
        ),
        MenuItem(
            id: "3",
            title: "Active Bitcoin miners now ‘unlikely’ sellers thanks to profit boost — Data",
            url: "https://cointelegraph.com/news/active-bitcoin-miners-now-unlikely-sellers-thanks-to-profit-boost-data"
        ),
    ]
     
    var body: some View {
            // 2
        NavigationView {
            List(news) { new in
                VStack(alignment: .leading) {
                    NavigationLink(destination: SafariView(url: URL(string: new.url)!)) {
                        NewsCell(news: new)
                    }
                }
            }
            .navigationTitle("Reader view")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


