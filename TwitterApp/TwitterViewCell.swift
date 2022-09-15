import UIKit

class TwitterViewCell: UITableViewCell {

    @IBOutlet var tweetContent: UITextView!
    
    @IBOutlet var userName: UILabel!
    @IBOutlet var userId: UILabel!
    
    @IBOutlet var tweetCreatedDate: UILabel!
    
    @IBOutlet var retweetButton: UIButton!
    @IBOutlet var favoriteButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tweetContent.isScrollEnabled = false
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
