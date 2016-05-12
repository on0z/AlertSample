import UIKit

class ViewController: UIViewController {

    @IBAction func myButton(sender: AnyObject) {
        Alert()
    }
    @IBAction func ActionSheet(sender: AnyObject) {
        ActionSheet()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func Alert(){
        let myAlert: UIAlertController = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .Alert)
        let OKAkction: UIAlertAction = UIAlertAction(title: "OK", style: .Cancel, handler: {UIAlertAction in print(myAlert.textFields![0].text ?? "nil")})
        myAlert.addTextFieldWithConfigurationHandler(nil)
        myAlert.addAction(OKAkction)
        self.presentViewController(myAlert, animated: true, completion: nil)
    }
    
    func ActionSheet(){
        let myActionSheet: UIAlertController = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .ActionSheet)
        let OKAkction: UIAlertAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        myActionSheet.addAction(OKAkction)
        self.presentViewController(myActionSheet, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

