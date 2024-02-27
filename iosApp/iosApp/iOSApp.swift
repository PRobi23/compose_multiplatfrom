import SwiftUI
import ComposeApp

@main
struct iOSApp: App {
    
    init() {
        Platform_iosKt.doInitKoin()
    }
    
	var body: some Scene {
		WindowGroup {
			ContentView()
		}
	}
}
