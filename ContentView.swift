//
//  ContentView.swift
//  mc2
//
//  Created by Reema Alshalan on 15/05/1445 AH.
//

import SwiftUI

struct ContentView: View {
    //@State private var droppedImage: UIImage
    @State var isAnimated1:Bool = false
    @State var isAnimated2:Bool = false
    @State var isAnimated3:Bool = false
    @State var isClicked:Bool = false
    var body: some View {
        
        NavigationView{
            VStack {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 942, height: 210)
                        .foregroundColor(.orange)
                    
                    
                    Text("تعلم المدخلات والمخرجات!")
                        .font(
                            Font.custom("SF Arabic", size: 70)
                                .weight(.bold)
                        )
                        .foregroundColor(Color(red: 1, green: 0.97, blue: 0.97))
                        .frame(width: 611, height: 132, alignment: .topLeading)
                        .padding(80)
                }
                HStack{
                    
                    
                    Button(action: {
                        isAnimated1.toggle()
                    }, label: {
                        
                        Image("spaghetti")
                            .resizable()
                        //.aspectRatio(contentMode: .fill)
                            .frame(width: 325, height: 263)
                            .offset(y: isAnimated1 ? 800: 0)
                        //.clipped()
                    })
                    
                    Button(action: {
                        isAnimated2.toggle()
                        
                    }, label: {
                        Image("tomato")
                            .resizable()
                        //.aspectRatio(contentMode: .fill)
                            .frame(width: 280, height: 276)
                            .offset(y: isAnimated2 ? 800: 0)
                        //.clipped()
                    }
                           
                    )}
                
                
                if (isAnimated1&&isAnimated2){
                    Button(action: {
                        isAnimated3.toggle()
                        
                    }, label: {
                        Image("cooking pot")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 523, height: 364)
                            .offset(y: isAnimated3 ? -100: 0)
                        //.clipped()
                            .padding(40)
                        
                        
                    })
                }
                else {
                    Image("cooking pot")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 523, height: 364)
                        .padding(40)
                }
                
                ZStack{
                    
                    Rectangle()
                        .ignoresSafeArea()
                        .frame(width: 1086, height: 370)
                        .foregroundColor(.gray)
                    
                    HStack{
                        Image("B450A335-E05F-4DBE-83EE-18261FE79EF3 1")
                            .frame(width: 100, height: 14)
                            .padding(.vertical,100)
                            .padding(80)
                        
                        ZStack{
                            
                            
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: 602, height: 153)
                                .foregroundColor(.blue)
                            Text("مدخلات -> معالجة -> مخرجات")
                              .font(Font.custom("SF Arabic", size: 40))
                              .foregroundColor(.white)
                        }
                        VStack{
                            
                            if(isAnimated3&&isAnimated2&&isAnimated1==true){
                                Text("RUN")
                                    .frame(width: 153, height: 14)
                                    .padding(.vertical,20)
                                    .font(Font.custom("Titan One", size: 40))
                                    .foregroundColor(.green)
                                NavigationLink{
                                    output()
                                    
                                    
                                }
                            label: {
                                
                                Image("Button")
                                    .resizable()
                                    .frame(width: 93, height: 95)
                                    .padding()
                            }
                                
                            }
                            else {
                                
                                Text("RUN")
                                    .frame(width: 153, height: 14)
                                    .padding(.vertical,20)
                                    .font(Font.custom("Titan One", size: 40))
                                    .foregroundColor(.green)
                                
                                Button(action: {
                                    isClicked.toggle()
                                    
                                }, label: {
                                    Image("Button")
                                        .resizable()
                                        .frame(width: 93, height: 95)
                                        .padding()
                                    
                                }
                                )
                            }
                            
                        }
                        
                    }
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
    
}

#Preview {
    ContentView()
}
