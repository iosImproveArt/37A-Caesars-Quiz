

import SwiftUI

struct FactsViewOldman: View {
    @State var timer: Timer?
    @State var selectedFact: FactOldman? = facts.randomElement()!
    @State var showSheet = false
    
    var wrfw = "wfvrwv"
    var wrfvwr = 145.54524
    func cwefcwrefc() -> Float {
        return 242.242
    }
    func qerfcqref() {
        print("cqefcqefc")
    }
    fileprivate struct Jrmfkc {}
    var body: some View {
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFont(size: 22, weight: .regular, color: .hex("F59337"))
                                .padding(.top, 16)
                            Spacer()
                            Text(fact.content)
                                .withFont(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.bottom, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFont(size: 15.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = facts.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .overlay {
                            Text("NEXT")
                                .withFont(size: 14.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetView
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetView: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFont(size: 22, weight: .regular, color: .hex("F59337"))
                    .padding(.top, 12)
                
                ScrollView {
                    Text(fact.content)
                        .withFont(size: 19.5, weight: .thin)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                }
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hex("F59337"))
                    
                    Rectangle()
                        .foregroundColor(.hex("222D4F"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFont(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.hex("222D4F")
                    .edgesIgnoringSafeArea(.all)
            }
    }
}

#Preview {
    ContentViewOldman(showLoading: false, selectedTab: .facts)
}


struct FactOldman {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
}

fileprivate let facts: [FactOldman] = [
    FactOldman(title: "The Eternal Storm", content: "The Catatumbo Lightning is a unique atmospheric phenomenon occurring over the Catatumbo River in Venezuela. Known as the 'Eternal Storm,' it produces lightning strikes almost 300 days a year. This natural light show occurs due to the region's unique geography: warm, humid air from Lake Maracaibo rises and collides with cold winds from the Andes, creating massive electrical discharges. The phenomenon generates more ozone than any other lightning storm on Earth, contributing to the planet's ozone layer."),
    
    FactOldman(title: "The Boiling River", content: "In the heart of the Amazon rainforest, there is a mysterious river known as the Shanay-Timpishka, or 'The Boiling River.' Its waters reach temperatures of up to 93°C (200°F), hot enough to scald and even kill animals that fall in. Scientists believe the heat originates from geothermal energy, where water from underground reservoirs is superheated and then surfaces through faults in the Earth's crust. Local legends suggest the river has sacred properties, blending indigenous spirituality with unique natural phenomena."),
    
    FactOldman(title: "The Underwater Waterfall", content: "Off the coast of Mauritius, there is an optical illusion that looks like an underwater waterfall. This phenomenon is caused by the movement of sand and silt along the ocean floor, creating a visual effect as though water is tumbling into an abyss. The illusion is best seen from above and is the result of ocean currents flowing around the island’s unique underwater topography. This striking sight demonstrates how natural forces can create awe-inspiring illusions."),
    
    FactOldman(title: "The Singing Sand Dunes", content: "In several deserts around the world, such as the Sahara and the Gobi, sand dunes produce a low-pitched humming sound, often described as 'singing.' This sound is caused by grains of sand rubbing against each other when the sand shifts, either from wind or human activity. Scientists found that the size and shape of the grains, as well as the moisture content, determine the frequency and intensity of the sound. These singing dunes provide a glimpse into the complex physics of granular materials."),
    
    FactOldman(title: "Antarctica's Blood Falls", content: "In Antarctica, a glacier called Taylor Glacier is home to a shocking red-colored waterfall known as Blood Falls. This phenomenon is caused by iron-rich water emerging from a subglacial lake and oxidizing upon contact with the air, creating a striking rust-like appearance. The water also contains microbes that have adapted to thrive in extreme conditions without sunlight or oxygen, providing clues about the possibility of life on other planets."),
    
    FactOldman(title: "The Glow-in-the-Dark Waves", content: "Bioluminescent waves, caused by microorganisms called dinoflagellates, create glowing blue coastlines in places like the Maldives and Puerto Rico. These tiny creatures emit light when disturbed, creating a magical glowing effect when waves break or footprints are left in the wet sand. The phenomenon occurs in nutrient-rich waters, often triggered by changes in water temperature or chemical composition, and highlights the beauty and complexity of marine ecosystems."),
    
    FactOldman(title: "The Loneliest Tree", content: "In the middle of the Sahara Desert, there was once a tree known as the Tree of Ténéré, famed as the world's loneliest tree. This acacia stood as the only tree for 400 kilometers around, surviving in one of the harshest climates on Earth. It was a critical landmark for travelers until it was tragically knocked over by a truck in 1973. The tree's story remains a testament to resilience in extreme environments."),
    
    FactOldman(title: "The Ice Flowers of the Arctic", content: "On the Arctic Ocean's surface during extremely cold conditions, 'ice flowers' can form. These delicate frost structures grow from imperfections on thin ice when the water vapor in the air freezes instantly. They are rich in salt and bacteria, creating unique microhabitats in one of the harshest environments on Earth. Ice flowers provide a glimpse into how life can adapt to extreme cold, inspiring research into extraterrestrial life."),
    
    FactOldman(title: "The River that Runs Backwards", content: "The Chicago River in Illinois is famous for being one of the few rivers in the world to have its flow intentionally reversed. This engineering feat was achieved in the early 20th century to prevent pollution from Lake Michigan, the city’s primary water source. The reversal was accomplished by constructing a series of canals and locks, demonstrating humanity's ability to alter natural systems for urban needs."),
    
    FactOldman(title: "The Living Rocks", content: "Pyura chilensis, also known as 'living rocks,' are marine creatures found along the coast of Chile and Peru. At first glance, they look like ordinary stones, but upon closer inspection, they are filter-feeding organisms with blood rich in vanadium, a rare element. These unique creatures challenge the distinction between inanimate and living beings, providing a fascinating example of life’s adaptability."),
    
    FactOldman(title: "Lake That Never Freezes", content: "Lake Baikal in Siberia, the world's deepest freshwater lake, is known for its unique properties. Despite freezing over in winter, its waters remain exceptionally clear, allowing light to penetrate up to 40 meters under the ice. This phenomenon occurs because of low levels of organic matter and the unique ecosystem supported by endemic species."),
    
    FactOldman(title: "The Desert That Blooms", content: "In Chile's Atacama Desert, one of the driest places on Earth, a rare phenomenon known as 'desert bloom' occurs after heavy rainfall. Dormant seeds germinate, covering the arid landscape with vibrant wildflowers. This event highlights the resilience of life even in the harshest conditions."),
    
    FactOldman(title: "The Endless Wave", content: "In Brazil's Amazon River, a phenomenon called 'Pororoca' occurs when the tide from the Atlantic Ocean pushes upriver, creating waves that can travel for kilometers. Surfers from around the world attempt to ride this unique natural wave, which can last for over half an hour."),
    
    FactOldman(title: "The Pink Lake", content: "Lake Hillier in Australia is famous for its bright pink color, caused by the presence of microalgae that produce a red pigment. Despite its unusual color, the lake is safe for swimming, making it a popular tourist attraction and a marvel of microbial ecosystems."),
    
    FactOldman(title: "The Stone Forest", content: "The Shilin Stone Forest in China is a vast area of towering limestone formations, some over 270 million years old. These structures were created by the erosion of limestone and other minerals, leaving behind a surreal landscape that looks like a petrified forest."),
    
    FactOldman(title: "The World's Loudest Animal", content: "The sperm whale holds the title for the loudest animal on Earth. Its clicks, used for echolocation, can reach up to 230 decibels, louder than a jet engine. These sounds help the whale navigate the deep ocean and communicate with others over long distances."),
    
    FactOldman(title: "The Lake That Kills", content: "Lake Nyos in Cameroon is one of the world's only known exploding lakes. Its depths contain high concentrations of carbon dioxide, which can be released in deadly bursts, suffocating nearby wildlife and humans. Efforts have been made to mitigate this risk by releasing gas in controlled amounts."),
    
    FactOldman(title: "The Frozen Bubbles", content: "In Canada’s Lake Abraham, methane gas bubbles become trapped under the ice, creating stunning frozen patterns. These bubbles form when organic matter decomposes at the lake's bottom and freeze as they rise. The phenomenon offers both a visual spectacle and a reminder of the role of methane in climate change."),
    
    FactOldman(title: "The Upside-Down River", content: "In Mexico’s Cenote Angelita, a unique underwater river forms due to a layer of hydrogen sulfide separating saltwater and freshwater. This phenomenon creates the illusion of a river flowing underwater, offering divers an otherworldly experience."),
    
    FactOldman(title: "The Singing Ice", content: "In extremely cold conditions, frozen lakes emit eerie, high-pitched sounds as the ice expands and contracts. This 'singing ice' phenomenon occurs when temperature changes cause the ice to crack, sending vibrations through the surface, creating sounds like laser beams."),
    
    FactOldman(title: "The Burning Mountain", content: "Mount Wingen in Australia, also known as Burning Mountain, is home to an underground coal seam fire that has been burning for over 6,000 years. This is one of the longest-burning natural fires, fueled by oxygen seeping into coal deposits through cracks."),
    
    FactOldman(title: "The Moving Island", content: "In Loktak Lake, India, floating islands called phumdis form naturally from vegetation and organic matter. These islands support unique ecosystems and are even home to a national park, showcasing nature's ingenuity."),
    
    FactOldman(title: "The Ice Canyon", content: "In Greenland, the Russell Glacier is home to deep, winding ice canyons created by meltwater streams. These canyons showcase the dynamic nature of glaciers and are some of the most visually stunning formations on Earth."),
    
    FactOldman(title: "The Lava Lake", content: "Mount Nyiragongo in the Democratic Republic of Congo has one of the world's largest lava lakes. Its constantly bubbling lava is a rare geological feature, offering a glimpse into the planet’s fiery interior."),
    
    FactOldman(title: "The Glowworm Caves", content: "New Zealand's Waitomo Caves are famous for their glowworms, which create a starry effect on the cave ceiling. These bioluminescent creatures use their light to attract prey, making the caves a popular tourist destination."),
    
    FactOldman(title: "The Two-Toned Beach", content: "Pfeiffer Beach in California features purple sand, created by manganese-rich minerals eroded from nearby rocks. This unique coloration makes it one of the most distinctive beaches in the world."),
    
    FactOldman(title: "The Blood Rain", content: "In parts of Kerala, India, a phenomenon called 'blood rain' occurs during monsoon season. This red-colored rain is caused by airborne spores from algae and has fascinated scientists for decades."),
    
    FactOldman(title: "The Living Bridges", content: "In Meghalaya, India, locals create 'living bridges' by training the roots of rubber trees to grow across rivers. These natural structures are incredibly strong and can last for centuries, showcasing the harmony between humans and nature."),
    
    FactOldman(title: "The Crystal Cave", content: "Mexico’s Naica Mine contains massive selenite crystals, some over 12 meters long. The cave’s high temperatures and humidity helped these crystals grow to such enormous sizes over hundreds of thousands of years."),
    
    FactOldman(title: "The Vanishing River", content: "The Rio Celeste in Costa Rica is known for its vibrant blue color, caused by a chemical reaction between volcanic minerals. However, during heavy rain, the river loses its iconic hue, only to regain it when conditions stabilize."),
    
    FactOldman(title: "The Loneliest Island", content: "Bouvet Island, located in the South Atlantic Ocean, is the most isolated island on Earth. Its icy terrain and harsh weather make it nearly uninhabitable, but it is a sanctuary for seals and seabirds."),
    
    FactOldman(title: "The Snow Donuts", content: "In rare conditions, snow rollers or 'snow donuts' can form when wind pushes snow into a rolling shape. These hollow cylinders are fragile and typically occur in open fields during strong winds."),
    
    FactOldman(title: "The Milky Seas", content: "A rare phenomenon called 'milky seas' occurs when bioluminescent bacteria illuminate large areas of the ocean, creating a glowing effect visible from space. This natural wonder is still poorly understood."),
    
    FactOldman(title: "The Black Sun", content: "In Denmark, during spring and autumn, flocks of starlings perform synchronized aerial displays known as 'black sun.' These murmurations create mesmerizing patterns and serve as a defense mechanism against predators."),
    
    FactOldman(title: "The Forest That Breathes", content: "In Canada’s Quebec forest, the ground appears to 'breathe' as tree roots move with wind pressure. This eerie phenomenon highlights the interconnectedness of trees and the forest floor."),
    
    FactOldman(title: "The Green Flash", content: "At sunrise or sunset, a rare green flash can appear on the horizon. This optical phenomenon occurs due to atmospheric refraction and is best seen in clear conditions over the ocean."),
    
    FactOldman(title: "The Rainbow Mountains", content: "China’s Zhangye Danxia Landform features rainbow-colored mountains, formed by layers of sedimentary rock and minerals over millions of years. The vibrant colors are a result of erosion and oxidation."),
    
    FactOldman(title: "The Hidden Beach", content: "Mexico’s Marieta Islands are home to a hidden beach accessible only through a water tunnel. This secluded spot was formed by volcanic activity and human intervention, creating a natural wonder."),
    
    FactOldman(title: "The Magnetic Hill", content: "In India’s Ladakh region, Magnetic Hill creates an optical illusion where vehicles appear to roll uphill. This phenomenon is due to the surrounding landscape tricking the brain into perceiving the slope incorrectly."),
    
    FactOldman(title: "The Flowering Coral", content: "Once a year, coral reefs around the world participate in a synchronized spawning event, releasing eggs and sperm into the water. This natural spectacle is timed with the moon cycles and is vital for reef regeneration."),
    
    FactOldman(title: "The Waterfall That Flows Up", content: "In Venezuela, there's a natural phenomenon called the Catatumbo Lightning that can appear to cause a waterfall to flow uphill. This illusion is created by the interaction of wind currents, electrical discharges, and the river’s natural topography, making it seem like the water defies gravity."),
    
    FactOldman(title: "The Giant's Causeway", content: "Northern Ireland is home to the Giant's Causeway, a unique formation of about 40,000 interlocking basalt columns, formed by volcanic activity over 60 million years ago. The site has both geological and mythical significance, as local legends suggest the columns were built by a giant."),
    
    FactOldman(title: "The Cloud Forest", content: "Costa Rica's Monteverde Cloud Forest is home to a rare ecosystem that exists in the mist of high-altitude mountains. The constant cloud cover nurtures a rich biodiversity of plants, animals, and birds that thrive in the moisture-laden environment."),
    
    FactOldman(title: "The Largest Desert", content: "Though most people think of deserts as sandy, dry places, the Antarctic Desert is actually the largest desert on Earth. It covers an area of about 14 million square kilometers, making it the coldest and driest place on the planet."),
    
    FactOldman(title: "The Moonlit Flowers", content: "Certain species of flowers, such as the Night-Blooming Cereus, only open their petals at night, when the moonlight is at its brightest. This behavior is thought to attract nocturnal pollinators like bats and moths, contributing to their reproductive cycle."),
    
    FactOldman(title: "The Black Sand Beaches", content: "The volcanic activity on Hawaii’s Big Island creates stunning black sand beaches. These beaches are formed when lava from eruptions meets the ocean and rapidly cools, breaking into small pieces of black volcanic glass."),
    
    FactOldman(title: "The Largest Living Structure", content: "The Great Barrier Reef in Australia is the world’s largest living structure, stretching over 2,300 kilometers. It’s home to a diverse range of marine life and contributes significantly to global biodiversity and environmental health."),
    
    FactOldman(title: "The Mysterious Moving Stones", content: "At Racetrack Playa in Death Valley, California, large rocks mysteriously move across the desert floor, leaving long trails behind them. Scientists have discovered that the rocks are pushed by a rare combination of ice and wind, resulting in this natural mystery."),
    
    FactOldman(title: "The Eyeless Fish", content: "In the caves of the Mexican Yucatán Peninsula, scientists have discovered a species of fish called the blind cavefish. These creatures have evolved without eyes, relying instead on other senses, such as detecting vibrations and changes in water pressure."),
    
    FactOldman(title: "The Sea of Stars", content: "The Maldives and other parts of the Indian Ocean are home to bioluminescent plankton that create an effect called the 'Sea of Stars.' These microorganisms emit a blue glow when disturbed, turning the ocean into a glowing spectacle, especially at night."),
    
    FactOldman(title: "The Volcano That Erupts Ice", content: "In Iceland, an ice volcano known as 'Geysir' periodically erupts with plumes of boiling water and steam. Its eruptions occur due to the high geothermal activity beneath the surface, creating both geothermal power and a spectacular show for tourists."),
    
    FactOldman(title: "The Underground River", content: "In Puerto Rico’s Rio Camuy Cave Park, one of the largest underground rivers in the world flows beneath the surface. The river has carved deep caves and tunnels, creating a unique subterranean ecosystem."),
    
    FactOldman(title: "The Tree That Grows on Rocks", content: "In the remote cliffs of the Mediterranean, a species of tree known as the 'rock pine' manages to grow in the most improbable places, thriving on rocky outcrops with little soil. Its roots adapt to the harsh conditions, defying conventional wisdom about plant growth."),
    
    FactOldman(title: "The Firefall", content: "In Yosemite National Park, the 'Firefall' phenomenon occurs every February when the setting sun illuminates a waterfall of molten lava. Though it appears as though lava is falling from the cliff, the optical effect is caused by the reflection of sunlight on a waterfall."),
    
    FactOldman(title: "The Ice Bubbles", content: "In Alberta, Canada, frozen methane bubbles create a surreal scene in Abraham Lake. These bubbles are trapped in the ice during the winter, providing an incredible and hauntingly beautiful landscape."),
    
    FactOldman(title: "The Unexplained Sound", content: "In the Pacific Ocean, sailors sometimes hear an eerie noise called the 'Bloop,' a high-pitched sound whose origin has baffled scientists. Though it was once believed to be the sound of an unknown sea creature, later studies suggested it was caused by the rapid movement of icebergs."),
    
    FactOldman(title: "The Snowdon Lily", content: "High up in Snowdonia, Wales, grows a rare plant known as the Snowdon Lily. This hardy species thrives in harsh alpine conditions and has become an emblem of resilience in one of the UK’s most rugged landscapes."),
    
    FactOldman(title: "The Golden Toad", content: "The Golden Toad, once endemic to a small area in Costa Rica, has not been seen since the 1980s. It is believed that the toad’s extinction was due to the climate change and fungal diseases, which have had devastating effects on amphibian populations."),
    
    FactOldman(title: "The Subterranean River", content: "In the Philippines, the Puerto Princesa Underground River is one of the longest navigable underground rivers in the world. This natural wonder winds through caves and emerges into the open ocean, offering a breathtaking experience for visitors."),
    
    FactOldman(title: "The Black Diamond", content: "In the Himalayan region, rare black diamonds, known as carbonado, are found in volcanic deposits. These diamonds are more porous and are believed to have extraterrestrial origins, making them one of the rarest and most valuable forms of carbon."),
    
    FactOldman(title: "The Sea of Ice", content: "The Arctic is home to one of the world’s most fascinating natural phenomena—’The Sea of Ice.’ This region is covered with floating ice sheets that constantly shift and break apart, creating an ever-changing landscape of icebergs and frozen water."),
    
    FactOldman(title: "The Giant Jellyfish", content: "The lion’s mane jellyfish, with tentacles that can span up to 30 meters, holds the title for the longest animal in the world. Despite their size, these jellyfish are typically found in colder, northern oceans and can be both awe-inspiring and dangerous."),
    
    FactOldman(title: "The Invisible Volcano", content: "In Hawaii, there is a volcano called Kīlauea, which is so active that it often erupts below the surface, making it difficult to see. Instead of a traditional eruption, the lava leaks into the ocean, creating vast amounts of steam and transforming the coastline."),
    
    FactOldman(title: "The Moon's Dust Storms", content: "While the Moon is thought to be mostly inert, lunar dust storms have been discovered that occasionally occur during specific meteorological events. These storms can drastically reduce visibility on the lunar surface and affect equipment left behind by astronauts."),
    
    FactOldman(title: "The Rolling Stone", content: "In Death Valley, California, large stones called 'Sailing Stones' can be seen moving across the desert floor. The movement is caused by a rare combination of ice, wind, and other environmental factors that make it appear as though the stones are rolling on their own."),
    
    FactOldman(title: "The Magnetic Hill", content: "Magnetic Hill in Ladakh, India, creates an optical illusion that makes vehicles appear to roll uphill, defying gravity. This phenomenon is caused by the surrounding terrain, which creates a visual effect that tricks the eye."),
    
    FactOldman(title: "The Singing Sand Dunes", content: "In parts of China and Mongolia, sand dunes are known to produce musical sounds, sometimes described as 'singing.' This occurs when the sand grains rub together under certain conditions of moisture, temperature, and wind."),
    
    FactOldman(title: "The Pillars of Creation", content: "Located in the Eagle Nebula, the Pillars of Creation are towering gas and dust formations that are believed to be the birthplace of new stars. These magnificent structures are millions of years old and were made famous by the Hubble Space Telescope."),
    
    FactOldman(title: "The Golden Eagle", content: "The Golden Eagle is one of the largest and most powerful birds of prey in the world. Native to the Northern Hemisphere, it is renowned for its hunting skills and has been a symbol of power and freedom in various cultures."),
    
    FactOldman(title: "The Bioluminescent Bay", content: "In Vieques, Puerto Rico, there’s a bay where the water glows due to the presence of bioluminescent plankton. This phenomenon occurs when the plankton are disturbed, releasing a bright blue glow in response."),
    
    FactOldman(title: "The Fountains of Vaucluse", content: "The Fountains of Vaucluse, located in France, is one of the largest springs in the world. The spring gushes out from the ground at a rate of over 630 cubic meters per second, forming a spectacular natural fountain."),
    
    FactOldman(title: "The Pyramids of Meroë", content: "The ancient Meroë pyramids in Sudan are part of a mysterious and little-known ancient Nubian civilization. These pyramids were built for royal burial and stand in stark contrast to their more famous Egyptian counterparts."),
    
    FactOldman(title: "The Glass Beach", content: "Located in California, Glass Beach was once a site for discarded glass and trash. Over time, ocean waves polished the glass, turning it into smooth, colorful pebbles that now cover the beach and create a dazzling visual effect."),
]
