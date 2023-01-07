//
//  ContentView.swift
//  OneWord
//
//  Created by BenitzCoding on 05/01/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var time = Date()
    
    func Test() {
        print(time)
    }
    
    @State private var everyday = true
    @State private var monday = true
    @State private var tuesday = true
    @State private var wednessday = true
    @State private var thursday = true
    @State private var friday = true
    @State private var saturday = true
    @State private var sunday = true
    
    var body: some View {
        VStack {
            Text("Scheduled Time")
                .font(.system(size: 28))
            HStack {
                DatePicker("", selection: $time, displayedComponents: .hourAndMinute)
                .labelsHidden()
            }
            .buttonStyle(.bordered)
        }
        VStack {
            Text("Scheduled Days")
                .font(.system(size: 28))
            HStack {
                List {
                    Toggle("Everyday", isOn: $everyday)
                    Toggle("Monday", isOn: $monday).disabled(everyday == true)
                    Toggle("Tuesday", isOn: $tuesday).disabled(everyday == true)
                    Toggle("Wednessday", isOn: $wednessday).disabled(everyday == true)
                    Toggle("Thursday", isOn: $thursday).disabled(everyday == true)
                    Toggle("Friday", isOn: $friday).disabled(everyday == true)
                    Toggle("Saturday", isOn: $saturday).disabled(everyday == true)
                    Toggle("Sunday", isOn: $sunday).disabled(everyday == true)
                }
                .toggleStyle(.switch)
            }
        }
        VStack {
            Button {
                Test()
            } label: {
                Text("Save Changes")
                    .frame(maxWidth: .infinity)
                    .bold()
            }
            .controlSize(.large).buttonStyle(.borderedProminent)
            .cornerRadius(15)
            .padding(.horizontal, 20)
            .padding(.top, 10)
            .padding(.bottom, 10)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
