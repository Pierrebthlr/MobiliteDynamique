//
//  ProfileViewController.swift
//  MobiliteDynamique
//
//  Created by Pierre Bathellier on 12/12/2017.
//  Copyright © 2017 Pierre Bathellier. All rights reserved.
//

import Foundation

import Eureka


class ProfileViewController: FormViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
        
        
        form +++ Section("Personal data")
            
            <<< TextRow(){
                $0.title = "Name"
                $0.placeholder = "Enter text here"
                $0.value = UserDefaultsManager.name
                $0.onChange{row in
                    if let value = row.value {
                        UserDefaultsManager.name = value
                    }
                }
            }
            <<< DateRow(){
                $0.title = "Date of birth"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
            }
            <<< SegmentedRow<String>() {
                $0.options = ["M", "F", "Not Specify"]
                $0.value = UserDefaultsManager.gender
                $0.onChange { row in
                    if let value = row.value {
                        UserDefaultsManager.gender = value
                    }
                }
                
            }
            
            <<< ActionSheetRow<String>() {
                $0.title = "Educational qualification"
                $0.selectorTitle = "Educational qualification"
                $0.options = ["No qualification","College Patent","Baccalaureate","University degree","Looking for a job", "University Master","Other"]
                $0.value = "No Selection"    // initially selected
            }
            
            
            <<< ActionSheetRow<String>() {
                $0.title = "Job"
                $0.selectorTitle = "Job"
                $0.options = ["Entrepreneur","Artisan, merchant","Executive, intellectual and artistic profession","Worker","Looking for a job", "Student"]
                $0.value = "No Selection"    // initially selected
            }
            
            
            +++ Section("How I travel")
            <<< MultipleSelectorRow<String>() {
                $0.title = "Transport used"
                $0.options = ["Public transport", "Bicycle", "Private car", "Car Sharing"]

        }
            }

    
    private func initialize() {
        
        navigationItem.title = "Edit your profile"

        let deleteButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: .deleteButtonPressed)
        deleteButton.tintColor =  UIColor.color(fromHexString: "#FFFFFF")
        navigationItem.leftBarButtonItem = deleteButton
        
        let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: .saveButtonPressed)
        saveButton.tintColor =  UIColor.color(fromHexString: "#FFFFFF")
        navigationItem.rightBarButtonItem = saveButton
        
        view.backgroundColor = .white
    }
    
    // MARK: - Actions
    @objc fileprivate func saveButtonPressed(_ sender: UIBarButtonItem) {
        _ = navigationController?.popViewController(animated: true)
    }
    
    @objc fileprivate func deleteButtonPressed(_ sender: UIBarButtonItem) {
        
        // Uncomment these lines
        //    let alert = UIAlertController(title: "Delete this item?", message: nil, preferredStyle: .alert)
        //    let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        //    let delete = UIAlertAction(title: "Delete", style: .destructive) { [weak self] _ in
        //      self?.viewModel.delete()
        //      _ = self?.navigationController?.popViewController(animated: true)
        //    }
        //
        //    alert.addAction(delete)
        //    alert.addAction(cancel)
        //
        //    navigationController?.present(alert, animated: true, completion: nil)
        
        // Delete this line
        _ = navigationController?.popViewController(animated: true)
    }
}

extension Selector {
    fileprivate static let saveButtonPressed = #selector(ProfileViewController.saveButtonPressed(_:))
    fileprivate static let deleteButtonPressed = #selector(ProfileViewController.deleteButtonPressed(_:))
}
