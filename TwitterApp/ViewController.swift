import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var twitterView: UITableView!
    
    var tweetList: [Tweet]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        return cell
    }

}

