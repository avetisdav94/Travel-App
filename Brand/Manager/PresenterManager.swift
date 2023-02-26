//
//  PresenterManager.swift
//  Brand
//
//  Created by developer on 26/02/2023.
//

import UIKit

class PresenterManager {
    static let shared = PresenterManager()
    private init () {}
    
    enum VC {
        case mainTabBarController
        case onboarding
    }
    func show(vc: VC) {
        
        var viewController: UIViewController
        
        switch vc {
        case .mainTabBarController:
            viewController = UIStoryboard(name: Constants.StoryboardID.main, bundle: nil).instantiateViewController(withIdentifier: Constants.StoryboardID.mainTabBarController)
        case .onboarding:
            viewController = UIStoryboard(name: Constants.StoryboardID.main, bundle: nil).instantiateViewController(withIdentifier: Constants.StoryboardID.onBoardingViewController)
        }
        
        if let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
            window.rootViewController = viewController
            UIView.transition(with: window, duration: 0.25,options: .transitionCrossDissolve, animations: nil, completion: nil)
        }
    }
}
