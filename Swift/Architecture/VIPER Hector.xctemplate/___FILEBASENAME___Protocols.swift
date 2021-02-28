//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

protocol ___VARIABLE_ModuleName___ViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: ___VARIABLE_ModuleName___PresenterProtocol? { get set }
}

protocol ___VARIABLE_ModuleName___RouterProtocol: class {
    // PRESENTER -> WIREFRAME
    static func create___VARIABLE_ModuleName___Module(coordinator:Coordinator?) -> ___VARIABLE_ModuleName___View
//    static func create___VARIABLE_ModuleName___Module() -> UIViewController
}

protocol ___VARIABLE_ModuleName___PresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: ___VARIABLE_ModuleName___ViewProtocol? { get set }
    var interactor: ___VARIABLE_ModuleName___InteractorInputProtocol? { get set }
    var router: ___VARIABLE_ModuleName___RouterProtocol? { get set }
    
    func viewDidLoad()
}

protocol ___VARIABLE_ModuleName___InteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol ___VARIABLE_ModuleName___InteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: ___VARIABLE_ModuleName___InteractorOutputProtocol? { get set }
}
