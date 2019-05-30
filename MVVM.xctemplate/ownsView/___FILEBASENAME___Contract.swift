//___FILEHEADER___

import Foundation

protocol ___VARIABLE_productName___ViewModelProtocol {
    
    var  delegate : ___VARIABLE_productName___ViewModelDelegate? {get set}
    func loadWithStarted ()
    func search(searchTxt:String)
}

enum ___VARIABLE_productName___ViewModelOutput {
    
    case setTitle(String)
    case setloading(Bool)
}

enum ___VARIABLE_productName___Route {
    case detail(___VARIABLE_productName___ViewModelProtocol)
}


protocol ___VARIABLE_productName___ViewModelDelegate : class {
    func handleViewModelOutput(_ output: ___VARIABLE_productName___ViewModelOutput)
    func navigate(to route : ___VARIABLE_productName___Route)
}

