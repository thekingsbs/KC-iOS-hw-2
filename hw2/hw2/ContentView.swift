//
//  ContentView.swift
//  hw2
//
//  Created by Saleh Al Sedrah on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var money = ""
    @State var bill = ""
    @State var status = ""
    
    @State var cheeseburgerAmount = ""
    @State var hamburgerAmount = ""
    @State var hotdogAmount = ""
    @State var friesAmount = ""
    @State var milkshakeAmount = ""
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                
                Image("fiveguys")
                    .resizable()
                    .scaledToFit()
                    .padding()
                //.frame(width: ,height: )
                
                
                Text("Our Menu")
                    .font(.system(size: 30, weight: .semibold, design: .monospaced))
                    .foregroundColor(.red)
                    .padding(.bottom, 60)
                
                Spacer()
                
                ZStack {
                    
                    Color.red
                        .opacity(0.9)
                    
                    VStack {
                        
                        HStack {
                            
                            Text("Cheeseburger")
                                .font(.system(size: 15, weight: .semibold, design: .monospaced))
                                .padding()
                                .foregroundColor(.white)
                            
                            
                            Spacer()
                            
                            Text("KD 3.600")
                                .font(.system(size: 15, weight: .semibold, design: .monospaced))
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            TextField("Quantity", text: $cheeseburgerAmount)
                                .frame(width: 80, height: 30)
                                .background(Color.white)
                                .cornerRadius(6)
                                .padding()
                            
                            
                        }
                        
                        HStack {
                            
                            Text("Hamburger")
                                .font(.system(size: 15, weight: .semibold, design: .monospaced))
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text("KD 3.100")
                                .font(.system(size: 15, weight: .semibold, design: .monospaced))
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            TextField("Quantity", text: $hamburgerAmount)
                                .frame(width: 80, height: 30)
                                .background(Color.white)
                                .cornerRadius(6)
                                .padding()
                            
                            
                        }
                        
                        HStack {
                            
                            Text("Hot Dog")
                                .font(.system(size: 15, weight: .semibold, design: .monospaced))
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text("KD 1.900")
                                .font(.system(size: 15, weight: .semibold, design: .monospaced))
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            TextField("Quantity", text: $hotdogAmount)
                                .frame(width: 80, height: 30)
                                .background(Color.white)
                                .cornerRadius(6)
                                .padding()
                            
                        }
                        
                        HStack {
                            
                            Text("Fries")
                                .font(.system(size: 15, weight: .semibold, design: .monospaced))
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text("KD 1.900")
                                .font(.system(size: 15, weight: .semibold, design: .monospaced))
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            TextField("Quantity", text: $friesAmount)
                                .frame(width: 80, height: 30)
                                .background(Color.white)
                                .cornerRadius(6)
                                .padding()
                            
                        }
                        
                        HStack {
                            
                            Text("Milkshake")
                                .font(.system(size: 15, weight: .semibold, design: .monospaced))
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text("KD 2.100")
                                .font(.system(size: 15, weight: .semibold, design: .monospaced))
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            TextField("Quantity", text: $milkshakeAmount)
                                .frame(width: 80, height: 30)
                                .background(Color.white)
                                .cornerRadius(6)
                                .padding()
                            
                        }
                        
                        
                    }
                    
                    
                }.frame(width: 400, height: 100)
                
                
                Spacer()
                
                VStack {
                    
                    
                    HStack {
                        
                        Text("Enter available money")
                            .font(.system(size: 18, weight: .semibold, design: .monospaced))
                            .foregroundColor(.red)
                        
                        TextField("Amount", text: $money)
                            .frame(width: 80, height:30)
                            .background(Color.white)
                            .padding()
                            .cornerRadius(6)
                            
                        
                    }.padding(.top, 40)
                    
                    Button(action: {
                        
                        let cDouble = Double(cheeseburgerAmount) ?? 0.0
                        
                        let hbDouble = Double(hamburgerAmount) ?? 0.0
                        
                        let hdDouble = Double(hotdogAmount) ?? 0.0
                        
                        let fDouble = Double(friesAmount) ?? 0.0
                        
                        let mDouble = Double(milkshakeAmount) ?? 0.0
                        
                        let cTotal = cDouble * 3.6
                        
                        let hbTotal = hbDouble * 3.1
                        
                        let hdTotal = hdDouble * 1.9
                        
                        let fTotal = fDouble * 1.9
                        
                        let mTotal = mDouble * 2.1
                        
                        let total = cTotal + hbTotal + hdTotal + fTotal + mTotal
                        
                        let moneyDouble = Double(money) ?? 0.0
                        
                        if total < moneyDouble || total == moneyDouble {
                            
                            status = "Payment is successful"
                            
                            
                        } else {
                            
                            status = "Available money is insufficient"
                        }
                        
                        bill = String(total)
                        
                        
                        

                        
                        
                        
                    }, label: {
                        Text("Calculate bill")
                            .foregroundColor(.white)
                            .frame(width: 140, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.red)
                            .cornerRadius(20)
                            .opacity(0.9)
                            .font(.system(size: 15, weight: .semibold, design: .monospaced))
                    })

                    
                    
                    Text("The total bill is: \(bill)")
                        .padding()
                        .font(.system(size: 18, weight: .semibold, design: .monospaced))
                        .foregroundColor(.red)
                    
                    
                }
                
                Text(status)
                    .font(.system(size: 18, weight: .semibold, design: .monospaced))
                    .foregroundColor(.red)
                
                Spacer()
                
                
            }
            
            
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

