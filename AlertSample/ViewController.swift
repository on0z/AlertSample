import UIKit

class ViewController: UIViewController {

    @IBAction func myButton(_ sender: AnyObject) {
        Alert()
    }
    @IBAction func ActionSheet(_ sender: AnyObject) {
        ActionSheet()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func Alert(){
        let myAlert: UIAlertController = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .alert)
        let OKAkction: UIAlertAction = UIAlertAction(title: "OK", style: .cancel, handler: {UIAlertAction in print(myAlert.textFields![0].text ?? "nil")})
        myAlert.addTextField(configurationHandler: nil)
        myAlert.addAction(OKAkction)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    func ActionSheet(){
        let myActionSheet: UIAlertController = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .actionSheet)
        let OKAkction: UIAlertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        myActionSheet.addAction(OKAkction)
        self.present(myActionSheet, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

