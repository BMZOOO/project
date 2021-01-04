//
//  BicycleDetailsView.swift
//  project
//
//  Created by Batool  Jawaheri  on 1/4/21.
//

import SwiftUI

struct BicycleDetailsView: View {
    let bicycle: Bicycle
    @State var Name: String = ""
    @State var phone: String = ""
    @State var hours = 20
    @State var Quan = 20
    @State var cost = 0

    
    
    
    var body: some View {
        
         
        VStack{
            Spacer()
             VStack {
               
                 Image (bicycle.name)
                     .resizable()
                     .scaledToFit()
                     .frame(width: 300 , height: 300, alignment: .center)
             }
            
        
    Spacer()
        VStack{
                 
                TextField("اسم المستلم", text: $Name)
                TextField("الرقم", text: $phone)
                Stepper ("عدد الساعات \(hours)", value: $hours, in: 0...20)
                Stepper ("عدد الدراجات\(Quan)", value: $Quan, in: 0...20)
                   
        }.padding(.leading,20)
            
            Spacer()
            
            let cost = (Double(bicycle.price) * Double(Quan))
            Spacer()
            Text("\(cost)")
            
            Text ("المبلغ الكلي")
                .padding()
            
        NavigationLink(
            destination: BillView(Name: $Name, phone: $phone, hours: $hours, Quan: $Quan, cost: $cost),
            label: {
                Text("إضغط للمتابعة")
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth:.infinity)
                    .frame( height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .clipShape(Capsule())
                
                
            })
            
            Spacer()
            
            
         
            
            
            
            
            

             }
             .padding()
            
         
         
    }
}

struct BicycleDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BicycleDetailsView(bicycle: bicycles[0])
    }
}
