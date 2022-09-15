import UIKit

class TwitterViewCell: UITableViewCell {

    @IBOutlet var tweetContent: UITextView!
    
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
