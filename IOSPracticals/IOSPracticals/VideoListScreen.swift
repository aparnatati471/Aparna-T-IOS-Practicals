import UIKit

class VideoListScreen: UIViewController {
    
    var videos: [Video] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = videoArray()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func videoArray() -> [Video] {
        var videoDetails: [Video] = []
        
        videoDetails.append(Video(image: UIImage(named: "img1.jpeg")!, title: "IOS Development"))
        videoDetails.append(Video(image: UIImage(named: "img2.jpeg")!, title: "Kotlin Development"))
        videoDetails.append(Video(image: UIImage(named: "img3.png")!, title: "Swift Development"))
        videoDetails.append(Video(image: UIImage(named: "img4.png")!, title: "Java Development"))
        videoDetails.append(Video(image: UIImage(named: "img5.png")!, title: "Android Development"))
        
        return videoDetails
    }
    
}

extension VideoListScreen: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideos(video: video)
        return cell
    }

}
