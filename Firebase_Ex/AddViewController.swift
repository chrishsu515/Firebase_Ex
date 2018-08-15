//
//  AddViewController.swift
//  Firebase_Ex
//
//  Created by Chris on 2018/7/23.
//  Copyright © 2018年 Chris. All rights reserved.
//

import UIKit
import Firebase

class AddViewController: UIViewController {
    var ref : DatabaseReference!

    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtContent: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        print(ref.debugDescription)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save_Click(_ sender: UIButton) {
        if ref != nil {
            let dataKey = ref.childByAutoId().key
            self.ref.child("newData").child("Sara").setValue(["title" : txtTitle.text!,
                                                      "content" : txtContent.text!])
            dismiss(animated: true, completion: nil)
        } else {
            print("Error!")
        }


    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
