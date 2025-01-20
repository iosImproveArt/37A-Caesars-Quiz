//
//  QuestionViewModel.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//
import SwiftUI

class QuestionViewModelOldman37: ObservableObject {
    let typeOfGame: GameTypeOldman37
    
    var vwrfv = "wfvrwv"
    var wrfvwr = 2452
    func vwrfvw() -> String {
        return "wrfvwrfvw"
    }
    func wrfvwrfvwrfvw() {
        print("wvrfvwrf")
    }
    
    
    func cwrcfrc() -> Double {
        print(245245 / 2452452)
        return 245245245 * 2452452
    }
    var qecefcqef = [245245245.245245245: "wrfvwrfvrw"]
    @AppStorage("userNickname") var player1 = "IamNewUser"
    @Published var player2 = ""
    @Published var heartCount = 3
    @Published var questionNumber = 1
    
    @Published var player1RightAnswers = 0
    @Published var player2RightAnswers = 0
    
    
    @Published var listOfQuestions: [QuestionOldman37]
    @Published var answer = ""
    
    @Published var showFinishView = false
    @Published var showEnterView = false
    
    var currentQuestion: QuestionOldman37 {
        listOfQuestions[questionNumber - 1]
    }
    
    init(typeOfGame: GameTypeOldman37) {
        self.typeOfGame = typeOfGame
        
        if typeOfGame == .withC { player2 = "Computer" }
        if typeOfGame == .withF { showEnterView = true }
        listOfQuestions =  Array(QuestionOldman37.advancedQuestions.shuffled().prefix(21))
    }
    
    func answerTheQuestion(answer: String) {
        self.answer = answer
        
        if answer == currentQuestion.correctAnswer {
            if questionNumber % 2 == 0 {
                player2RightAnswers += 1
            } else {
                player1RightAnswers += 1
            }
        } else if typeOfGame == .oneP {
            heartCount -= 1
            if heartCount <= 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in showFinishView = true }
                return
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            if questionNumber >= 20 || (typeOfGame == .withC && questionNumber >= 19) {
                showFinishView = true
            } else {
                self.answer = ""
                if typeOfGame == .withC {
                    questionNumber += 2
                    player2RightAnswers += [0, 1].randomElement()!
                } else {
                    questionNumber += 1
                }
            }
        }
    }
}


enum GameTypeOldman37 {
    case oneP
    case withC
    case withF
}

struct QuestionOldman37 {
    let question: String
    let correctAnswer: String
    let answerOptions: [String]
    private let rvrgv = "fwtfwrtf"
    static let advancedQuestions: [QuestionOldman37] = [
        QuestionOldman37(
            question: "What is the chemical symbol for silver?",
            correctAnswer: "Ag",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionOldman37(
            question: "Which organ in the human body is responsible for filtering blood?",
            correctAnswer: "Kidneys",
            answerOptions: ["Heart", "Lungs", "Liver", "Kidneys"]
        ),
        QuestionOldman37(
            question: "What is the capital city of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Beijing", "Seoul", "Tokyo", "Kyoto"]
        ),
        QuestionOldman37(
            question: "Which element has the chemical symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Osmium", "Ozone", "Opium"]
        ),
        QuestionOldman37(
            question: "What is the largest planet in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Earth", "Mars", "Jupiter", "Saturn"]
        ),
        QuestionOldman37(
            question: "Who wrote the play 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["William Shakespeare", "Charles Dickens", "Jane Austen", "Mark Twain"]
        ),
        QuestionOldman37(
            question: "What is the boiling point of water at sea level in Celsius?",
            correctAnswer: "100°C",
            answerOptions: ["90°C", "100°C", "110°C", "120°C"]
        ),
        QuestionOldman37(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Amazon", "Nile", "Yangtze", "Mississippi"]
        ),
        QuestionOldman37(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Ag", "Au", "Fe", "Pb"]
        ),
        QuestionOldman37(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Venus", "Mars", "Jupiter", "Saturn"]
        ),
        QuestionOldman37(
            question: "What is the freezing point of water in Fahrenheit?",
            correctAnswer: "32°F",
            answerOptions: ["0°F", "32°F", "50°F", "100°F"]
        ),
        QuestionOldman37(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Pablo Picasso", "Vincent van Gogh", "Leonardo da Vinci", "Claude Monet"]
        ),
        QuestionOldman37(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Iron", "Diamond", "Platinum"]
        ),
        QuestionOldman37(
            question: "What is the square root of 64?",
            correctAnswer: "8",
            answerOptions: ["6", "7", "8", "9"]
        ),
        QuestionOldman37(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["China", "Japan", "South Korea", "Thailand"]
        ),
        QuestionOldman37(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["Berlin", "Madrid", "Paris", "Rome"]
        ),
        QuestionOldman37(
            question: "What is the primary ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Tomato", "Lettuce", "Avocado", "Onion"]
        ),
        QuestionOldman37(
            question: "Which gas do plants absorb from the atmosphere?",
            correctAnswer: "Carbon dioxide",
            answerOptions: ["Oxygen", "Nitrogen", "Carbon dioxide", "Hydrogen"]
        ),
        QuestionOldman37(
            question: "Who invented the light bulb?",
            correctAnswer: "Thomas Edison",
            answerOptions: ["Nikola Tesla", "Albert Einstein", "Thomas Edison", "Alexander Graham Bell"]
        ),
        QuestionOldman37(
            question: "What is the capital of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Sydney", "Melbourne", "Canberra", "Perth"]
        ),
        QuestionOldman37(
            question: "What is the chemical symbol for iron?",
            correctAnswer: "Fe",
            answerOptions: ["Fe", "Ir", "I", "In"]
        ),
        QuestionOldman37(
            question: "What is the largest mammal on Earth?",
            correctAnswer: "Blue whale",
            answerOptions: ["Elephant", "Blue whale", "Giraffe", "Shark"]
        ),
        QuestionOldman37(
            question: "Which element is most abundant in the Earth's crust?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Silicon", "Iron", "Calcium"]
        ),
        QuestionOldman37(
            question: "Who was the first president of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["Thomas Jefferson", "George Washington", "Abraham Lincoln", "John Adams"]
        ),
        QuestionOldman37(
            question: "Which country is the largest by land area?",
            correctAnswer: "Russia",
            answerOptions: ["Canada", "Russia", "China", "United States"]
        ),
        QuestionOldman37(
            question: "Which planet is closest to the Sun?",
            correctAnswer: "Mercury",
            answerOptions: ["Venus", "Earth", "Mars", "Mercury"]
        ),
        QuestionOldman37(
            question: "How many continents are there on Earth?",
            correctAnswer: "7",
            answerOptions: ["5", "6", "7", "8"]
        ),
        QuestionOldman37(
            question: "What is the main ingredient in sushi?",
            correctAnswer: "Rice",
            answerOptions: ["Fish", "Rice", "Seaweed", "Vegetables"]
        ),
        QuestionOldman37(
            question: "What is the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Arctic Ocean"]
        ),
        QuestionOldman37(
            question: "What is the longest bone in the human body?",
            correctAnswer: "Femur",
            answerOptions: ["Femur", "Humerus", "Tibia", "Radius"]
        ),
        QuestionOldman37(
            question: "Who developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Nikola Tesla", "Albert Einstein", "Galileo Galilei"]
        ),
        QuestionOldman37(
            question: "Which is the largest desert in the world?",
            correctAnswer: "Sahara",
            answerOptions: ["Sahara", "Gobi", "Kalahari", "Arctic"]
        ),
        QuestionOldman37(
            question: "Which of the following is a type of tree?",
            correctAnswer: "Oak",
            answerOptions: ["Rose", "Tulip", "Oak", "Cactus"]
        ),
        QuestionOldman37(
            question: "What is the smallest country in the world by population?",
            correctAnswer: "Vatican City",
            answerOptions: ["San Marino", "Monaco", "Vatican City", "Nauru"]
        ),
        QuestionOldman37(
            question: "Who was the first person to walk on the moon?",
            correctAnswer: "Neil Armstrong",
            answerOptions: ["Buzz Aldrin", "Yuri Gagarin", "Neil Armstrong", "Michael Collins"]
        ),
        QuestionOldman37(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Toronto", "Vancouver", "Ottawa", "Montreal"]
        ),
        QuestionOldman37(
            question: "What is the chemical symbol for silver?",
            correctAnswer: "Ag",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionOldman37(
            question: "What is the largest island in the world?",
            correctAnswer: "Greenland",
            answerOptions: ["Australia", "Greenland", "New Guinea", "Borneo"]
        ),
        QuestionOldman37(
            question: "Which animal is known for having a trunk?",
            correctAnswer: "Elephant",
            answerOptions: ["Elephant", "Rhino", "Giraffe", "Hippo"]
        ),
        QuestionOldman37(
            question: "What is the chemical symbol for sodium?",
            correctAnswer: "Na",
            answerOptions: ["Na", "N", "S", "So"]
        ),
        QuestionOldman37(
            question: "Which gas makes up most of Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Nitrogen", "Carbon dioxide", "Argon"]
        ),
        QuestionOldman37(
            question: "What is the largest species of shark?",
            correctAnswer: "Whale shark",
            answerOptions: ["Great white shark", "Tiger shark", "Whale shark", "Hammerhead shark"]
        ),
        QuestionOldman37(
            question: "What is the chemical symbol for potassium?",
            correctAnswer: "K",
            answerOptions: ["P", "K", "Po", "Pe"]
        ),
        QuestionOldman37(
            question: "Which planet is known for its rings?",
            correctAnswer: "Saturn",
            answerOptions: ["Earth", "Jupiter", "Saturn", "Mars"]
        ),
        QuestionOldman37(
            question: "What is the most common blood type in humans?",
            correctAnswer: "O",
            answerOptions: ["A", "B", "AB", "O"]
        ),
        QuestionOldman37(
            question: "Who wrote 'The Odyssey'?",
            correctAnswer: "Homer",
            answerOptions: ["Homer", "Virgil", "Shakespeare", "Dante"]
        ),
        QuestionOldman37(
            question: "Which continent is known as the 'Dark Continent'?",
            correctAnswer: "Africa",
            answerOptions: ["Asia", "Africa", "South America", "Antarctica"]
        ),
        QuestionOldman37(
            question: "Which famous scientist developed the laws of motion?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Galileo Galilei", "Albert Einstein", "Isaac Newton", "Michael Faraday"]
        ),
        QuestionOldman37(
            question: "What is the largest city in the United States by population?",
            correctAnswer: "New York City",
            answerOptions: ["Los Angeles", "Chicago", "New York City", "Houston"]
        ),
        QuestionOldman37(
            question: "What is the most populous country in the world?",
            correctAnswer: "China",
            answerOptions: ["India", "China", "United States", "Indonesia"]
        ),
        QuestionOldman37(
            question: "Which famous composer wrote 'The Magic Flute'?",
            correctAnswer: "Wolfgang Amadeus Mozart",
            answerOptions: ["Ludwig van Beethoven", "Johann Sebastian Bach", "Wolfgang Amadeus Mozart", "Johannes Brahms"]
        ),
        QuestionOldman37(
            question: "What is the primary function of the human heart?",
            correctAnswer: "Pumping blood",
            answerOptions: ["Filtering toxins", "Pumping blood", "Digestion", "Respiration"]
        ),
        QuestionOldman37(
            question: "Which color is a combination of blue and yellow?",
            correctAnswer: "Green",
            answerOptions: ["Purple", "Orange", "Green", "Red"]
        ),
        QuestionOldman37(
            question: "What is the chemical formula for water?",
            correctAnswer: "H2O",
            answerOptions: ["H2O", "CO2", "O2", "N2"]
        ),
        QuestionOldman37(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Diamond", "Iron", "Platinum"]
        ),
        QuestionOldman37(
            question: "What is the largest volcano on Earth?",
            correctAnswer: "Mauna Loa",
            answerOptions: ["Mount Vesuvius", "Mount Fuji", "Mauna Loa", "Mount Everest"]
        ),
        QuestionOldman37(
            question: "Which country is famous for its kangaroos?",
            correctAnswer: "Australia",
            answerOptions: ["United States", "Canada", "Australia", "Brazil"]
        ),
        QuestionOldman37(
            question: "What is the most famous large scale clock tower in London?",
            correctAnswer: "Big Ben",
            answerOptions: ["London Eye", "Tower of London", "Big Ben", "Buckingham Palace"]
        ),
        QuestionOldman37(
            question: "Which bird is known for its colorful tail feathers?",
            correctAnswer: "Peacock",
            answerOptions: ["Sparrow", "Eagle", "Peacock", "Crow"]
        ),
        QuestionOldman37(
            question: "What is the capital of Italy?",
            correctAnswer: "Rome",
            answerOptions: ["Venice", "Florence", "Rome", "Milan"]
        ),
        QuestionOldman37(
            question: "Who painted the famous 'Starry Night'?",
            correctAnswer: "Vincent van Gogh",
            answerOptions: ["Pablo Picasso", "Vincent van Gogh", "Claude Monet", "Leonardo da Vinci"]
        ),
        QuestionOldman37(
            question: "What is the capital of the United Kingdom?",
            correctAnswer: "London",
            answerOptions: ["London", "Manchester", "Liverpool", "Birmingham"]
        ),
        QuestionOldman37(
            question: "Which metal is liquid at room temperature?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Gold", "Copper", "Iron"]
        ),
        QuestionOldman37(
            question: "Which continent is the Sahara Desert located in?",
            correctAnswer: "Africa",
            answerOptions: ["Asia", "Africa", "Australia", "North America"]
        ),
        QuestionOldman37(
            question: "What is the smallest planet in our solar system?",
            correctAnswer: "Mercury",
            answerOptions: ["Earth", "Mars", "Mercury", "Venus"]
        ),
        QuestionOldman37(
            question: "What is the chemical symbol for carbon?",
            correctAnswer: "C",
            answerOptions: ["C", "Co", "Ca", "Cu"]
        ),
        QuestionOldman37(
            question: "Which of these is the most famous wizard?",
            correctAnswer: "Harry Potter",
            answerOptions: ["Gandalf", "Merlin", "Harry Potter", "Dumbledore"]
        ),
        QuestionOldman37(
            question: "What is the primary language spoken in Brazil?",
            correctAnswer: "Portuguese",
            answerOptions: ["Spanish", "Portuguese", "English", "French"]
        ),
        QuestionOldman37(
            question: "Which country is famous for its pyramids?",
            correctAnswer: "Egypt",
            answerOptions: ["Greece", "Egypt", "Mexico", "China"]
        ),
        QuestionOldman37(
            question: "What is the chemical formula for methane?",
            correctAnswer: "CH4",
            answerOptions: ["CO2", "O2", "CH4", "H2O"]
        ),
        QuestionOldman37(
            question: "What is the national flower of Japan?",
            correctAnswer: "Cherry Blossom",
            answerOptions: ["Rose", "Tulip", "Cherry Blossom", "Lotus"]
        ),
        QuestionOldman37(
            question: "Which sea is known for its high salinity?",
            correctAnswer: "Dead Sea",
            answerOptions: ["Red Sea", "Black Sea", "Dead Sea", "Baltic Sea"]
        ),
        QuestionOldman37(
            question: "Who was the first woman to win a Nobel Prize?",
            correctAnswer: "Marie Curie",
            answerOptions: ["Marie Curie", "Rosalind Franklin", "Ada Lovelace", "Florence Nightingale"]
        ),
        QuestionOldman37(
            question: "What is the capital of Spain?",
            correctAnswer: "Madrid",
            answerOptions: ["Madrid", "Barcelona", "Seville", "Valencia"]
        ),
        QuestionOldman37(
            question: "Which animal is known as the king of the jungle?",
            correctAnswer: "Lion",
            answerOptions: ["Tiger", "Elephant", "Lion", "Bear"]
        ),
        QuestionOldman37(
            question: "Which country is home to the Great Barrier Reef?",
            correctAnswer: "Australia",
            answerOptions: ["Australia", "United States", "Mexico", "Thailand"]
        ),
        QuestionOldman37(
            question: "What element does 'He' represent on the periodic table?",
            correctAnswer: "Helium",
            answerOptions: ["Hydrogen", "Helium", "Hafnium", "Hassium"]
        ),
        QuestionOldman37(
            question: "Which planet has the most moons?",
            correctAnswer: "Saturn",
            answerOptions: ["Earth", "Mars", "Jupiter", "Saturn"]
        ),
        QuestionOldman37(
            question: "What is the largest animal on Earth?",
            correctAnswer: "Blue whale",
            answerOptions: ["Elephant", "Shark", "Blue whale", "Giraffe"]
        ),
        QuestionOldman37(
            question: "What color is the gemstone emerald?",
            correctAnswer: "Green",
            answerOptions: ["Red", "Blue", "Green", "Yellow"]
        ),
        QuestionOldman37(
            question: "Who was the first man to travel into space?",
            correctAnswer: "Yuri Gagarin",
            answerOptions: ["Neil Armstrong", "Yuri Gagarin", "Buzz Aldrin", "Michael Collins"]
        ),
        QuestionOldman37(
            question: "What is the capital of Germany?",
            correctAnswer: "Berlin",
            answerOptions: ["Berlin", "Munich", "Frankfurt", "Hamburg"]
        ),
        QuestionOldman37(
            question: "What is the most commonly used programming language for web development?",
            correctAnswer: "JavaScript",
            answerOptions: ["Java", "Python", "JavaScript", "Ruby"]
        ),
        QuestionOldman37(
            question: "What is the main component of the Sun?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Helium", "Hydrogen", "Oxygen", "Carbon"]
        ),
        QuestionOldman37(
            question: "Which instrument is known as the 'king of instruments'?",
            correctAnswer: "Pipe organ",
            answerOptions: ["Piano", "Guitar", "Pipe organ", "Violin"]
        ),
        QuestionOldman37(
            question: "What is the smallest bone in the human body?",
            correctAnswer: "Stapes",
            answerOptions: ["Stapes", "Femur", "Tibia", "Humerus"]
        ),
        QuestionOldman37(
            question: "Which country is famous for sushi?",
            correctAnswer: "Japan",
            answerOptions: ["China", "South Korea", "Japan", "Vietnam"]
        ),
        QuestionOldman37(
            question: "What is the hottest planet in our solar system?",
            correctAnswer: "Venus",
            answerOptions: ["Earth", "Mercury", "Venus", "Mars"]
        ),
        QuestionOldman37(
            question: "What is the largest country in Africa by area?",
            correctAnswer: "Algeria",
            answerOptions: ["Egypt", "Sudan", "Algeria", "Democratic Republic of the Congo"]
        ),
        QuestionOldman37(
            question: "Which animal is known for its ability to change colors?",
            correctAnswer: "Chameleon",
            answerOptions: ["Cheetah", "Octopus", "Chameleon", "Tiger"]
        ),
        QuestionOldman37(
            question: "Who wrote the novel '1984'?",
            correctAnswer: "George Orwell",
            answerOptions: ["Aldous Huxley", "George Orwell", "J.K. Rowling", "Ernest Hemingway"]
        ),
        QuestionOldman37(
            question: "Which is the largest planet in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Mars", "Jupiter", "Saturn", "Neptune"]
        ),
        QuestionOldman37(
            question: "What is the highest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["K2", "Mount Everest", "Mount Kilimanjaro", "Mount Fuji"]
        ),
        QuestionOldman37(
            question: "Which vitamin is known as the sunshine vitamin?",
            correctAnswer: "Vitamin D",
            answerOptions: ["Vitamin A", "Vitamin B", "Vitamin C", "Vitamin D"]
        ),
        QuestionOldman37(
            question: "What is the process by which plants make their food?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Respiration", "Photosynthesis", "Evaporation", "Transpiration"]
        ),
        QuestionOldman37(
            question: "Who developed the first successful polio vaccine?",
            correctAnswer: "Jonas Salk",
            answerOptions: ["Louis Pasteur", "Edward Jenner", "Jonas Salk", "Alexander Fleming"]
        ),
        QuestionOldman37(
            question: "Which is the most populous city in the world?",
            correctAnswer: "Tokyo",
            answerOptions: ["Beijing", "Tokyo", "New York", "London"]
        ),
        QuestionOldman37(
            question: "What is the hardest known material in the world?",
            correctAnswer: "Diamond",
            answerOptions: ["Graphene", "Diamond", "Gold", "Iron"]
        ),
        QuestionOldman37(
            question: "Which gas do humans exhale during respiration?",
            correctAnswer: "Carbon dioxide",
            answerOptions: ["Oxygen", "Carbon dioxide", "Nitrogen", "Methane"]
        ),
        QuestionOldman37(
            question: "What is the most common blood type in humans?",
            correctAnswer: "O positive",
            answerOptions: ["O negative", "A positive", "O positive", "B positive"]
        ),
        QuestionOldman37(
            question: "Which animal is the largest land mammal?",
            correctAnswer: "African elephant",
            answerOptions: ["Asian elephant", "African elephant", "Rhinoceros", "Giraffe"]
        ),
        QuestionOldman37(
            question: "Which country invented the concept of democracy?",
            correctAnswer: "Greece",
            answerOptions: ["Greece", "Rome", "Egypt", "India"]
        ),
        QuestionOldman37(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Toronto", "Ottawa", "Vancouver", "Montreal"]
        ),
        QuestionOldman37(
            question: "Who was the first president of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["Thomas Jefferson", "Abraham Lincoln", "George Washington", "James Madison"]
        ),
        QuestionOldman37(
            question: "Which fruit is known for having its seeds on the outside?",
            correctAnswer: "Strawberry",
            answerOptions: ["Blueberry", "Strawberry", "Raspberry", "Grape"]
        ),
        QuestionOldman37(
            question: "What type of animal is a Komodo dragon?",
            correctAnswer: "Lizard",
            answerOptions: ["Snake", "Lizard", "Crocodile", "Alligator"]
        ),
        QuestionOldman37(
            question: "Which famous scientist developed the theory of general relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Nikola Tesla", "Galileo Galilei", "Albert Einstein"]
        ),
        QuestionOldman37(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Amazon", "Nile", "Yangtze", "Mississippi"]
        ),
        QuestionOldman37(
            question: "What is the smallest country in the world by land area?",
            correctAnswer: "Vatican City",
            answerOptions: ["Monaco", "Vatican City", "San Marino", "Nauru"]
        ),
        QuestionOldman37(
            question: "Which animal is known for its ability to fly?",
            correctAnswer: "Bat",
            answerOptions: ["Bird", "Bat", "Insect", "Flying fish"]
        ),
        QuestionOldman37(
            question: "What is the most common gas in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Carbon dioxide", "Nitrogen", "Argon"]
        ),
        QuestionOldman37(
            question: "Who wrote the play 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["Charles Dickens", "Jane Austen", "William Shakespeare", "Homer"]
        ),
        QuestionOldman37(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["London", "Berlin", "Paris", "Madrid"]
        ),
        QuestionOldman37(
            question: "Which gas makes up most of Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Carbon dioxide", "Nitrogen", "Hydrogen"]
        ),
        QuestionOldman37(
            question: "Which country is the largest producer of coffee?",
            correctAnswer: "Brazil",
            answerOptions: ["Brazil", "Vietnam", "Colombia", "Ethiopia"]
        ),
        QuestionOldman37(
            question: "What is the chemical symbol for oxygen?",
            correctAnswer: "O",
            answerOptions: ["O", "O2", "O3", "Ox"]
        ),
        QuestionOldman37(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["South Korea", "China", "Japan", "India"]
        ),
        QuestionOldman37(
            question: "What element has the chemical symbol 'Na'?",
            correctAnswer: "Sodium",
            answerOptions: ["Sodium", "Nitrogen", "Neon", "Nickel"]
        ),
        QuestionOldman37(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Earth", "Mars", "Venus", "Saturn"]
        ),
        QuestionOldman37(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara Desert",
            answerOptions: ["Gobi Desert", "Kalahari Desert", "Sahara Desert", "Atacama Desert"]
        ),
        QuestionOldman37(
            question: "What is the name of the first manned mission to land on the Moon?",
            correctAnswer: "Apollo 11",
            answerOptions: ["Apollo 11", "Gemini 4", "Mercury 7", "Luna 2"]
        ),
        QuestionOldman37(
            question: "Who invented the telephone?",
            correctAnswer: "Alexander Graham Bell",
            answerOptions: ["Thomas Edison", "Nikola Tesla", "Alexander Graham Bell", "Samuel Morse"]
        ),
        QuestionOldman37(
            question: "Which metal is liquid at room temperature?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Copper", "Gold", "Lead"]
        ),
        QuestionOldman37(
            question: "What is the national currency of Japan?",
            correctAnswer: "Yen",
            answerOptions: ["Yuan", "Yen", "Won", "Ringgit"]
        ),
        QuestionOldman37(
            question: "Which type of tree produces acorns?",
            correctAnswer: "Oak",
            answerOptions: ["Pine", "Maple", "Oak", "Birch"]
        ),
        QuestionOldman37(
            question: "What is the longest human bone?",
            correctAnswer: "Femur",
            answerOptions: ["Humerus", "Femur", "Tibia", "Radius"]
        ),
        QuestionOldman37(
            question: "Which country is home to the Great Wall?",
            correctAnswer: "China",
            answerOptions: ["China", "India", "Japan", "Korea"]
        ),
        QuestionOldman37(
            question: "Which bird is famous for its ability to mimic human speech?",
            correctAnswer: "Parrot",
            answerOptions: ["Eagle", "Crow", "Parrot", "Pigeon"]
        ),
        QuestionOldman37(
            question: "What is the main ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Tomato", "Avocado", "Cucumber", "Onion"]
        ),
        QuestionOldman37(
            question: "What is the symbol for gold on the periodic table?",
            correctAnswer: "Au",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionOldman37(
            question: "Which country is known for its kangaroos?",
            correctAnswer: "Australia",
            answerOptions: ["New Zealand", "South Africa", "Australia", "India"]
        ),
        QuestionOldman37(
            question: "What is the speed of light in a vacuum?",
            correctAnswer: "299,792 km/s",
            answerOptions: ["300,000 km/s", "299,792 km/s", "299,792,458 m/s", "150,000 km/s"]
        )
    ]
}
