// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift

import Foundation
import Rswift
import UIKit

/// This `R` struct is code generateted, and contains references to static resources.
struct R {
  struct color {
    private init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    private init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    private init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 5 images.
  struct image {
    /// Image `ClientsTabBar`.
    static let clientsTabBar = ImageResource(bundle: _R.hostingBundle, name: "ClientsTabBar")
    /// Image `RemindersTabBar`.
    static let remindersTabBar = ImageResource(bundle: _R.hostingBundle, name: "RemindersTabBar")
    /// Image `SettingsTabBar`.
    static let settingsTabBar = ImageResource(bundle: _R.hostingBundle, name: "SettingsTabBar")
    /// Image `TimersTabBar`.
    static let timersTabBar = ImageResource(bundle: _R.hostingBundle, name: "TimersTabBar")
    /// Image `TriggersTabBar`.
    static let triggersTabBar = ImageResource(bundle: _R.hostingBundle, name: "TriggersTabBar")
    
    /// `UIImage(named: "ClientsTabBar", bundle: ..., traitCollection: ...)`
    static func clientsTabBar(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.clientsTabBar, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "RemindersTabBar", bundle: ..., traitCollection: ...)`
    static func remindersTabBar(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.remindersTabBar, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "SettingsTabBar", bundle: ..., traitCollection: ...)`
    static func settingsTabBar(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.settingsTabBar, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "TimersTabBar", bundle: ..., traitCollection: ...)`
    static func timersTabBar(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.timersTabBar, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "TriggersTabBar", bundle: ..., traitCollection: ...)`
    static func triggersTabBar(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.triggersTabBar, compatibleWithTraitCollection: traitCollection)
    }
    
    private init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    private init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    private init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    private init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    private init() {}
  }
  
  private init() {}
}

struct _R {
  static let hostingBundle = NSBundle(identifier: "com.suryafinsys.TimeTracker") ?? NSBundle.mainBundle()
  
  struct nib {
    private init() {}
  }
  
  struct storyboard {
    struct launchScreen: StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIViewController
      
      let bundle = _R.hostingBundle
      let name = "LaunchScreen"
      
      private init() {}
    }
    
    private init() {}
  }
  
  private init() {}
}