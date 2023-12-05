//
//  output.swift
//  mc2
//
//  Created by Reema Alshalan on 19/05/1445 AH.
//

import SwiftUI

struct output: View {
    var body: some View {
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
                        Image("dishstars")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 698, height: 702)
                            .padding(-20)

            }

            HStack{
                Image("bar")
                   
                    
                
            }
                

        }
       
        
    }
    
        
}

#Preview {
    output()
}
