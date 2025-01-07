//
//  QuestionsView.swift
//  Zodiac-Quiz
//
//  Created by Improve on 16.12.2024.
//

import SwiftUI

struct QuestionsViewOldman: View {
    @State var selectedQuestion: Tab4QuestionOldman = Tab4QuestionOldman.list.randomElement()!
    @State var showHint1 = false
    @State var showHint2 = false
    @State var showAnswer = false
    
    var body: some View {
        VStack {
            if isInternetAvailable() {
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.question)
                            .withFont(size: isSE ? 20: 22, weight: .medium, color: .black)
                            .padding(.horizontal, 60)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 30)
                
                Spacer()
                
                Button {
                    showHint1 = true
                } label: {
                    Image("tab4.\(showHint1 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint1 ? selectedQuestion.hint1: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint1 ? .white: .white)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.horizontal, isSE ? -20: 0)
                
                Button {
                    showHint2 = true
                } label: {
                    Image("tab4.\(showHint2 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint2 ? selectedQuestion.hint2: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint1 ? .white: .white)
                                   
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, 30)
                    .disabled(!showHint1)
                    .padding(.horizontal, isSE ? -20: 0)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showHint1 = false
                        showHint2 = false
                        showAnswer = false
                        
                        selectedQuestion = Tab4QuestionOldman.list.randomElement()!
                    } label: {
                        Image("tab4.generate")
                    }
                    
                    Spacer()
                    
                    Button {
                        showAnswer = true
                    } label: {
                        Image("tab4.answer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                            .overlay {
                                Text(showAnswer ? selectedQuestion.answer: "Show answer")
                                    .withFont(size: 15, weight: .regular)
                            }
                    }
                    .frame(width: 170)
                    
                    Spacer()
                }
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Text("Connection error")
                        .withFont(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFont(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewOldman(showLoading: false, selectedTab: .questions)
}

struct Tab4QuestionOldman {
    let question: String
    let hint1: String
    let hint2: String
    let answer: String
    
    static let list: [Tab4QuestionOldman] = [
        Tab4QuestionOldman(
                question: "What is the largest mammal in the world?",
                hint1: "It lives in the ocean.",
                hint2: "It is a type of whale.",
                answer: "Blue Whale"
            ),
            Tab4QuestionOldman(
                question: "What is the smallest planet in our solar system?",
                hint1: "It’s closest to the Sun.",
                hint2: "Its name starts with 'M'.",
                answer: "Mercury"
            ),
            Tab4QuestionOldman(
                question: "Which element has the chemical symbol 'O'?",
                hint1: "It is essential for breathing.",
                hint2: "Makes up about 21% of Earth's atmosphere.",
                answer: "Oxygen"
            ),
            Tab4QuestionOldman(
                question: "Who painted the Mona Lisa?",
                hint1: "He was an Italian polymath.",
                hint2: "His first name is Leonardo.",
                answer: "Leonardo da Vinci"
            ),
            Tab4QuestionOldman(
                question: "What is the tallest mountain in the world?",
                hint1: "Located in the Himalayas.",
                hint2: "Its height is over 8,800 meters.",
                answer: "Mount Everest"
            ),
            Tab4QuestionOldman(
                question: "What is the hardest natural substance on Earth?",
                hint1: "It’s often used in jewelry.",
                hint2: "It’s a form of carbon.",
                answer: "Diamond"
            ),
            Tab4QuestionOldman(
                question: "Which country is home to the kangaroo?",
                hint1: "It’s a continent and a country.",
                hint2: "Its capital is Canberra.",
                answer: "Australia"
            ),
            Tab4QuestionOldman(
                question: "What is the chemical symbol for water?",
                hint1: "It consists of hydrogen and oxygen.",
                hint2: "Its formula contains 'H' and 'O'.",
                answer: "H2O"
            ),
            Tab4QuestionOldman(
                question: "Which planet is the hottest in the solar system?",
                hint1: "It has a thick atmosphere.",
                hint2: "It’s the second planet from the Sun.",
                answer: "Venus"
            ),
            Tab4QuestionOldman(
                question: "Who wrote 'Romeo and Juliet'?",
                hint1: "He is a famous English playwright.",
                hint2: "His last name is Shakespeare.",
                answer: "William Shakespeare"
            ),
            Tab4QuestionOldman(
                question: "What is the capital of Japan?",
                hint1: "It’s one of the most populous cities in the world.",
                hint2: "The name starts with 'T'.",
                answer: "Tokyo"
            ),
            Tab4QuestionOldman(
                question: "What is the largest ocean on Earth?",
                hint1: "It covers more than 30% of Earth's surface.",
                hint2: "Its name starts with 'P'.",
                answer: "Pacific Ocean"
            ),
            Tab4QuestionOldman(
                question: "What is the fastest land animal?",
                hint1: "It’s a type of big cat.",
                hint2: "It can reach speeds up to 70 mph.",
                answer: "Cheetah"
            ),
            Tab4QuestionOldman(
                question: "What is the chemical symbol for gold?",
                hint1: "Its symbol comes from Latin.",
                hint2: "The symbol is two letters: 'A' and 'U'.",
                answer: "Au"
            ),
            Tab4QuestionOldman(
                question: "Which planet is famous for its rings?",
                hint1: "It’s the sixth planet from the Sun.",
                hint2: "Its name starts with 'S'.",
                answer: "Saturn"
            ),
            Tab4QuestionOldman(
                question: "What is the longest river in the world?",
                hint1: "It flows through South America.",
                hint2: "It’s named after a rainforest.",
                answer: "Amazon River"
            ),
            Tab4QuestionOldman(
                question: "What is the freezing point of water?",
                hint1: "Measured in degrees Celsius.",
                hint2: "It’s the same as 32°F.",
                answer: "0°C"
            ),
            Tab4QuestionOldman(
                question: "What is the largest country by area?",
                hint1: "It spans Europe and Asia.",
                hint2: "Its capital is Moscow.",
                answer: "Russia"
            ),
            Tab4QuestionOldman(
                question: "What is the main ingredient in guacamole?",
                hint1: "It’s a green fruit.",
                hint2: "It’s often eaten with nachos.",
                answer: "Avocado"
            ),
            Tab4QuestionOldman(
                question: "Which country is known as the Land of the Rising Sun?",
                hint1: "Its flag has a red circle.",
                hint2: "It’s located in East Asia.",
                answer: "Japan"
            ),
            Tab4QuestionOldman(
                question: "Who discovered gravity?",
                hint1: "He was an English mathematician.",
                hint2: "He formulated the laws of motion.",
                answer: "Isaac Newton"
            ),
            Tab4QuestionOldman(
                question: "What is the national flower of Japan?",
                hint1: "It blooms in spring.",
                hint2: "Its name is a type of tree.",
                answer: "Cherry Blossom"
            ),
            Tab4QuestionOldman(
                question: "What is the capital of Canada?",
                hint1: "It’s not Toronto.",
                hint2: "It’s located in Ontario.",
                answer: "Ottawa"
            ),
            Tab4QuestionOldman(
                question: "What is the term for animals that eat only plants?",
                hint1: "Examples include cows and deer.",
                hint2: "The term starts with 'H'.",
                answer: "Herbivores"
            ),
            Tab4QuestionOldman(
                question: "What is the smallest bone in the human body?",
                hint1: "It’s located in the ear.",
                hint2: "Its name starts with 'S'.",
                answer: "Stapes"
            ),
            Tab4QuestionOldman(
                question: "What is the boiling point of water in Celsius?",
                hint1: "It’s a round number.",
                hint2: "It’s 100 degrees.",
                answer: "100°C"
            ),
            Tab4QuestionOldman(
                question: "What is the largest desert in the world?",
                hint1: "It’s not hot but cold.",
                hint2: "It’s located in Antarctica.",
                answer: "Antarctic Desert"
            ),
            Tab4QuestionOldman(
                question: "Which organ pumps blood through the body?",
                hint1: "It’s part of the circulatory system.",
                hint2: "It beats around 60-100 times per minute.",
                answer: "Heart"
            ),
            Tab4QuestionOldman(
                question: "What is the main gas found in the air we breathe?",
                hint1: "It makes up about 78% of the atmosphere.",
                hint2: "Its chemical symbol is 'N'.",
                answer: "Nitrogen"
            ),
        Tab4QuestionOldman(
                question: "What is the largest planet in our solar system?",
                hint1: "It is famous for its Great Red Spot.",
                hint2: "It’s the fifth planet from the Sun.",
                answer: "Jupiter"
            ),
            Tab4QuestionOldman(
                question: "What is the name of the process by which plants make their food?",
                hint1: "It requires sunlight and water.",
                hint2: "Its name starts with 'P'.",
                answer: "Photosynthesis"
            ),
            Tab4QuestionOldman(
                question: "What is the most widely spoken language in the world?",
                hint1: "It’s spoken in China.",
                hint2: "It’s also called Mandarin.",
                answer: "Chinese"
            ),
            Tab4QuestionOldman(
                question: "What is the capital of Italy?",
                hint1: "It’s known for its ancient ruins.",
                hint2: "It’s home to the Colosseum.",
                answer: "Rome"
            ),
            Tab4QuestionOldman(
                question: "Which metal is liquid at room temperature?",
                hint1: "Its chemical symbol is 'Hg'.",
                hint2: "It’s often used in thermometers.",
                answer: "Mercury"
            ),
            Tab4QuestionOldman(
                question: "What is the term for a baby frog?",
                hint1: "It has a tail and lives in water.",
                hint2: "Its name starts with 'T'.",
                answer: "Tadpole"
            ),
            Tab4QuestionOldman(
                question: "Which planet is known as the Morning Star?",
                hint1: "It’s also the Evening Star.",
                hint2: "It’s the second planet from the Sun.",
                answer: "Venus"
            ),
            Tab4QuestionOldman(
                question: "What is the capital of Germany?",
                hint1: "It was divided during the Cold War.",
                hint2: "Its name starts with 'B'.",
                answer: "Berlin"
            ),
            Tab4QuestionOldman(
                question: "What is the smallest unit of life?",
                hint1: "It’s the basic building block of all organisms.",
                hint2: "Its name starts with 'C'.",
                answer: "Cell"
            ),
            Tab4QuestionOldman(
                question: "Which bird is known for its ability to mimic sounds?",
                hint1: "It’s often kept as a pet.",
                hint2: "Its name starts with 'P'.",
                answer: "Parrot"
            ),
            Tab4QuestionOldman(
                question: "What is the main ingredient in chocolate?",
                hint1: "It comes from a type of bean.",
                hint2: "Its name starts with 'C'.",
                answer: "Cocoa"
            ),
            Tab4QuestionOldman(
                question: "What is the name of the longest bone in the human body?",
                hint1: "It’s located in the leg.",
                hint2: "Its name starts with 'F'.",
                answer: "Femur"
            ),
            Tab4QuestionOldman(
                question: "What is the main currency used in the United Kingdom?",
                hint1: "It’s not the Euro.",
                hint2: "Its symbol is '£'.",
                answer: "Pound Sterling"
            ),
            Tab4QuestionOldman(
                question: "What is the chemical symbol for iron?",
                hint1: "Its symbol comes from Latin.",
                hint2: "It’s 'Fe'.",
                answer: "Fe"
            ),
            Tab4QuestionOldman(
                question: "What is the name of the process by which water turns into vapor?",
                hint1: "It happens when water is heated.",
                hint2: "Its name starts with 'E'.",
                answer: "Evaporation"
            ),
            Tab4QuestionOldman(
                question: "What is the capital of Spain?",
                hint1: "It’s famous for its art and culture.",
                hint2: "Its name starts with 'M'.",
                answer: "Madrid"
            ),
            Tab4QuestionOldman(
                question: "Which sea creature has three hearts?",
                hint1: "It’s a type of mollusk.",
                hint2: "Its name starts with 'O'.",
                answer: "Octopus"
            ),
            Tab4QuestionOldman(
                question: "What is the hardest part of the human body?",
                hint1: "It’s found in the mouth.",
                hint2: "It’s the outer layer of teeth.",
                answer: "Enamel"
            ),
            Tab4QuestionOldman(
                question: "What is the most abundant gas in Earth’s atmosphere?",
                hint1: "It’s not oxygen.",
                hint2: "Its symbol is 'N'.",
                answer: "Nitrogen"
            ),
            Tab4QuestionOldman(
                question: "Which country is known for inventing pizza?",
                hint1: "It’s in Europe.",
                hint2: "Its capital is Rome.",
                answer: "Italy"
            ),
            Tab4QuestionOldman(
                question: "What is the smallest continent by area?",
                hint1: "It’s also a country.",
                hint2: "Its name starts with 'A'.",
                answer: "Australia"
            ),
            Tab4QuestionOldman(
                question: "What is the currency of Japan?",
                hint1: "Its symbol is '¥'.",
                hint2: "Its name starts with 'Y'.",
                answer: "Yen"
            ),
            Tab4QuestionOldman(
                question: "What is the largest organ in the human body?",
                hint1: "It’s on the outside.",
                hint2: "It protects us from external harm.",
                answer: "Skin"
            ),
            Tab4QuestionOldman(
                question: "What is the main ingredient in bread?",
                hint1: "It’s made from grains.",
                hint2: "It starts with 'F'.",
                answer: "Flour"
            ),
            Tab4QuestionOldman(
                question: "Which planet is known for its large storms?",
                hint1: "It’s the largest planet in the solar system.",
                hint2: "It has a Great Red Spot.",
                answer: "Jupiter"
            ),
            Tab4QuestionOldman(
                question: "What is the process by which plants lose water through their leaves?",
                hint1: "It starts with 'T'.",
                hint2: "It’s important for the water cycle.",
                answer: "Transpiration"
            ),
            Tab4QuestionOldman(
                question: "What is the tallest animal in the world?",
                hint1: "It has a long neck.",
                hint2: "Its name starts with 'G'.",
                answer: "Giraffe"
            ),
            Tab4QuestionOldman(
                question: "Which metal is the best conductor of electricity?",
                hint1: "It’s more conductive than gold.",
                hint2: "Its symbol is 'Ag'.",
                answer: "Silver"
            ),
            Tab4QuestionOldman(
                question: "Which organ is responsible for detoxifying the blood?",
                hint1: "It’s located in the abdomen.",
                hint2: "Its name starts with 'L'.",
                answer: "Liver"
            ),
            Tab4QuestionOldman(
                question: "What is the main language spoken in Brazil?",
                hint1: "It’s not Spanish.",
                hint2: "Its name starts with 'P'.",
                answer: "Portuguese"
            ),
            Tab4QuestionOldman(
                question: "What is the largest island in the world?",
                hint1: "It’s covered mostly by ice.",
                hint2: "Its name starts with 'G'.",
                answer: "Greenland"
            ),
            Tab4QuestionOldman(
                question: "Which gas do plants absorb during photosynthesis?",
                hint1: "It’s found in the air.",
                hint2: "Its symbol is 'CO2'.",
                answer: "Carbon Dioxide"
            ),
            Tab4QuestionOldman(
                question: "What is the closest star to Earth?",
                hint1: "It provides us with light and heat.",
                hint2: "Its name starts with 'S'.",
                answer: "Sun"
            ),
            Tab4QuestionOldman(
                question: "What is the primary source of energy for life on Earth?",
                hint1: "It’s a star.",
                hint2: "It rises every morning.",
                answer: "Sun"
            ),
            Tab4QuestionOldman(
                question: "What is the largest land carnivore?",
                hint1: "It’s found in the Arctic.",
                hint2: "Its name starts with 'P'.",
                answer: "Polar Bear"
            ),
            Tab4QuestionOldman(
                question: "What is the capital of Russia?",
                hint1: "It’s the largest city in Russia.",
                hint2: "Its name starts with 'M'.",
                answer: "Moscow"
            ),
            Tab4QuestionOldman(
                question: "What is the most populous country in the world?",
                hint1: "Its flag is red with stars.",
                hint2: "Its capital is Beijing.",
                answer: "China"
            ),
            Tab4QuestionOldman(
                question: "What is the study of stars and planets called?",
                hint1: "It starts with 'A'.",
                hint2: "It’s the study of space.",
                answer: "Astronomy"
            ),
            Tab4QuestionOldman(
                question: "What is the main gas in the bubbles of soda?",
                hint1: "Its symbol is 'CO2'.",
                hint2: "It’s also used in fire extinguishers.",
                answer: "Carbon Dioxide"
            )
    ]
}


import Network

func isInternetAvailable() -> Bool {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkMonitor")
    var isAvailable = false
    
    monitor.pathUpdateHandler = { path in
        if path.status == .satisfied {
            isAvailable = true
        } else {
            isAvailable = false
        }
    }
    
    monitor.start(queue: queue)
    Thread.sleep(forTimeInterval: 0.1)
    monitor.cancel()
    
    return isAvailable
}
