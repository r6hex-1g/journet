import SwiftUI

struct DiaryCard: View {
    var image: String
    var title: String
    var desciption: String
    var author: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("MainColor"))
                        .fontDesign(.rounded)
                        .lineLimit(2)
                    
                    Text(desciption)
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .lineLimit(3)
                    
                    HStack(spacing: 5) {
                        Text(author)
                    }
                    .font(.caption)
                    .foregroundColor(.secondary)
                }
//                .padding()
                .layoutPriority(100)
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 97/255, green: 144/255, blue: 244/255, opacity: 0.3), lineWidth: 1)
        )
        .frame(width: 200, height: 250)
    }
}
