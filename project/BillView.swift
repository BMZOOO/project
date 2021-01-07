//
//  BillView.swift
//  project
//
//  Created by Batool  Jawaheri  on 1/4/21.
//

import SwiftUI

struct BillView: View {
    @Binding var Name: String
    @Binding var phone: String
    @Binding var hours: Int
    @Binding var Quan: Int
    @Binding var cost: Int
    @State var bill = false
    
    var body: some View {
        NavigationView{
            VStack{
            HStack{
               
            Text ("الاسم ")
                .padding()
                Spacer()
                
            Text ("\(Name)")
                .padding()
            }
                HStack{
                Text ("الساعات")
                    
                    Spacer()
                Text ("\(hours)")
                    .padding(.leading,20)
                 
                }
                HStack{
                    
                Text ("رقم الهاتف")
                    .padding()
                    Spacer()
                Text ("\(phone)")
                    .padding(.leading,20)
                    
                }
                HStack{
                  
                Text ("المبلغ")
                    Spacer()
                        .padding()
                Text ("\(cost)")
                    .padding(.leading,20)
                
                }
                .padding()
        Spacer()
                
                Button(action: {
                    self.bill.toggle()
                }, label: {
                    Text("ادفع الأن")
                        .bold()
                        .foregroundColor(.white)
                        .frame(maxWidth:.infinity)
                        .frame( height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .clipShape(Capsule())
                })
            }
        }.navigationBarTitle("الفاتوره")
        .padding(.leading,20)
    }
}

