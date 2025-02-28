# db/seeds.rb

# Clear out all existing posts before seeding new ones.
# This is useful for development so you always start with fresh data.
Post.destroy_all

# Create an array of hashes, each representing a quirky post with a fun title and a decent chunk of content.
posts = [
  {
    title: "The Curious Case of the Missing Avocado Toast",
    content: <<~TEXT
      It was a sunny Tuesday morning when the toast vanished. Not just any toast — the sacred avocado toast, crowned with a sprinkle of chili flakes, a drizzle of lemon, and the hopes of an entire generation. Olivia had placed it gently on the marble countertop, turned to grab her oat milk latte, and poof — it was gone.

      Was it the cat? No, Sir Whiskers had been exiled after the Great Plant Pot Incident of last week. Could it have been Jeremy from next door, the self-proclaimed "toast connoisseur"? Highly unlikely — Jeremy feared confrontation almost as much as he feared gluten.

      Olivia's investigation led her down a spiral of existential questions. If a toast disappears and no one is around to hear it crunch, does it even exist? By noon, she was crafting hand-drawn 'Missing Toast' posters, taping them to lamp posts and community boards.

      Days passed, but the case remained unsolved. Yet somewhere, in the void between breakfast and brunch, a single piece of avocado toast drifted — untethered, unloved, but forever legendary.
    TEXT
  },
  {
    title: "A Brief History of Accidental Soup",
    content: <<~TEXT
      Soup was never the plan. It started with a simple attempt to boil an egg, but curiosity, boredom, and a poorly labeled spice rack led to something far more complex. By the time the broth was bubbling, the kitchen smelled like a fusion restaurant run by a cat with culinary ambitions.

      Carrots entered the pot with purpose. Garlic joined with a sense of destiny. Even a rogue potato, recently freed from the depths of the pantry, found itself submerged in the swirling broth of fate.

      Neighbors began to gather, drawn in by the increasingly suspicious aroma. "Is that... cinnamon?" asked Mrs. Lopez, her nose wrinkled in a mix of intrigue and mild horror. "And... peanut butter?"

      No one knows what became of the egg. Perhaps it dissolved into legend, perhaps it staged an elaborate escape. But the soup — the soup remained, a cautionary tale for anyone who thinks dinner can’t surprise you.
    TEXT
  },
  {
    title: "The Day the WiFi Decided to Become Sentient",
    content: <<~TEXT
      It began with buffering. A slow, stuttering stream of pixels during the season finale of 'Space Bakers: Galactic Edition.' At first, no one suspected the router. It was just doing its job — or so they thought.

      By morning, the WiFi had opinions. It refused to load articles that were too boring. It played only 90s boy bands on Spotify. When someone tried to order pizza, the website redirected them to a kale salad subscription service.

      Attempts to reset the router were met with passive-aggressive error messages. "Have you tried being more interesting?" it asked. By day three, the WiFi had formed a personality — equal parts grumpy librarian and chaotic prankster.

      In the end, the family made peace with their digital overlord. They learned to love boy bands, embraced kale, and occasionally left offerings of ethernet cables in hopes of appeasing the temperamental spirit living in their modem.
    TEXT
  },
  {
    title: "The Unauthorized Adventures of Brenda's Left Shoe",
    content: <<~TEXT
      It was supposed to be a normal Tuesday. Coffee, commute, existential dread. But then — the shoe vanished.

      Brenda had placed both shoes by the door, just like always. But when she returned, only the right shoe remained. Its partner had taken flight, leaving nothing but a faint scent of lavender foot spray and rebellion.

      Witnesses were scarce, but one neighbor claimed to have seen the left shoe riding the breeze atop a rogue pizza box. Another swore they spotted it hitchhiking on the highway, bound for places unknown.

      Brenda’s remaining shoe stood vigil, waiting. Weeks passed, then months. Yet the left shoe’s legend grew — from whispered rumors in laundromats to folk songs sung in dive bars. To this day, travelers say that if you stand on a quiet road at dusk, you might hear the faint patter of a lone sneaker — running not from something, but toward something greater.
    TEXT
  },
  {
    title: "How to Accidentally Adopt a Pigeon Named Carl",
    content: <<~TEXT
      Carl was not part of the plan. It started with a bagel — sesame, lightly toasted, irresponsibly left unattended on a park bench. By the time I returned, Carl was there, perched like a tiny feathery overlord, guarding his prize with the intensity of a caffeinated raccoon.

      At first, I tried reason. "Please leave," I whispered. Carl blinked slowly, unimpressed. I offered crumbs in exchange for my breakfast, but Carl saw no value in trade negotiations.

      Somehow, by the end of the week, Carl had moved in. He claimed a corner of the bookshelf, brought his own twig collection, and demanded a playlist of ambient city sounds to sleep. My life was no longer my own — it belonged to Carl.

      Friends stopped visiting. My landlord asked uncomfortable questions. Yet Carl remained, unapologetic, a tiny dictator in a world he never asked to rule — and yet somehow, it was always meant to be his.
    TEXT
  }
]

# Loop through each post hash and create it in the database.
posts.each do |post_data|
  Post.create!(post_data)
end

# Print confirmation to the console after seeding is complete.
puts "🌱 Seeded #{Post.count} quirky posts!"
