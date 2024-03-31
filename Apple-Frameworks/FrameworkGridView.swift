    //
    //  FrameworkGridView.swift
    //  Apple-Frameworks
    //
    //  Created by Saiful Islam Sagor on 19/9/23.
    //

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
        //for defining how mayny columns will be there
    let columns: [GridItem] = [GridItem(),
                               GridItem(),
                               GridItem()
    ]
    var body: some View {
        NavigationView {
            //adding scroll property
            ScrollView {
                    //adding the frameworks objects on grid
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            //showing detailed view page while clicking on a framework
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailsView(isShowingDetailView: $viewModel.isShowingDetailView, framework: viewModel.selectedFramework!)
                
            }
        }
        
    }
    
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


struct FrameworkTitleView: View{
    let framework:Framework
    var body: some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70,height: 70, alignment: .topLeading)
            Text(framework.name)
                .font(.headline)
                .fontWeight(.heavy)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding(.minimum(10, 10))
    }
}

