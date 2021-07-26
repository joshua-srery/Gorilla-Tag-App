//
//  DetailView.swift
//  Testing123
//
//  Created by Joshua Srery on 7/20/21.
//

import SwiftUI

struct DetailView: View {
    let image: String
    let name: String
    let startDate: String
    let headset: String
    let channelID: String
    let twitchChannel: String
    
    var body: some View {
        ScrollView {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(15)
                Text(name)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("Started playing: " + startDate)
                    .font(.title2)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                Text("Plays on: " + headset)
                    .font(.title2)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                Divider()
                Text("Can be found on:")
                    .font(.title)
                    .fontWeight(.bold)
                if channelID.isEmpty {
                    EmptyView()
                } else {
                    Link(destination: URL(string: "https://www.youtube.com/channel/" + channelID)!) {
                        Label {
                            Text("YouTube")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding(.horizontal)
                        } icon: {
                            Image(systemName: "play.rectangle.fill")
                                .foregroundColor(.red)
                        }.padding()
                    }.frame(width: 250, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                if twitchChannel.isEmpty {
                    EmptyView()
                } else {
                    Link(destination: URL(string: "https://twitch.tv/" + twitchChannel)!) {
                        Label {
                            Text("Twitch")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding(.horizontal)
                        } icon: {
                            Image("Twitch")
                                .resizable()
                                .frame(width: 24, height: 28)
                        }.padding()
                    }.frame(width: 250, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                Spacer()
            }.padding()
        }
    }
}
