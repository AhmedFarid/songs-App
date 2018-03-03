import UIKit

class videosCell: UITableViewCell {

    
    @IBOutlet weak var songNameLablr: UILabel!
    @IBOutlet weak var iamge: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(customCell: customCell) {
        songNameLablr.text = customCell.videoTitle
        
        let url = URL(string: customCell.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.iamge.image = UIImage(data: data)
                }
            } catch  {
                
            }
        }
    }
    

}
