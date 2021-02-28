//___FILEHEADER___


import UIKit

class ___FILEBASENAME___: NSObject, Coordinator, UINavigationControllerDelegate {
    
    var navigationController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //Method for init coordinator
//        navigationController.delegate = self
//        let vc = UIViewController()
//        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
    }
    
    /*
    func goToView() {
        let vc = UIViewController()
     
        // Use only in tabbar
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
     
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
     */
}
