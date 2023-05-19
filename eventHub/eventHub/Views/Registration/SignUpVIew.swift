//
//  SignUpVIew.swift
//  eventHub
//
//  Created by ankit.dubey03 on 26/04/23.
//

import SwiftUI

struct SignUpVIew: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @State var fullName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPass: String = ""

    @State var showPass: Bool = false
    @State var showPassConfirm: Bool = false

    var body: some View {
        NavigationStack {
            ZStack {
                Image("BackGround")
                    .resizable()
                    .ignoresSafeArea()

                VStack {
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("Back")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .offset(x: 30)
                            .padding(.vertical)
                    })
                    
                    ScrollView {
                        VStack {
                            VStack(spacing: 30) {
                                Text("Sign Up")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal, 32)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                                VStack(spacing: 20) {
                                    
                                    ZStack {
                                        Image(systemName: "person")
                                            .foregroundColor(.gray)
                                            .frame(maxWidth: .infinity,alignment: .leading)
                                            .offset(x: 14)
                                        
                                        TextField("fullName", text: $fullName)
                                            .frame(height: 58)
                                            .padding(.horizontal , 50)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 14)
                                                    .stroke(Color(#colorLiteral(red: 0.915458858, green: 0.8993746638, blue: 0.8990321755, alpha: 1)), lineWidth: 1)
                                            )
                                    }
                                    
                                    ZStack {
                                        Image(systemName: "mail")
                                            .foregroundColor(.gray)
                                            .frame(maxWidth: .infinity,alignment: .leading)
                                            .offset(x: 14)
                                        
                                        TextField("abc@email.com", text: $email)
                                            .frame(height: 58)
                                            .padding(.horizontal , 50)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 14)
                                                    .stroke(Color(#colorLiteral(red: 0.915458858, green: 0.8993746638, blue: 0.8990321755, alpha: 1)), lineWidth: 1)
                                            )
                                    }
                                    ZStack {
                                        if showPass {
                                            Image(systemName: "lock")
                                                .foregroundColor(.gray)
                                                .frame(maxWidth: .infinity,alignment: .leading)
                                                .offset(x: 14)
                                            
                                            
                                            TextField("Your password", text: $password)
                                                .frame(height: 58)
                                                .padding(.horizontal, 50)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 14)
                                                        .stroke(Color(#colorLiteral(red: 0.915458858, green: 0.8993746638, blue: 0.8990321755, alpha: 1)), lineWidth: 1)
                                                )
                                        } else {
                                            Image(systemName: "lock")
                                                .foregroundColor(.gray)
                                                .frame(maxWidth: .infinity,alignment: .leading)
                                                .offset(x: 14)

                                            SecureField("Your password", text: $password)
                                                .frame(height: 58)
                                                .padding(.horizontal, 50)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 14)
                                                        .stroke(Color(#colorLiteral(red: 0.915458858, green: 0.8993746638, blue: 0.8990321755, alpha: 1)), lineWidth: 1)
                                                )
                                        }
                                        
                                        //Image(systemName: "eye.slash.fill")
                                        Button(action: {
                                            showPass.toggle()
                                        }, label: {
                                            Image(systemName: showPass ? "eye.slash.fill" : "eye.fill")
                                                .foregroundColor(.gray)
                                        })
                                        .offset(x: 120)

                                    }
                                    
                                    ZStack {
                                        if showPassConfirm {
                                            Image(systemName: "lock")
                                                .foregroundColor(.gray)
                                                .frame(maxWidth: .infinity,alignment: .leading)
                                                .offset(x: 14)
                                            
                                            
                                            TextField("Confirm password", text: $confirmPass)
                                                .frame(height: 58)
                                                .padding(.horizontal, 50)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 14)
                                                        .stroke(Color(#colorLiteral(red: 0.915458858, green: 0.8993746638, blue: 0.8990321755, alpha: 1)), lineWidth: 1)
                                                )
                                        } else {
                                            Image(systemName: "lock")
                                                .foregroundColor(.gray)
                                                .frame(maxWidth: .infinity,alignment: .leading)
                                                .offset(x: 14)

                                            SecureField("Confirm password", text: $confirmPass)
                                                .frame(height: 58)
                                                .padding(.horizontal, 50)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 14)
                                                        .stroke(Color(#colorLiteral(red: 0.915458858, green: 0.8993746638, blue: 0.8990321755, alpha: 1)), lineWidth: 1)
                                                )
                                        }
                                        
                                        //Image(systemName: "eye.slash.fill")
                                        Button(action: {
                                            showPass.toggle()
                                        }, label: {
                                            Image(systemName: showPass ? "eye.slash.fill" : "eye.fill")
                                                .foregroundColor(.gray)
                                        })
                                        .offset(x: 120)

                                    }
                                    
                                    
                                }
                                .padding(.horizontal, 30)
                                
                                
                                ZStack {
                                    Button("Sign Up".uppercased(), action: {})
                                        .frame(width: 320, height: 58)
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                        .background(Color(#colorLiteral(red: 0.4112041593, green: 0.5140529871, blue: 1, alpha: 1)))
                                        .cornerRadius(18)
                                    
                                    Image("rightArrow")
                                        .offset(x: 120)
                                } // Sign In Button
                                
                                VStack(spacing: 20) {
                                    Text("OR")
                                        .foregroundColor(.gray)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    ZStack {
                                        Button("Login with Google", action: {})
                                            .frame(width: 320, height: 58)
                                            .font(.title3)
                                            .foregroundColor(.black)
                                            .background(Color(.white))
                                            .cornerRadius(18)
                                            .shadow(color: Color.black.opacity(0.1), radius: 100, x: 3, y: 3)
                                            .shadow(color: Color(#colorLiteral(red: 0.9442684054, green: 0.9187504053, blue: 0.9182034135, alpha: 1)).opacity(1), radius: 10, x: -3, y: -3)
                                        
                                        
                                        Image("GoogleIcon")
                                            .offset(x: -120)
                                        //EDE5E5
                                        
                                    } // Google Sign In
                                    
                                    
                                    ZStack {
                                        Button("Login with Facebook", action: {})
                                            .frame(width: 320, height: 58)
                                            .font(.title3)
                                            .foregroundColor(.black)
                                            .background(Color(.white))
                                            .cornerRadius(18)
                                            .shadow(color: Color.black.opacity(0.1), radius: 100, x: 3, y: 3)
                                            .shadow(color: Color(#colorLiteral(red: 0.9442684054, green: 0.9187504053, blue: 0.9182034135, alpha: 1)).opacity(1), radius: 10, x: -3, y: -3)
                                        
                                        Image("FacebookIcon")
                                            .offset(x: -120)
                                    } // Facebook Sign In
                                    
                                    HStack {
                                        Text("Already have an account?")
                                            .font(.title3)
                                            .foregroundColor(.black)
                                        Button("Sign In", action: {
                                            presentationMode.wrappedValue.dismiss()
                                        })
                                        .font(.title3)
                                        .foregroundColor(.blue)
                                    }
                                    .padding()
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct SignUpVIew_Previews: PreviewProvider {
    static var previews: some View {
        SignUpVIew()
    }
}
