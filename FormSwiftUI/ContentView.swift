//
//  ContentView.swift
//  FormSwift
//
//  Created by Aji_sahputra on 11/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationView{
        Form{
          //Section Photo profil
          
          Section(){
            NavigationLink(destination : About()) {
              HStack (spacing: 10){
                Image("aji")
                  .resizable()
                  .frame(width: 50, height: 50)
                  .clipShape(Circle())
                
                //Nama dan Status
                VStack(alignment: .leading){
                  Text("Aji Sahputra").font(.headline)
                  Text("IOS Development").font(.caption).italic().foregroundColor(.gray)
                }
              }
              .padding(.top,10)
              .padding(.bottom,10)
            }
          }
          
          //section pengaturan umum
          
          Section(header: Text("Pengaturan Umum")){
            NavigationLink(destination : Star()) {
            
              //pesan berbintang
              HStack (spacing: 20){
                Image(systemName: "star.fill")
                  .frame(width: 35, height: 35)
                  .background(Color.orange)
                  .cornerRadius(10)
                  .foregroundColor(.white)
                
                Text("Pesan Berbintang")
              }
            }
            
            NavigationLink(destination : Whatsapp()) {
              HStack (spacing: 20){
                
                //Whatsapp dekstop tv
                Image(systemName: "tv")
                  .frame(width: 35, height: 35)
                  .background(Color.green)
                  .cornerRadius(10)
                  .foregroundColor(.white)
                
                Text("WhatsApp Web/Dekstop")
              }
            }
          }
          
          //section pengaturan akun
          Section(header: Text("Pengaturan Akun")){
            NavigationLink(destination : Akun()) {
              //pesan berbintang
              HStack (spacing: 20){
                Image(systemName: "person")
                  .frame(width: 35, height: 35)
                  .background(Color.blue)
                  .cornerRadius(10)
                  .foregroundColor(.white)
                
                Text("Akun")
              }
            }
            
            NavigationLink(destination : Chat()) {
              HStack (spacing: 20){
                
                //Whatsapp dekstop tv
                Image(systemName: "phone.circle")
                  .frame(width: 35, height: 35)
                  .background(Color.green)
                  .cornerRadius(10)
                  .foregroundColor(.white)
                
                Text("Chat")
              }
            }
          }
        }.navigationBarTitle("Setting")
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct About : View {
  var body: some View {
    VStack{
      
      Image("aji")
        .resizable()
        .frame(width: 200, height: 200)
        .clipShape(Circle())
        .padding(.bottom, 20)
      
      //Nama dan Status
      VStack(alignment: .leading){
        Text("Aji Sahputra").font(.headline)
          .padding(.bottom, 300)
        Text("IOS Development").font(.caption).italic().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
        }
      }
  }
}

struct Star : View {
  var body: some View {
    
    Image(systemName: "star.fill")
      .frame(width: 100, height: 100)
      .background(Color.orange)
      .cornerRadius(100)
      .foregroundColor(.white)
      .padding(.bottom, 100)
    Text("Halaman Pesan Berbintang")
  }
}

struct Whatsapp : View {
  var body: some View {
    
    Image(systemName: "tv")
      .frame(width: 100, height: 100)
      .background(Color.green)
      .cornerRadius(100)
      .foregroundColor(.white)
      .padding(.bottom, 100)
    Text("Halaman WhatsApp Web/Dekstop")
  }
}

struct Akun: View {
  var body: some View {
    
    Image(systemName: "person")
      .frame(width: 100, height: 100)
      .background(Color.blue)
      .cornerRadius(100)
      .foregroundColor(.white)
      .padding(.bottom, 100)
    Text("Halaman Akun")
  }
}

struct Chat : View {
  var body: some View {
        
      Image(systemName: "phone.circle")
        .frame(width: 100, height: 100)
        .background(Color.green)
        .cornerRadius(100)
        .foregroundColor(.white)
        .padding(.bottom, 100)
    Text("Halaman Chat")
    
  }
}
