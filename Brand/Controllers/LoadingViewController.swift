//
//  LoadingViewController.swift
//  Brand
//
//  Created by developer on 26/02/2023.
//


import UIKit


class LoadingViewController: UIViewController {
    
    private let isUserLoggedIn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        delay(durationInSeconds: 2.0) {
            self.showInitialView()
        }
        
    }
    private func showInitialView() {
        if isUserLoggedIn {
            PresenterManager.shared.show(vc: .mainTabBarController)
        }else {
            performSegue(withIdentifier: Constants.Segue.showOnboardingScreen, sender: nil)
        }
    }
}
