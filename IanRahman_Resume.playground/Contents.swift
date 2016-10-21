import UIKit

/*:
 
 # The Curriculum Vitae of Ian Alexander Rahman
 
 
 Hi! My name is Ian, and I'm an iOS developer and instructor of iOS development at the Flatiron School in New York City.
 
 You can find more detailed information about my experience and education on my LinkedIn profile: https://www.linkedin.com/in/ianrahman
 
 PS- Don't forget to open the debugger console!
 
 */

struct Ian {
    
    let life = Life()
    let name: String
    var role: String = ""
    var location: Location = Location.nyc
    var skills: [Skill] = []
    var experience: [Experience] = []
    var education: [Education] = []
    var interests: [String] = []
    var funFact: String = ""
    
    init(name: String) {
        
        self.name = name
        
        if name == "Ian Alexander Rahman" {
            self.role = "Swifty Swashbuckler"
            self.location = Location.nyc
            
            for skill in life.getSkills() {
                self.learn(skill: skill)
            }
            
            for experience in life.getExperience() {
                self.add(experience: experience)
            }
            
            for education in life.getEducation() {
                self.payLotsOfMoneyFor(education: education)
            }
            
            for interest in life.becomeInteresting() {
                self.develop(interest: interest)
            }
            
            self.funFact = facts[Int(arc4random_uniform(UInt32(facts.count)))]
        }
    }
}


// TODO: - Turn data into separate properites
class Life {
    
    func getSkills() -> [Skill] {
        
        let skill0 = Skill(name: "Swift", level: .medium)
        let skill1 = Skill(name: "Objective-C", level: .medium)
        let skill2 = Skill(name: "Project Management", level: .high)
        let skill3 = Skill(name: "Beard Growing", level: .high)
        let skill4 = Skill(name: "Taking Risks", level: .medium)
        let skill5 = Skill(name: "Poking Holes in Ideas, Then Making Them Stronger", level: .high)
        let skill6 = Skill(name: "Writing and Presentation", level: .high)
        let skill7 = Skill(name: "Cooking", level: .medium)
        let skill8 = Skill(name: "Salsa Dancing", level: .low)
        let skill9 = Skill(name: "Digital Photography", level: .high)
        let skill10 = Skill(name: "Sketch", level: .low)
        let skill11 = Skill(name: "Trying New Things", level: .high)
        
        return [skill0, skill1, skill2, skill3, skill4, skill5, skill6, skill7, skill8, skill9, skill10, skill11]
    }
    
    func getExperience() -> [Experience] {
        
        let experience0 = Experience(title: "Producer and Photographer",
                                     company: "iamramen industries",
                                     dates: "August 2008 to June 2012",
                                     description: "Started a small, solo business out of my dorm room in which I produced audio and shot photos for independent artists and clients. I conducted needs assessments and learned to tailor my deliverables to the specifications of my customer.")
        let experience1 = Experience(title: "Volunteer and Multimedia Coordinator",
                                     company: "The ComedyCures Foundation",
                                     dates: "September 2008 to August 2014",
                                     description: "Coming soon!")
        let experience2 = Experience(title: "Analyst",
                                     company: "Analytic Partners",
                                     dates: "October 2014 to October 2015",
                                     description: "Coming soon!")
        let experience3 = Experience(title: "Producer and Drummer",
                                     company: "New Immunity",
                                     dates: "June 2012 to December 2015",
                                     description: "Coming soon!")
        let experience4 = Experience(title: "Co-Founder and Management Educator",
                                     company: "BioTrep",
                                     dates: "March 2014 to December 2015",
                                     description: "Coming soon!")
        let experience5 = Experience(title: "iOS Instructor and Developer",
                                     company: "Flatiron School",
                                     dates: "May 2016 to Present",
                                     description: "Teach people how to be Swift badasses.")
        
        return [experience0, experience1, experience2, experience3, experience4, experience5]
    }
    
    func getEducation() -> [Education] {
        
        let education0 = Education(title: "BFA in Recorded Music",
                                   school: "New York University",
                                   graduation: 2012,
                                   description: "Focus in audio engineering, music production, and business")
        let education1 = Education(title: "MS in Commerce",
                                   school: "University of Virginia",
                                   graduation: 2014,
                                   description: "Focus in management and marketing")
        let education2 = Education(title: "iOS Development Immersive",
                                   school: "Flatiron School",
                                   graduation: 2016,
                                   description: "Worked on a team to develop and push to the App Store a project written in Objective-C and Swift called EasyOut")
        
        return [education0, education1, education2]
    }
    
    func becomeInteresting() -> [String] {
        
        let interest0 = "Wandering city streets at night with a camera in hand"
        let interest1 = "Hiking and camping"
        let interest2 = "Putzing around on any instrument"
        let interest3 = "Driving on back roads"
        let interest4 = "Exploring new places"
        let interest5 = "Spending time with family"
        let interest6 = "Making music, especially with friends"
        
        return [interest0, interest1, interest2, interest3, interest4, interest5, interest6]
    }
}


enum Location: String {
    
    case crw = "Charleston, West Virginia"
    case cho = "Charlottesville, Virginia"
    case nyc = "New York City, New York"
}


struct Skill {
    
    let name: String
    var level: Level
    
    enum Level: String {
        case low = "Novice"
        case medium = "Solid"
        case high = "Kickass"
    }
}


struct Experience {
    
    let title: String
    let company: String
    // TODO: - Change dates type to (Date, Date)
    let dates: String
    let description: String
}


struct Education {
    let title: String
    let school: String
    let graduation: Int
    let description: String
}


protocol Person {
    
    var life: Life { get }
    var name: String { get }
    var role: String { get set }
    var location: Location { get set }
    var skills: [Skill] { get set }
    var experience: [Experience] { get set }
    var education: [Education] { get set }
    var interests: [String] { get set }
    var funFact: String { get set }
}


protocol PropertyNames {
    
    func propertyNames() -> [String]
}


protocol LivesLife {
    
    mutating func learn(skill: Skill)
    mutating func add(experience: Experience)
    mutating func develop(interest: String)
}


protocol SelfPromotes {
    
    func giveAutobiography()
}


extension Ian: LivesLife {
    
    mutating internal func learn(skill: Skill) {
        
        self.skills.append(skill)
    }
    
    mutating internal func add(experience: Experience) {
        
        self.experience.append(experience)
    }
    
    mutating internal func develop(interest: String) {
        
        self.interests.append(interest)
    }
}


extension Ian {
    
    mutating func payLotsOfMoneyFor(education: Education) {
        
        self.education.append(education)
    }
}





extension Ian: Person, PropertyNames, SelfPromotes {}

extension PropertyNames {
    
    func propertyNames() -> [String] {
        return Mirror(reflecting: self).children.flatMap { $0.label }
    }
}


extension SelfPromotes where Self: Person {
    
    func giveAutobiography() {
        
        print("Name: \(self.name)")
        print("\nRole: \(self.role)")
        print("\nLocation: \(self.location.rawValue)")
        
        print("\nSkills:")
        for skill in self.skills {
            print("    \(skill.name) (Level: \(skill.level.rawValue))")
        }
        
        print("\nExperience:")
        for experience in self.experience.reversed() {
            print("    \(experience.title)\n    \(experience.company)\n    \(experience.dates)\n    \(experience.description)\n")
        }
        
        print("\nEducation:")
        for education in self.education.reversed() {
            print("    \(education.title)\n    \(education.school)\n    \(education.graduation)\n    \(education.description)\n")
        }
        
        print("\nInterests:")
        for interest in self.interests {
            print("    \(interest)")
        }
        
        print("\nFun Fact: \(self.funFact)")
    }
}


fileprivate let facts: [String] = [
    "I lived in the Amazon Rainforest for two weeks when I was sixteen.",
    "I drove the Ring Road around the coast of Iceland and spent my nights camping inland with friends.",
    "I was meatwagoned off Mt. Hood, Oregon while attending snowboarding camp in seventh grade after blowing a big jump and landing on my back.",
    "I love Nutella. Also milkshakes. (Twofer!)"
]


// MARK: - Let's make an Ian
func makeMe() -> Ian {
    return Ian(name: "Ian Alexander Rahman")
}

let ian = makeMe()

ian.giveAutobiography()
