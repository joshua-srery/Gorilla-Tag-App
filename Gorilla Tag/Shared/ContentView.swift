//
//  ContentView.swift
//  Shared
//
//  Created by Joshua Srery on 7/20/21.
//

import SwiftUI

struct Gorilla: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var startDate: String
    var headset: String
    var channelID: String
    var twitchChannel: String
}

struct GorillaRow: View {
    var gorilla: Gorilla

    var body: some View {
        HStack {
            Image(gorilla.image)
                .resizable()
                .frame(width: 75, height: 75)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(gorilla.name)
                    .font(.title3)
                    .fontWeight(.bold)
                Text("Started playing: " + gorilla.startDate)
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text("Plays on: " + gorilla.headset)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView: View {
    let gorillas = [
        Gorilla(image: "Calactic", name: "Calactic", startDate: "February 22, 2021", headset: "Oculus Quest 2", channelID: "UCoiw4S3sESAvCPYgeZ8Ydlw", twitchChannel: "calactic"),
        Gorilla(image: "Reekid", name: "Reekid", startDate: "February 26, 2021", headset: "Oculus Quest 2", channelID: "UCBQWIBij3ZCUA7YETaTWnIA", twitchChannel: "ree_kid"),
        Gorilla(image: "jmancurly", name: "jmancurly (Julian Elchakieh)", startDate: "March 5, 2021", headset: "Oculus Quest 2", channelID: "UCRaehQPWXnJ72WmE8nvvKKw", twitchChannel: "jmancurlylive"),
        Gorilla(image: "Jameskii", name: "Jameskii (James Swire)", startDate: "March 7, 2021", headset: "N/A", channelID: "UCPfjB94mhe8Gsnd9qIzUKHA", twitchChannel: "jameskii"),
        Gorilla(image: "Turbo Alligator", name: "Turbo Alligator", startDate: "March 17, 2021", headset: "N/A", channelID: "UCzQTXreq-8cCMwIWjU9Zgyw", twitchChannel: "turboalligator"),
        Gorilla(image: "Monke3424", name: "Monke3424", startDate: "March 24, 2021", headset: "Oculus Quest 2", channelID: "UCx5q_PqmVtWb6QISKmJdiXA", twitchChannel: "monke3424"),
        Gorilla(image: "Mosa", name: "Mosa", startDate: "March 27, 2021", headset: "Oculus Quest 2", channelID: "UCisYJeDaS-p_0RI87MdQvrQ", twitchChannel: ""),
        Gorilla(image: "VMT", name: "VMT", startDate: "April 24, 2021", headset: "N/A", channelID: "UCFHQbrARAdL64JlJgWajpjg", twitchChannel: "realvmt"),
        Gorilla(image: "ItzK1ngVR", name: "ItzK1ngVR", startDate: "April 26, 2021", headset: "Oculus Rift S(?)", channelID: "UCzUbh-OZavEiJu_k6MF4Qsw", twitchChannel: "itzk1ngvr"),
        Gorilla(image: "fishlegs", name: "Fishlegs", startDate: "May 11, 2021", headset: "Oculus Quest", channelID: "UCprEHwszXq3C4n7qeGgJqfA", twitchChannel: ""),
        Gorilla(image: "cracker", name: "Cracker", startDate: "May 15, 2021", headset: "Oculus Quest 2", channelID: "UCznxZd3YoYDcGBfOfo4CKdQ", twitchChannel: ""),
        Gorilla(image: "ParkuVR", name: "ParkuVR", startDate: "June 20, 2021", headset: "Oculus Quest 2", channelID: "UCMdodwZ6nF764iiQA4KKCYA", twitchChannel: ""),
        Gorilla(image: "Insaniac", name: "Insaniac (Joshua Srery)", startDate: "July 19, 2021", headset: "Oculus Quest 2", channelID: "UCGWxoietO0HbdweU0xhnAzg", twitchChannel: "")
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(gorillas) { gorilla in
                    NavigationLink(destination: DetailView(image: gorilla.image, name: gorilla.name, startDate: gorilla.startDate, headset: gorilla.headset, channelID: gorilla.channelID, twitchChannel: gorilla.twitchChannel)) {
                        GorillaRow(gorilla: gorilla)
                    }
                }
            }
            .navigationTitle("Gorilla Tag Players")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
