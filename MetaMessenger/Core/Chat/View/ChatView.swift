//
//  ChatView.swift
//  MetaMessenger
//
//  Created by Prakash Bist on 2023/08/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    VStack(spacing: 4) {
                        Text("Xaya Pandey")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("Messenger")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
                
                ForEach(0 ... 15, id: \.self) { message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
            }
                Spacer()
                
                ZStack(alignment: .trailing) {
                    TextField("Aa", text: $messageText, axis: .vertical)
                        .padding(12)
                        .padding(.trailing, 48)
                        .background(Color(.systemGroupedBackground))
                        .clipShape(Capsule())
                        .font(.subheadline)
                    
                    Button {
                        print("send message")
                    } label: {
                        Text("Send")
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal)
                }
                .padding()
            }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
