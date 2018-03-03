import UIKit

class videoVC: UIViewController {

    @IBOutlet weak var songLable: UILabel!
    @IBOutlet weak var webView: UIWebView!
    
    
    private var _viedo: customCell!
    
    var viedo:customCell {
        get {
            return _viedo
        }set {
            _viedo = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songLable.text = viedo.videoTitle
        webView.loadHTMLString(viedo.videoURL, baseURL: nil)
        

       
    }

}
