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
    func subscriptionNewCoordinator() {
        let child = <#subCoordinator#>(navigationController: navigationController)
           childCoordinators.append(child)
           child.start()
       }
    */
    
    /*
    func goToView() {
        let vc = UIViewController()
     
        // Use only in tabbar
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
     
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
     */
    
    func childDidFinish(_ child:Coordinator?) {
        for (index,coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        if navigationController.viewControllers.contains(fromViewController) { return }
        /*
        //Remove subCoordiantor when back
        if let viewController = fromViewController as? <#ViewControllerSubCoordinator#> {
            childDidFinish(buyViewController.coordinator)
        }
         */
    }
}
