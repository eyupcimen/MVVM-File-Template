//___FILEHEADER___

import Foundation
import UIKit

final class ___VARIABLE_productName___Builder
{
    static func make() -> ___VARIABLE_productName___Controller {
        let storyboard = UIStoryboard.init(name: "___VARIABLE_productName___" , bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "___VARIABLE_productName___Controller" ) as! ___VARIABLE_productName___Controller
        viewController.viewModel =  ___VARIABLE_productName___ViewModel(service: app.service)
        return viewController
    }
}

