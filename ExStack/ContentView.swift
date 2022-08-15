//
//  ContentView.swift
//  ExStack
//
//  Created by 김종권 on 2022/08/15.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    // MARK: Stack Example
    //    HStack(
    //      alignment: .top,
    //      spacing: 10
    //    ) {
    //      ForEach(1...5, id: \.self) {
    //        Text("Item \($0)")
    //      }
    //    }
    //    .padding()
    //    .border(Color.purple)
    //    .font(.body)
    
    // MARK: VStack Example
    //    VStack(
    //      alignment: .trailing,
    //      spacing: 10
    //    ) {
    //      ForEach(1...5, id: \.self) {
    //        Text("Item \($0)")
    //      }
    //    }
    //    .padding()
    //    .border(Color.purple)
    //    .font(.body)
    
    // MARK: ZStack Example
//    SomeView()
    
    // MARK: LazyStack Exmaple
    ScrollView(.horizontal) {
      LazyHStack(alignment: .top, spacing: 10) {
        ForEach(1...100, id: \.self) {
          Text("Column \($0)")
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct SomeView: View {
  var body: some View {
    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
      Text("1")
        .font(.headline)
        .frame(width: 300, height: 300, alignment: .center)
        .border(Color.gray, width: 1)
      
      Text("2")
        .font(.title)
        .frame(width: 100, height: 100, alignment: .center)
        .border(Color.blue, width: 1)
      
      Text("3") // <-
        .font(.title)
        .frame(width: 50, height: 50, alignment: .center)
        .border(Color.red, width: 1)
    }
  }
}
