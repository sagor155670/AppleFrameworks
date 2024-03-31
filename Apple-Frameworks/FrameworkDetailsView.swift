//
//  FrameworkDetailsView.swift
//  Apple-Frameworks
//
//  Created by Saiful Islam Sagor on 19/9/23.
//

import SwiftUI

struct FrameworkDetailsView: View {
    @Binding var isShowingDetailView: Bool
    let framework:Framework
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button {
                isShowingDetailView = false
                }label:{
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                        .bold()
                }
                .padding(.trailing,10)
            }
            Spacer()

            

        

            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .fontDesign(.serif)
                .padding()
            
            Spacer()
          
//            AFButton(title: "Learn More")
     
            Link("Learn More", destination: URL(string: framework.urlString)!)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 200,height: 50)
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(20)
           
              
            
            
        }
    }
}

struct FrameworkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailsView(isShowingDetailView: .constant(true), framework: MockData.sampleFramework)
           
    }
}
