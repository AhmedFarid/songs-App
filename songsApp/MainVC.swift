import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viedoCells = [customCell]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let p1 = customCell(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaVW9aEQ0N5TzozK9SUF4k6x7la1awxODdf_rRIx9kp4KHV-Im", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nfs8NYg7yQM\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Charlie Puth - Attention")
        
        let p2 = customCell(imageURL: "https://data.whicdn.com/images/195497307/large.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cH4E_t3m3xM\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Selena Gomez, Marshmello - Wolves")
        
        let p3 = customCell(imageURL: "http://www.allrightmusic.com/wp-content/uploads/2014/01/home_slider_2.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/G41Tg4Xq5AM\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Stromae Takes America - Papaoutai in New York City")
        
        let p4 = customCell(imageURL: "http://image.boomsbeat.com/data/images/full/281641/chainsmokers-jpg.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eACohWVwTOc\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "The Chainsmokers - Sick Boy")
        
        viedoCells.append(p1)
        viedoCells.append(p2)
        viedoCells.append(p3)
        viedoCells.append(p4)
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "songsCell", for: indexPath) as? videosCell {
            let songsCell = viedoCells[indexPath.row]
            cell.updateUI(customCell: songsCell)
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viedoCells.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let song = viedoCells[indexPath.row]
        performSegue(withIdentifier: "videoSuge", sender: song)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? videoVC {
            if let songs = sender as? customCell {
                destination.viedo = songs
            }
            
        }
    }
    
    
    
    
    
    
    
    
    
    
}

