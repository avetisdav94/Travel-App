//
//  SettingsViewController.swift
//  Brand
//
//  Created by developer on 26/02/2023.
//

import UIKit

class SettingsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.backgroundColor = .blue
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIBarButtonItem) {
        let onboardingViewController = UIStoryboard(name: Constants.StoryboardID.main, bundle: nil).instantiateViewController(withIdentifier: Constants.StoryboardID.onBoardingViewController)
        
        if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
            window.rootViewController = onboardingViewController
            
            
            UIView.transition(with: window, duration: 0.25, options: .transitionCrossDissolve, animations: nil, completion: nil)
        }
            
    }
}
