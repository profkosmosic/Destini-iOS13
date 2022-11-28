import Foundation

struct StoryBrain {
    var index = 0
    
    let stories = [
        Story(title: "You are trapped in a dungeon with your friend. You see a barrel.", ch1: "Move barrel.", ch2: "Scream for help.", ch1Dest: 1, ch2Dest: 2),
        Story(title: "The barrel rolls aside and you find a secret tunnel.", ch1: "Enter tunnel.", ch2: "Check on friend.", ch1Dest: 3, ch2Dest: 4),
        Story(title: "No one can hear you.", ch1: "Move barrel.", ch2: "Try again.", ch1Dest: 1, ch2Dest: 2),
        Story(title: "You start to escape but your friend is too weak to go with you. They hand you a note.", ch1: "Leave.", ch2: "Read Note", ch1Dest: 5, ch2Dest: 6),
        Story(title: "Your friend is silent.", ch1: "Enter tunnel.", ch2: "Try again.", ch1Dest: 3, ch2Dest: 4),
        Story(title: "You crawl through the tunnel and the tunnel leads to a beach. You see a boat.", ch1: "Get on the boat.", ch2: "Stay on the beach.", ch1Dest: 7, ch2Dest: 8),
        Story(title: "Your friend is asking you not to leave them.", ch1: "Leave.", ch2: "Stay.", ch1Dest: 5, ch2Dest: 9),
        Story(title: "Congratulations, you're heading to a new world!", ch1: "THE", ch2: "END", ch1Dest: 0, ch2Dest: 0),
        Story(title: "You have a hard time moving on.", ch1: "THE", ch2: "END", ch1Dest: 0, ch2Dest: 0),
        Story(title: "You sat next to your friend and stayed in the cave.", ch1: "THE", ch2: "END", ch1Dest: 0, ch2Dest: 0)
    ]
    
    func getTitle() -> String {
        return stories[index].title
    }
    
    func getChoice1() -> String {
        return stories[index].ch1
    }
    
    func getChoice2() -> String {
        return stories[index].ch2
    }
    
    mutating func NextStory(userChoice:String) {
        let currentStory = stories[index]
        
        if userChoice == currentStory.ch1 {
            index = currentStory.ch1Dest
        }
        else if userChoice == currentStory.ch2 {
            index = currentStory.ch2Dest
        }
    }
}
