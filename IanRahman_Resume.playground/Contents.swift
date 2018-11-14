import Foundation

/*:
 
 # The Curriculum Vitae of Ian Alexander Rahman
 
 
 Hi! My name is Ian, and I'm an iOS engineer based in New York City.
 
 You can find more detailed information about my experience and education on LinkedIn: https://www.linkedin.com/in/ianrahman
 
 PS- Don't forget to open the debugger console when you run this code!
 
 */

// MARK: - Ingredients for an Ian
class Ian {
    
    let life = Life()
    let name: String
    var role = String()
    var location = Location.unknown
    var skills = [Skill]()
    var experience = [Experience]()
    var education = [Education]()
    var interests = [String]()
    var funFact = String()
    
    init(named: String) {
        self.name = named
        if name == "Ian Alexander Rahman" {
            self.role = "Swifty Swashbuckler"
            self.location = Location.nyc
            for skill in life.getSkills() { self.learn(skill: skill) }
            for experience in life.getExperience() { self.add(experience: experience) }
            for education in life.getEducation() { self.payLotsOfMoneyFor(education: education) }
            for interest in life.becomeInteresting() { self.develop(interest: interest) }
            self.funFact = facts[Int.random(in: 0..<facts.count)]
        }
    }

}

class Life {
    
    func getSkills() -> [Skill] {
        let skill0 = Skill(name: "iOS Development", level: .high)
        let skill1 = Skill(name: "Swift and Objective-C", level: .medium)
        let skill2 = Skill(name: "Project Management", level: .high)
        let skill3 = Skill(name: "Beard Growing", level: .high)
        let skill4 = Skill(name: "Taking Risks", level: .medium)
        let skill5 = Skill(name: "Poking Holes in Ideas, Then Making Them Stronger", level: .high)
        let skill6 = Skill(name: "Writing and Presentation", level: .high)
        let skill7 = Skill(name: "Cooking", level: .medium)
        let skill8 = Skill(name: "Salsa Dancing", level: .low)
        let skill9 = Skill(name: "Digital Photography", level: .high)
        let skill10 = Skill(name: "User Experience Awareness", level: .high)
        let skill11 = Skill(name: "Trying New Things", level: .high)
        return [skill0, skill1, skill2, skill3, skill4, skill5, skill6, skill7, skill8, skill9, skill10, skill11]
    }
    
    func getExperience() -> [Experience] {
        let experience0 = Experience(title: "Producer and Photographer",
                                     company: "iamramen industries",
                                     dates: "August 2008 to June 2012",
                                     description: "I started a small, solo business out of my dorm room to produce audio and photos for independent artists. It was a great opportunity to learn client management and develop a sense of design and personal aesthetic.",
                                     components: ["Conducted needs assessment and maintain interpersonal client interaction to determine specific and unique solutions",
                                                  "Produced, engineered, recorded, and mixed music and spoken audio tailored specifically to audience or client needs",
                                                  "Use new/social media and web analytics tools for marketing and promotion"])
        let experience1 = Experience(title: "Volunteer and Technology Strategist",
                                     company: "The ComedyCures Foundation",
                                     dates: "September 2008 to Present",
                                     description: "Though my work with ComedyCures was initially limited to running multimedia at the live Laughing Lunch events, I've since helped plan the use of and implement digital tools and services to increase the organization's efficiency and impact.",
                                     components: ["Spearheading implementation of Salesforce Nonprofit Success Pack and onboarding staff to better manage donor and audience data",
                                                  "Working with administration to design and plan implementation of iOS app to share multimedia and enable direct communication with audience",
                                                  "Researched and migrated organization onto services with nonprofit-friendly packages, which led to a reduction in digital monthly overhead of 70%",
                                                  "Identified bottlenecks in the storage of media and documents; systematized digital archives for increased accessibility, efficiency, and future-proofing"])
        let experience2 = Experience(title: "Producer and Drummer",
                                     company: "New Immunity",
                                     dates: "June 2012 to December 2015",
                                     description: "We rocked hard and made some beautiful music. By applying marketing concepts I learned in grad school to our brand, we carved out a solid niche in Charlottesville performing electronic music with live instruments at local venues.",
                                     components: ["Honed collaborative team skills and managed to coalesce competing interests within group projects",
                                                  "Identified market gaps and led the process of developing a group brand and a business plan",
                                                  "Independently researched media law and drafted internal band contract"])
        let experience3 = Experience(title: "Co-Founder and Management Educator",
                                     company: "BioTrep",
                                     dates: "March 2014 to December 2015",
                                     description: "BioTrep arose from a question: Is it possible to teach someone who's motivated but otherwise unexperienced to create a financially viable project in biotech? We developed a program that swept the UVA Entrepreneurship Cup's top nine out of ten prizes in 2014 and spent 2015 working on our operations and financial structure. The system we developed to manage numerous project members on multiple teams and incentivize collaboration and accountability was entirely novel and exciting to build. Though other aspects of life put this passion project on indefinite hiatus, it was one of my most rewarding experiences.",
                                     components: ["Designed and taught a program that swept the UVA Entrepreneurship Cup's top 9/10 cash prizes",
                                                  "Trained teams in management and marketing techniques, pitch building, and presentation skills",
                                                  "Developed a novel project and team structure to incentivize collaboration across projects",
                                                  "Introduced agile management practices to ensure efficient and effective meetings"])
        let experience4 = Experience(title: "Analyst",
                                     company: "Analytic Partners",
                                     dates: "October 2014 to October 2015",
                                     description: "Grad school showed me how much fun I could have problem solving, so I sought that out in my first job after. At AP I worked on marketing strategies for Fortune 100 companies through the application of data analytics. I loved working here and learned a great deal about segmentation analysis, pricing models, and operating in a service industry at a high caliber.",
                                     components: ["Developed marketing mix models, segmentation analysis, pricing models and other custom analyses to optimize marketing strategies of Fortune 500 CPG companies",
                                                  "Partnered with clients through frequent communication to support the implementation of new business insights to improve both ROI and marketing effectiveness",
                                                  "Worked with R&D team to implement improvements in the collection and processing of data"])
        let experience5 = Experience(title: "iOS Instructor and Developer",
                                     company: "Flatiron School",
                                     dates: "May 2016 to December 2016",
                                     description: "One of the best ways to learn a subject is to teach it, and Flatiron School provided an excellent environment to do both.",
                                     components: ["Wrote curriculum to teach iOS development from loops to subclassing OperationQueue",
                                                  "Managed multiple teams through the development of apps released to the App Store",
                                                  "Worked on a team to help design a plan for the future of the school's immersive programs",
                                                  "Constantly pushed the bounds of my own skills and knowledge to help students understand Swift"])
        let experience6 = Experience(title: "iOS Developer and Technology Consultant",
                                     company: "Evergreen Labs",
                                     dates: "January 2017 to Present",
                                     description: "As a freelancer and consultant I'm able to leverage my skills in not only mobile development, but also strategic vision for business concepts and a sense for marketing products and services.",
                                     components: ["PAID: Designed UX and UI of mobile media marketplace to connect brands and professional athletes for sponsored content deals; refined business model for mobile app and marketplace to incentivize action through use of a Dutch auction; developed and presented pitch deck to investors for seed round of funding, including high-touch onboarding strategy for new users",
                                                  "Vouch: Created custom xib-based modal view for onboarding instructions that are tracked with UserDefaults flags; developed UX flow for notification and location use requests; managed networking and persistent awareness of network reachability through use of Alamofire framework; implemented app analytics through Mixpanel",
                                                  "Airstream 2 Go: Modernized legacy Objective-C codebase for use on newer iOS devices; refactored media player to use AVFoundation framework for video and music; updated UI with modern Interface Builder tools for responsive design"])
        let experience7 = Experience(title: "iOS Engineer",
                                     company: "Vi Technologies",
                                     dates: "August 2017 to Present",
                                     description: "High-impact engineering in a fast-paced startup.",
                                     components: ["Architected and led development of major redesign for Vi Trainer app to leverage modern patterns and design principles such as MVVM, POP, and coordinator-flow to improve reliability and testability",
                                                  "Implemented asynchronous OperationQueue-based networking architecture throughout app",
                                                  "De-integrated and replaced fragile dependency injection frameworks with clear, custom initializers and a new dependency structure",
                                                  "Spearheaded discovery and assisted with design of new features with product and design teams",
                                                  "Converted significant portions of Objective-C to Swift during the course of planned redesigns",
                                                  "Identified bottlenecks in compilation and reduced build time by almost 50%"])
        return [experience0, experience1, experience2, experience3, experience4, experience5, experience6, experience7]
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
                                   description: "Intensive program with final focus on development of iOS applicaiton called EasyOut written in Objective-C and Swift")
        return [education0, education1, education2]
    }
    
    func becomeInteresting() -> [String] {
        let interest0 = "Wandering city streets with a camera in hand"
        let interest1 = "Hiking and camping"
        let interest2 = "Noodling around on any instrument"
        let interest3 = "Driving back roads"
        let interest4 = "Exploring new places"
        let interest5 = "Spending time with family"
        let interest6 = "Making anything, especially with friends"
        return [interest0, interest1, interest2, interest3, interest4, interest5, interest6]
    }
}

enum Location: String {
    case unknown = "???"
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
    let dates: String
    let description: String
    let components: [String]
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
    func tellElevatorPitch()
}

extension Ian: LivesLife {
    
    internal func learn(skill: Skill) {
        
        self.skills.append(skill)
    }
    
    internal func add(experience: Experience) {
        
        self.experience.append(experience)
    }
    
    internal func develop(interest: String) {
        
        self.interests.append(interest)
    }
    
}

extension Ian {
    
    func payLotsOfMoneyFor(education: Education) {
        self.education.append(education)
    }
    
}

extension Ian: Person, PropertyNames, SelfPromotes {}

extension PropertyNames {
    
    func propertyNames() -> [String] {
        return Mirror(reflecting: self).children.compactMap { $0.label }
    }
    
}

extension SelfPromotes where Self: Person {
    
    func giveAutobiography() {
        print("Name: \(self.name)")
        print("\nRole: \(self.role)")
        print("\nLocation: \(self.location.rawValue)")
        print("\nSkills:")
        for skill in self.skills { print("    \(skill.name) (Level: \(skill.level.rawValue))") }
        print("\nExperience:")
        for experience in self.experience.reversed() {
            print("    \(experience.title) at \(experience.company)\n    \(experience.dates)\n    \(experience.description)")
            for component in experience.components { print("    + \(component)") } // Nested for loop -- gross! O(N^2)
            print()
        }
        print("\nEducation:")
        for education in self.education.reversed() { print("    \(education.title)\n    \(education.school)\n    \(education.graduation)\n    \(education.description)\n") }
        print("\nInterests:")
        for interest in self.interests { print("    \(interest)") }
        print("\nFun Fact: \(self.funFact)")
    }
    
    func tellElevatorPitch() {
        print("I’ve always been the \"tech guy\" among my friends and family, and in a sense I always knew I’d one day be a programmer. In middle school I taught myself basic HTML and CSS to run a little website to share photos of my classmates and travels. In high school I figured out how to bypass the admin’s content blockers so we could get on Facebook and watch YouTube in the library. In college I took just enough programming courses to seriously pique my interest. Grad school taught me how to learn fast and manage both people and resources. I used those skills to start a company and fell in love with being in the trenches to build something from the ground up. When the opportunity arose I committed myself to learning to code. It’s how I put to use my passion for solving problems with creativity and analytical thinking. I’m excited to work with teams of smart, driven people to build products and platforms to bring people together and add value to the world.\n")
    }
    
}

private let facts: [String] = [
    "I lived in the Amazon Rainforest for two weeks when I was sixteen.",
    "I drove the Ring Road around the coast of Iceland and spent my nights camping inland with friends.",
    "I was meatwagoned off Mt. Hood, Oregon while attending snowboarding camp in seventh grade after blowing a big jump and landing on my back.",
    "I love Nutella. Also milkshakes. (Twofer!)"
]

/// Creates an Ian with the provided name.
///
/// - parameter name: What shall we call him?
/// - returns: A pretty cool dude!
func makeIan(named name: String) -> Ian {
    return Ian(named: name)
}

let ian = makeIan(named: "Ian Alexander Rahman")

ian.tellElevatorPitch()
ian.giveAutobiography()
