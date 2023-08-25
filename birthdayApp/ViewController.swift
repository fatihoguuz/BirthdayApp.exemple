//
//  ViewController.swift
//  birthdayApp
//
//  Created by Fatih Oğuz on 24.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameTextFiled: UITextField!
    @IBOutlet weak var surnameTextFiled: UITextField!
    @IBOutlet weak var birthdayTextFiled: UITextField!
    
    @IBOutlet weak var NameText: UILabel!
    @IBOutlet weak var surnameText: UILabel!
    @IBOutlet weak var birthdayText: UILabel!
    
    override func viewDidLoad() {
       
        
       
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedSurname = UserDefaults.standard.object(forKey: "surname")
        
         let storedBirthday =  UserDefaults.standard.object(forKey: "birthday")
        if let newName = storedName as? String {
            
            NameText.text = "Name: \(newName)"
        }
        if let newSurname = storedSurname as? String{
            surnameText.text = "Surname: \(newSurname)"
        }
        
        if let newBirthday = storedBirthday as? String{
            birthdayText.text = "Birthday: \(newBirthday)"
        }
        super.viewDidLoad()
        
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(NameTextFiled.text, forKey: "name")
        UserDefaults.standard.set(surnameTextFiled.text, forKey: "surname")
        UserDefaults.standard.set(birthdayTextFiled.text, forKey: "birthday")
        
        NameText.text = "Name: \(NameTextFiled.text!)"
        surnameText.text = "Surname: \(surnameTextFiled.text!)"
        birthdayText.text = "Birthday: \(birthdayTextFiled.text!)"

    }
    
    
    @IBAction func deleteButton(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedSurname = UserDefaults.standard.object(forKey: "surname")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if ((storedName as? String ) != nil) {
            UserDefaults.standard.removeObject(forKey: "name")
            NameText.text = "Name: "
        }
        if ((storedSurname as? String) != nil){
            UserDefaults.standard.removeObject(forKey: "surname")
            surnameText.text = "Surname: "
        }
        if ((storedBirthday as? String) != nil){
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayText.text = "Birthday: "
        }
    }
    
    
}
