import UIKit

class VideoCell: UITableViewCell {
        
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    func setVideos(video: Video) {
        videoImageView.image = video.image
        videoTitle.text = video.title
    }
    
}
