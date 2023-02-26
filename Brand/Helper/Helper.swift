//
//  Helper.swift
//  Brand
//
//  Created by developer on 26/02/2023.
//

import Foundation

func delay(durationInSeconds seconds: Double, completion: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
     
}
