//
//  DetailsViewController.swift
//  MetamorfAssignment
//
//  Created by Govind Kumar on 01/06/23.
//

import UIKit

@objc class DetailsViewController: UIViewController {
    
    // MARK: - IBOutlet's ..
    @IBOutlet weak var labelUserName: UILabel!
    
    @IBOutlet weak var imageViewUser: UIImageView!
    @IBOutlet weak var labelUserAge: UILabel!
    
    @IBOutlet weak var labelUserEmail: UILabel!
    @IBOutlet weak var labelUserDateOfJoining: UILabel!
    @IBOutlet weak var labelUserDateOfBirth: UILabel!
    
    @IBOutlet weak var labelUserCity: UILabel!
    @IBOutlet weak var labelUserState: UILabel!
    @IBOutlet weak var labelUserCountry: UILabel!
    @IBOutlet weak var labelUserPostcode: UILabel!
    
    @objc var data:[String:Any] = [:]{
        didSet{
            self.setData()
        }
    }
    // MARK: - View life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Required functions's
    func setData(){
        DispatchQueue.main.async {
            
            if let name = self.data["name"] as? [String:Any]{
                if let fName = name["first"] as? String, let lName = name["last"] as? String{
                    let fullName = "\(fName)" + " " + "\(lName)"
                    self.labelUserName.text = fullName
                }
            }
            
            if let pic = self.data["picture"] as? [String:Any], let stringUrl = pic["large"] as? String{
                let url = URL(string: stringUrl)!
                self.downloadImage(from: url)
            }
            if let dob = self.data["dob"] as? [String:Any], let stringAge = dob["age"] as? String{
                self.labelUserAge.text = stringAge
            }
            if let email = self.data["email"] as? String{
                self.labelUserEmail.text = "Email: \(email)"
            }
            if let registered = self.data["registered"] as? [String:Any], let date = registered["date"] as? String{
                self.labelUserDateOfJoining.text = "Date of join: \(date)"
            }
            if let dob = self.data["dob"] as? [String:Any], let date = dob["date"] as? String{
                self.labelUserDateOfBirth.text = "DOB: \(date)"
            }
            if let location = self.data["location"] as? [String:Any], let city = location["city"] as? String{
                self.labelUserCity.text = "City: \(city)"
            }
            if let location = self.data["location"] as? [String:Any], let state = location["state"] as? String{
                self.labelUserState.text = "State: \(state)"
            }
            if let location = self.data["location"] as? [String:Any], let country = location["country"] as? String{
                self.labelUserCountry.text = "Country: \(country)"
            }
            if let location = self.data["location"] as? [String:Any], let postcode = location["postcode"] as? Int{
                self.labelUserPostcode.text = "Postcode: \(postcode)"
            }
            
        }
    }
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func downloadImage(from url: URL) {
        print("Download Started")
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            print("Download Finished")
            // always update the UI from the main thread
            DispatchQueue.main.async() { [weak self] in
                self?.imageViewUser.image = UIImage(data: data)
            }
        }
    }
    
    // MARK: - Required action's
    @IBAction func actionOfBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}
