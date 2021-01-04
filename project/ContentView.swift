//
//  ContentView.swift
//  project
//
//  Created by Batool  Jawaheri  on 1/3/21.
//


import SwiftUI

struct ContentView: View {
    
    var body: some View {
       
            
            
        NavigationView {
            
            VStack{
            Text("مرحبا بك،، يمكنك اختيار الدراجة المناسبه لك من القائمة وأكمل بياناتك للحجز")
            
            List(bicycles) { bicycle in
                

                    
    NavigationLink(
        
        destination: BicycleDetailsView(bicycle: bicycle),
        label: { BicycleRow(bicycle: bicycle)})
                }
                
            }.navigationBarTitle("تأجير الدراجات")
            
        
            
            }
        
       
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BicycleRow: View {
    var bicycle: Bicycle
    
    var body: some View {
        HStack (alignment: .center) {
            
            Text(bicycle.num)
                .bold()
                .foregroundColor(.white)
                .frame(maxWidth:.infinity)
                .frame( height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.blue)
                .cornerRadius(15)
                 .clipShape(Circle())
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
               
            
            Image (bicycle.name)
                 .resizable()
                 .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                 .background(Color.white)
            
    
            
                  
 }
 
        
    }
    
    
}


