//
//  ViewController.swift
//  DemoFWTest
//
//  Created by Prasad Parab on 10/03/22.
//

import UIKit
import Alamofire
//import DemoPod

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fetch()
    }
    
    func fetch() {
        guard let url = URL(string: "https://rickandmortyapi.com/api") else { return }
        let request = URLRequest(url: url)
        AF.request(request)
            .validate()
            .response { dataResponse in
                switch dataResponse.result {
                case .success(let data):
                    guard let data else { return }
                    if let str = String(data: data, encoding: .utf8) {
                        print("\(#function) : response : \(str)")
                        self.textView.text = str
                    }
                case .failure(let error):
                    print("\(#function) : error : \(error)")
                }
            }
    }
    
    @IBAction func demoPodBtnTapped(_ sender: UIButton) {
//        DemoPodInitializer.shared.configure(ref: self)
    }
}

