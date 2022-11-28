import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.NextStory(userChoice: sender.currentTitle!)
        UpdateUI()
    }
    
    func UpdateUI() {
        storyLabel.text = storyBrain.getTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

