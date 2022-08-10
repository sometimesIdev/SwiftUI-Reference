//
//  LongPressGesture.swift
//  SwiftUI Reference
//
//  Created by Pat Butler on 2022-08-09.
//

import SwiftUI

struct LongPressGesture: View {
    
    @State var isComplete: Bool = false
    @State var isSuccess: Bool = false
    
    var body: some View {
        
        VStack {
            Rectangle()
                .fill(.blue)
                .frame(maxWidth: 10)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.gray)
            
            HStack {
                Text("Click Here")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) { 
                        //what action to run when the long press has occurred
                        withAnimation((.easeInOut)) {
                            isSuccess = true
                        }
                        
                        }
                    } onPressingChanged: { isPressing in
                        // A closure to run when the pressing state of the
                        ///     gesture changes, passing the current state as a parameter.
                        if isPressing {
                            withAnimation(.easeInOut(duration: 1.0)) {
                                isComplete.toggle()
                            }
                    }

                
                
                Text("Reset")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
        
        
        
        
// SIMPLE EXAMPLE  - BARE MINIMUM 
        
        
//        Text(isComplete ? "completed" : "not complete")
//            .padding()
//            .padding(.horizontal)
//            .background(isComplete ? .green : .gray)
//            .cornerRadius(10)
////            .onTapGesture {
////                isComplete.toggle()
////            }
//            .onLongPressGesture(minimumDuration: 1.0) {
//                isComplete.toggle()
//            }
    }
}

struct LongPressGesture_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGesture()
    }
}
