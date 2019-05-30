//___FILEHEADER___

import Foundation

protocol ___VARIABLE_productName___ViewModelProtocol {
    
    var  delegate : ___VARIABLE_productName___ViewModelDelegate? {get set}
    func loadWithStarted ()
    func search(searchTxt:String)
    func filter(type:String,year:String)
    func adjustFilterView(_ value : Int)
    func selectMovie(at index : Int)
}

enum ___VARIABLE_productName___ViewModelOutput {
    case updateTitle(String)
    case setloading(Bool)
    case filterViewHidden(Int)
}

enum ___VARIABLE_productName___Route {
    case detail(___VARIABLE_productName___ViewModelProtocol)
}


protocol ___VARIABLE_productName___ViewModelDelegate : class {
    func handleViewModelOutput(_ output: ___VARIABLE_productName___ViewModelOutput)
    func navigate(to route : ___VARIABLE_productName___Route)
}

