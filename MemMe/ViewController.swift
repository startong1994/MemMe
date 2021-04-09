//
//  ViewController.swift
//  MemMe
//
//  Created by xu daitong on 4/8/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.image.frame = view.bounds //set the image fit to the screen
    }


    // GET iMAGE FROM PHOTO LIBRARY
    @IBAction func getImageFromLibrary(_ sender: UIBarButtonItem) {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil)
    }
    //GET IMAGE FROM CAMERA
    @IBAction func getImageFromCamera(_ sender: UIBarButtonItem) {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = .camera
        present(pickerController, animated: true, completion: nil)
    }
    
    //pick a image from system,
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            self.image.image = image
            print("saved image")
            dismiss(animated: true, completion: nil)
        }
    }
    
}

