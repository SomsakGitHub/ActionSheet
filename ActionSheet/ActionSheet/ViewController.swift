//
//  ViewController.swift
//  ActionSheet
//
//  Created by somsak on 28/3/2564 BE.
//

import UIKit

class ActionSheetVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func defaultActionSheet(_ sender: UIButton) {
        
        let ac = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        ac.addAction(UIAlertAction(title: "Action", style: .default, handler: handlerAction))
        ac.addAction(UIAlertAction(title: "Destructive Action", style: .destructive, handler: handlerAction))
        let viewAction = UIAlertAction(title: "Color Action", style: .default , handler: handlerAction)
        viewAction.setValue(UIColor.blue, forKey: "titleTextColor")
        ac.addAction(viewAction)
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        // We need to provide a popover sourceView when using it on iPad
        //        ac.popoverPresentationController?.sourceView = (sender as! UIView)
        //        present(ac, animated: true)
        
        self.present(ac, animated: true, completion: nil)
    }
    
    @IBAction func withoutTitleActionSheet(_ sender: UIButton) {
        
        let ac = UIAlertController(title: "", message: "Message", preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Action", style: .default, handler: handlerAction))
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        self.present(ac, animated: true, completion: nil)
    }
    
    @IBAction func withoutMessageActionSheet(_ sender: UIButton) {
        
        let ac = UIAlertController(title: "Title", message: "", preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Action", style: .default, handler: handlerAction))
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        self.present(ac, animated: true, completion: nil)
    }
    
    @IBAction func withoutCancelActionSheet(_ sender: UIButton) {
        
        let ac = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Action", style: .default, handler: handlerAction))
        
        self.present(ac, animated: true, completion: nil)
    }
    
    @IBAction func mulipleActionSheet(_ sender: UIButton) {
        
        let weekArr: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        
        let ac = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        for index in 0 ..< weekArr.count  {
            
            let action = UIAlertAction(title: weekArr[index], style: .default, handler: {(alert: UIAlertAction!) in
                
                self.handlerMulipleAction(index: index)
            })
            
            ac.addAction(action)
        }
        
        self.present(ac, animated: true, completion: nil)
    }
    
    func handlerAction(action: UIAlertAction) {
        print("openPage")
    }
    
    func handlerMulipleAction(index: Int) {
        print("index", index)
    }
    
}

