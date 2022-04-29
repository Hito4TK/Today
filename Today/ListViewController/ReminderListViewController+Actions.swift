//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Hito4TK on 2022/04/29.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}
