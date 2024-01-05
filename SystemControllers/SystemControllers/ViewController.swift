//
//  ViewController.swift
//  SystemControllers
//
//  Created by Arun Kudiyal on 09/10/23.
//

import UIKit
import SafariServices
import MessageUI

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtonClick(_ sender: UIButton) {
        guard let image = imageView.image else {
            return
        }
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender
        present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func safariButtonClick(_ sender: UIButton) {
        if let url = URL(string: "https://www.apple.com/") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true)
        }
    }
    
    @IBAction func cameraButtonClick(_ sender: UIButton) {
        // creating image picker for specifying the app of the choice
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        // creating alertConstroller using UIAlertController
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        // creating 3 actions for alertController i.e. Cancel, Camera & PhotoLib
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(cancelAction)
        //        let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: { action in
        //             print("Camera Action Selected")
        //        })
        //        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: { action in
        //            // print("Photo Libraray Selected")
        //        })
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: { action in
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true)
            })
            alertController.addAction(cameraAction)
        }
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: { action in
                imagePicker.sourceType = .photoLibrary
                self.
                self.present(imagePicker, animated: true)
            })
            alertController.addAction(photoLibraryAction)
        }
        // present the alertController
        alertController.popoverPresentationController?.sourceView = sender
        present(alertController, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {
            return
        }
        imageView.image = selectedImage
        dismiss(animated: true)
    }
    
    @IBAction func EmailButtonClick(_ sender: UIButton) {
        guard MFMailComposeViewController.canSendMail() else {
            print("Can not send mail")
            return
        }
        let mailComposer = MFMailComposeViewController()
        mailComposer.mailComposeDelegate = self
        mailComposer.setToRecipients(["example@example.com"])
        mailComposer.setSubject("Look at this")
        mailComposer.setMessageBody("Hello, this is an email from the app I made.", isHTML: false)
        if let image = imageView.image, let jpegData =
            image.jpegData(compressionQuality: 0.9) {
            mailComposer.addAttachmentData(jpegData, mimeType:
                                            "image/jpeg", fileName: "photo.jpg")
        }
        present(mailComposer, animated: true, completion: nil)
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true)
    }
}
