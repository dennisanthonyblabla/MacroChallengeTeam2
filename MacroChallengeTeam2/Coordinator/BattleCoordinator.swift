//
//  BattleCoordinator.swift
//  Macro Challenge Team2
//
//  Created by Mohammad Alfarisi on 09/11/22.
//

import UIKit

final class BattleCoordinator: BaseCoordinator {
    private let navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        show(makeWaitingRoomViewController())
    }

    func makeWaitingRoomViewController() -> RuangTungguViewController {
        let viewController = RuangTungguViewController()
        
        viewController.onBack = { [weak self] in
            self?.pop()
            self?.completion?()
        }
        
        return viewController
    }
    
    private func show(_ viewController: UIViewController) {
        navigationController.pushViewController(viewController, animated: true)
    }
    
    private func pop() {
        navigationController.popViewController(animated: true)
    }
}
