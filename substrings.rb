def word_match(word, dictionary)
  dictionary.each do |dict|
    return [true, dict] if word.include?(dict)
  end
  [false]
end

def add_to_hash(word, result_hash)
  result_hash.include?(word) ? result_hash[word] += 1 : result_hash[word] = 1
  result_hash
end

def substring(sentence, dictionary)
  word_array = sentence.split(' ')
  result_hash = {}
  word_array.each do |word|
    word = word.downcase
    result = word_match(word, dictionary)
    result_hash = add_to_hash(result[1], result_hash) if result[0]
  end
  result_hash
end

puts substring('Lorem ipsum dolor amet lomo seitan gentrify beard, post-ironic
farm-to-table live-edge mlkshk unicorn master cleanse. Blog pitchfork la croix
street art shabby chic mixtape fanny pack. Portland glossier letterpress
kickstarter forage umami ramps sriracha celiac subway tile williamsburg
chicharrones put a bird on it photo booth. Farm-to-table slow-carb cliche
polaroid, 3 wolf moon pok pok everyday carry meh chartreuse vape pabst
adaptogen. Slow-carb sriracha selfies semiotics street art tumeric tilde umami
chillwave. Chia quinoa thundercats butcher, enamel pin succulents hammock
crucifix aesthetic man bun sriracha.

Viral tacos mlkshk celiac cold-pressed everyday carry, pabst pickled chillwave
pitchfork food truck letterpress. Pok pok iPhone before they sold out hexagon
air plant. Squid tilde jianbing franzen microdosing art party ugh chicharrones
woke austin. Succulents hell of health goth drinking vinegar slow-carb bicycle
rights distillery.

Semiotics meh tacos mumblecore organic polaroid. Readymade woke freegan raw
denim adaptogen. Plaid tattooed schlitz flannel. Gluten-free paleo neutra,
typewriter man bun seitan farm-to-table letterpress ennui pok pok edison bulb
hammock tofu chambray. Sriracha dreamcatcher art party, pitchfork fashion axe
intelligentsia locavore salvia fam butcher drinking vinegar. Shabby chic street
art small batch, keytar chicharrones pitchfork disrupt. Echo park YOLO cornhole
typewriter, fashion axe slow-carb fingerstache shabby chic lomo.

Twee PBR&B street art tumeric, seitan ugh chartreuse stumptown yuccie readymade
pour-over kitsch. Truffaut pinterest shaman, organic stumptown kale chips
distillery pok pok photo booth next level. Kombucha hot chicken cold-pressed
jean shorts. Blue bottle pour-over letterpress craft beer, iceland ethical
kinfolk tilde. Narwhal deep v art party chia single-origin coffee. Craft beer
actually photo booth hell of chillwave.

Microdosing vaporware YOLO literally austin pour-over. Neutra jean shorts beard
ennui cray vaporware meditation. Single-origin coffee +1 iPhone, poutine tumblr
cardigan whatever enamel pin typewriter flannel blue bottle bespoke tbh
flexitarian. 3 wolf moon iPhone yr sartorial, master cleanse activated charcoal
knausgaard. Glossier dreamcatcher 3 wolf moon, twee gentrify brunch artisan
scenester whatever celiac biodiesel trust fund. Drinking vinegar ramps activated
charcoal actually hell of, green juice messenger bag. Fanny pack bitters
raclette tousled yuccie af la croix messenger bag meh tbh banjo single-origin
coffee.', %w[man led])
