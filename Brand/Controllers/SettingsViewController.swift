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
        PresenterManager.shared.show(vc: .onboarding)
    }
}
