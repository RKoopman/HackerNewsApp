////
////  Colors+Extensions.swift
////  HackerNewsApp
////
////  Created by R K on 10/11/22.
////
//
//import Foundation
//import SwiftUI
//
//extension Color {
//    init(hex: Int, opacity: Double = 1.0) {
//        let red = Double((hex & 0xff0000) >> 16) / 255.0
//        let green = Double((hex & 0xff00) >> 8) / 255.0
//        let blue = Double((hex & 0xff) >> 0) / 255.0
//        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
//    }
//}
//
//enum ColorCatalog {
//    case black10
//    
//    case blue00
//    case blue10
//    case blue20
//    case blue30
//    case blue40
//    case blue50
//    case blue60
//    case blue70
//    case blue80
//    case blue90
//    
//    case brown00
//    case brown10
//    case brown20
//    case brown30
//    case brown40
//    case brown50
//    case brown60
//    case brown70
//    case brown80
//    case brown90
//    
//    case darkGrey00
//    case darkGrey10
//    case darkGrey20
//    case darkGrey30
//    case darkGrey40
//    case darkGrey50
//    case darkGrey60
//    case darkGrey70
//    case darkGrey80
//    case darkGrey90
//    
//    case forestGreen00
//    case forestGreen10
//    case forestGreen20
//    case forestGreen30
//    case forestGreen40
//    case forestGreen50
//    case forestGreen60
//    case forestGreen70
//    case forestGreen80
//    case forestGreen90
//    
//    case green00
//    case green10
//    case green20
//    case green30
//    case green40
//    case green50
//    case green60
//    case green70
//    case green80
//    case green90
//    
//    case grey00
//    case grey10
//    case grey20
//    case grey30
//    case grey40
//    case grey50
//    case grey60
//    case grey70
//    case grey80
//    case grey90
//    
//    case lightBlue10
//    case lightBlue20
//    case lightBlue30
//    case lightBlue40
//    case lightBlue50
//    case lightBlue60
//    case lightBlue70
//    case lightBlue80
//    
//    case lightGrey00
//    case lightGrey10
//    case lightGrey20
//    case lightGrey30
//    case lightGrey40
//    case lightGrey50
//    case lightGrey60
//    case lightGrey70
//    case lightGrey80
//    case lightGrey90
//    
//    case navyBlue00
//    case navyBlue10
//    case navyBlue20
//    case navyBlue30
//    case navyBlue40
//    case navyBlue50
//    case navyBlue60
//    case navyBlue70
//    case navyBlue80
//    
//    case orange10
//    case orange20
//    case orange30
//    case orange40
//    case orange50
//    case orange60
//    case orange70
//    case orange80
//    case orange90
//    
//    case purple00
//    case purple10
//    case purple20
//    case purple30
//    case purple40
//    case purple50
//    case purple60
//    case purple70
//    case purple80
//    case purple90
//    
//    case red10
//    case red20
//    case red30
//    case red40
//    case red50
//    case red60
//    case red70
//    case red80
//    case red90
//    
//    case yellow10
//    case yellow20
//    case yellow30
//    case yellow40
//    case yellow50
//    case yellow60
//    case yellow70
//    case yellow80
//    case yellow90
//}
//    
//extension Color {
//    
//    static func appColor(_ name: ColorCatalog) -> Color {
//        switch name {
//            case .black10:
//                return Color("black10")
//            
//            case .green10:
//                return Color("green10")
//            case .green20:
//                return Color("green20")
//            case .green30:
//                return Color("green30")
//            case .green40:
//                return Color("green40")
//            case .green50:
//                return Color("green50")
//            case .green60:
//                return Color("green60")
//        
//            case .grey10:
//                return Color("grey10")
//            case .grey20:
//                return Color("grey20")
//            case .grey30:
//                return Color("grey30")
//            case .grey40:
//                return Color("grey40")
//            case .grey50:
//                return Color("grey50")
//            case .grey60:
//                return Color("grey60")
//            case .grey70:
//                return Color("grey70")
//            case .grey80:
//                return Color("grey80")
//        
//            case .lightBlue10:
//                return Color("lightBlue10")
//            case .lightBlue20:
//                return Color("lightBlue20")
//            case .lightBlue30:
//                return Color("lightBlue30")
//            case .lightBlue40:
//                return Color("lightBlue40")
//            case .lightBlue50:
//                return Color("lightBlue50")
//            case .lightBlue60:
//                return Color("lightBlue60")
//            case .lightBlue70:
//                return Color("lightBlue70")
//            case .lightBlue80:
//                return Color("lightBlue80")
//        
//            case .red10:
//                return Color("red10")
//            case .red20:
//                return Color("red20")
//            case .red30:
//                return Color("red30")
//            case .red40:
//                return Color("red40")
//            case .red50:
//                return Color("red50")
//            case .red60:
//                return Color("red60")
//            case .red70:
//                return Color("red70")
//            case .red80:
//                return Color("red80")
//            case .red90:
//                return Color("red90")
//        
//            case .blue00:
//                return Color("blue00")
//            case .blue10:
//                return Color("blue10")
//            case .blue20:
//                return Color("blue20")
//            case .blue30:
//                return Color("blue30")
//            case .blue40:
//                return Color("blue40")
//            case .blue50:
//                return Color("blue50")
//            case .blue60:
//                return Color("blue60")
//            case .blue70:
//                return Color("blue70")
//            case .blue80:
//                return Color("blue80")
//            case .blue90:
//                return Color("blue90")
//           
//            case .brown00:
//                return Color("brown00")
//            case .brown10:
//                return Color("brown10")
//            case .brown20:
//                return Color("brown20")
//            case .brown30:
//                return Color("brown30")
//            case .brown40:
//                return Color("brown40")
//            case .brown50:
//                return Color("brown50")
//            case .brown60:
//                return Color("brown60")
//            case .brown70:
//                return Color("brown70")
//            case .brown80:
//                return Color("brown80")
//            case .brown90:
//                return Color("brown90")
//           
//            case .darkGrey00:
//                return Color("darkGrey00")
//            case .darkGrey10:
//                return Color("darkGrey10")
//            case .darkGrey20:
//                return Color("darkGrey20")
//            case .darkGrey30:
//                return Color("darkGrey30")
//            case .darkGrey40:
//                return Color("darkGrey40")
//            case .darkGrey50:
//                return Color("darkGrey50")
//            case .darkGrey60:
//                return Color("darkGrey60")
//            case .darkGrey70:
//                return Color("darkGrey70")
//            case .darkGrey80:
//                return Color("darkGrey80")
//            case .darkGrey90:
//                return Color("darkGrey90")
//            
//            case .forestGreen00:
//                return Color("forestGreen00")
//            case .forestGreen10:
//                return Color("forestGreen10")
//            case .forestGreen20:
//                return Color("forestGreen20")
//            case .forestGreen30:
//                return Color("forestGreen30")
//            case .forestGreen40:
//                return Color("forestGreen40")
//            case .forestGreen50:
//                return Color("forestGreen50")
//            case .forestGreen60:
//                return Color("forestGreen60")
//            case .forestGreen70:
//                return Color("forestGreen70")
//            case .forestGreen80:
//                return Color("forestGreen80")
//            case .forestGreen90:
//                return Color("forestGreen90")
//            
//            case .green00:
//                return Color("green00")
//            case .green70:
//                return Color("green70")
//            case .green80:
//                return Color("green80")
//            case .green90:
//                return Color("green90")
//            case .grey00:
//                return Color("grey00")
//            case .grey90:
//                return Color("grey90")
//            
//            case .lightGrey00:
//                return Color("lightGrey00")
//            case .lightGrey10:
//                return Color("lightGrey10")
//            case .lightGrey20:
//                return Color("lightGrey20")
//            case .lightGrey30:
//                return Color("lightGrey30")
//            case .lightGrey40:
//                return Color("lightGrey40")
//            case .lightGrey50:
//                return Color("lightGrey50")
//            case .lightGrey60:
//                return Color("lightGrey60")
//            case .lightGrey70:
//                return Color("lightGrey70")
//            case .lightGrey80:
//                return Color("lightGrey80")
//            case .lightGrey90:
//                return Color("lightGrey90")
//            
//            case .navyBlue00:
//                return Color("navyBlue00")
//            case .navyBlue10:
//                return Color("navyBlue10")
//            case .navyBlue20:
//                return Color("navyBlue20")
//            case .navyBlue30:
//                return Color("navyBlue30")
//            case .navyBlue40:
//                return Color("navyBlue40")
//            case .navyBlue50:
//                return Color("navyBlue50")
//            case .navyBlue60:
//                return Color("navyBlue60")
//            case .navyBlue70:
//                return Color("navyBlue70")
//            case .navyBlue80:
//                return Color("navyBlue80")
//            
//            case .orange10:
//                return Color("orange10")
//            case .orange20:
//                return Color("orange20")
//            case .orange30:
//                return Color("orange30")
//            case .orange40:
//                return Color("orange40")
//            case .orange50:
//                return Color("orange50")
//            case .orange60:
//                return Color("orange60")
//            case .orange70:
//                return Color("orange70")
//            case .orange80:
//                return Color("orange80")
//            case .orange90:
//                return Color("orange90")
//            
//            case .purple00:
//                return Color("purple00")
//            case .purple10:
//                return Color("purple10")
//            case .purple20:
//                return Color("purple20")
//            case .purple30:
//                return Color("purple30")
//            case .purple40:
//                return Color("purple40")
//            case .purple50:
//                return Color("purple50")
//            case .purple60:
//                return Color("purple60")
//            case .purple70:
//                return Color("purple70")
//            case .purple80:
//                return Color("purple80")
//            case .purple90:
//                return Color("purple90")
//            
//            case .yellow10:
//                return Color("yellow10")
//            case .yellow20:
//                return Color("yellow20")
//            case .yellow30:
//                return Color("yellow30")
//            case .yellow40:
//                return Color("yellow40")
//            case .yellow50:
//                return Color("yellow50")
//            case .yellow60:
//                return Color("yellow60")
//            case .yellow70:
//                return Color("yellow70")
//            case .yellow80:
//                return Color("yellow80")
//            case .yellow90:
//                return Color("yellow90")
//        }
//    }
//}
