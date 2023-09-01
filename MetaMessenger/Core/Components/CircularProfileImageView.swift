//
//  CircularProfileImageView.swift
//  MetaMessenger
//
//  Created by Prakash Bist on 2023/08/24.
//

import SwiftUI

enum profileImageSize: CGFloat {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge
    
    var dimention: CGFloat {
        switch self {
        case .xxSmall:
            return 28
        case .xSmall:
            return 32
        case .small:
            return 40
        case .medium:
            return 56
        case .large:
            return 64
        case .xLarge:
            return 80
        }
    }
}

struct CircularProfileImageView: View {
    let user: User
    var size: profileImageSize
    
    var body: some View {
        
        if let imageUrl = user.profileImageUrl {
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimention, height: size.dimention)
                .clipShape(Circle())
            
        } else {
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFill()
                .foregroundColor(Color.gray)
                .frame(width: size.dimention, height: size.dimention)
                .clipShape(Circle())
        }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView(user: User.MOCK_USER, size: .large)
    }
}
