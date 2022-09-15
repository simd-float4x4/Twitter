import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var twitterView: UITableView!
    
    var tweet = generateSampleTweetData()
    var tweetData = [Tweet]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in tweet.tweetData.count {
            tweetData.append(tweetData[i])
        }
        
        twitterView.delegate = self
        twitterView.dataSource = self
        // Do any additional setup after loading the view.
        twitterView.register(UINib(nibName: "TwitterViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        twitterView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = twitterView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TwitterViewCell
        cell.tweetContent.text = tweetData[indexPath.row].content
        cell.userId.text = String(tweetData[indexPath.row].user.userDecidedId)
        cell.userName.text = String(tweetData[indexPath.row].user.name)
        cell.retweetButton.titleLabel?.text = String(tweetData[indexPath.row].retweetCount)
        cell.favoriteButton.titleLabel?.text = String(tweetData[indexPath.row].favoriteCount)
        return cell
    }

}

