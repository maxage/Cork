//
//  Preview Package.swift
//  Cork
//
//  Created by David Bureš on 16.09.2024.
//

import SwiftUI
import CorkShared
import ButtonKit

/// Preview a package according to its name
struct PreviewPackageButton: View
{
    @Environment(\.openWindow) var openWindow: OpenWindowAction
    let packageToPreview: MinimalHomebrewPackage
    
    var body: some View
    {
        Button
        {
            
            openWindow(value: packageToPreview)
        } label: {
            Text("preview-package.action")
        }
        .keyboardShortcut("p", modifiers: [.command, .option])
    }
}

struct PreviewPackageButtonWithCustomAction: View
{
    
    let action: () -> Void
    var body: some View {
        Button
        {
            action()
        } label: {
            Text("preview-package.action")
        }
        .keyboardShortcut("p", modifiers: [.command, .option])
    }
}
