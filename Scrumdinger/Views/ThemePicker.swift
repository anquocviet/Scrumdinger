//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by VIE on 29/12/2023.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        if #available(iOS 16.0, *) {
            Picker("Theme", selection: $selection) {
                ForEach(Theme.allCases) { theme in
                    ThemeView(theme: theme)
                        .tag(theme)
                }
            }
            .pickerStyle(.navigationLink)
        } else {
            Picker("Theme", selection: $selection) {
                ForEach(Theme.allCases) { theme in
                    ThemeView(theme: theme)
                        .tag(theme)
                }
            }
        }
    }
}

#Preview {
    ThemePicker(selection: .constant(.periwinkle))
}
