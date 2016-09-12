# WARNING: these seeds assume you have edited the devise config to allow for single letter passwords
#
# 
# uses this dictionary to generate random tags

load "#{Rails.root}/db/words.rb"

def gen_str
  str = String.new
  len = rand(4) + 1
  for i in 1..len
    str += $words.sample + " "
  end
  return str
end

def gen_str_large
  str = String.new
  len = rand(50) + 1
  for i in 1..len
    str += $words.sample + " "
  end
  return str
end

users = User.create(
  [
    { email: 'a@a.com', name: "Mr. Aardvark", password: "a", password_confirmation: "a", admin: true},
    { email: 'b@b.com', name: "Mr. Bear", password: "b", password_confirmation: "b"},
    { email: 'c@c.com', name: "Mr. Cat", password: "c", password_confirmation: "c"},
    { email: 'd@d.com', name: "Mr. Dog", password: "d", password_confirmation: "d"},
    { email: 'e@e.com', name: "Mr. Elephant", password: "e", password_confirmation: "e"},
    { email: 'f@f.com', name: "Mr. Fox", password: "f", password_confirmation: "f"},
    { email: 'g@g.com', name: "Mr. Gopher", password: "g", password_confirmation: "g"},
    { email: 'h@h.com', name: "Mr. Horse", password: "h", password_confirmation: "h"},
    { email: 'i@i.com', name: "Mr. Iguana", password: "i", password_confirmation: "i"},
    { email: 'j@j.com', name: "Mr. Jackrabbit", password: "j", password_confirmation: "j"},
    { email: 'k@k.com', name: "Mr. Kangaroo", password: "k", password_confirmation: "k"},
    { email: 'l@l.com', name: "Mr. Lama", password: "l", password_confirmation: "l"},
    { email: 'm@m.com', name: "Mr. Mouse", password: "m", password_confirmation: "m"},
    { email: 'n@n.com', name: "Mr. Numbat", password: "n", password_confirmation: "n"},
    { email: 'o@o.com', name: "Mr. Opossum", password: "o", password_confirmation: "o"},
    { email: 'p@p.com', name: "Mr. Peacock", password: "p", password_confirmation: "p"},
    { email: 'q@q.com', name: "Mr. Quail", password: "q", password_confirmation: "q"},
    { email: 'r@r.com', name: "Mr. Rabbit", password: "r", password_confirmation: "r"},
    { email: 's@s.com', name: "Mr. Snake", password: "s", password_confirmation: "s"},
    { email: 't@t.com', name: "Mr. Tiger", password: "t", password_confirmation: "t"},
    { email: 'u@u.com', name: "Mr. Urial", password: "u", password_confirmation: "u"},
    { email: 'v@v.com', name: "Mr. Vulture", password: "v", password_confirmation: "v"},
    { email: 'w@w.com', name: "Mr. Wombat", password: "w", password_confirmation: "w"},
    { email: 'x@x.com', name: "Mr. Xerox", password: "x", password_confirmation: "x"},
    { email: 'y@y.com', name: "Mr. Yak", password: "y", password_confirmation: "y"},
    { email: 'z@z.com', name: "Mr. Zebra", password: "z", password_confirmation: "z"},
  ]
)

platforms = Platform.create([
  {name: "PS4"},
  {name: "Xbox One"},
  {name: "Wii U"},
  {name: "3DS"},
  {name: "PS Vita"},
  {name: "PC"},
  {name: "Other"}

])

vgames = Vgame.create([
  {fname:"fallout4.jpg", name:"Fallout 4" ,description:"just testing", genre:"rpg", release: '12/11/9999', developer:"Bethsidia"},
  {fname:"xenobladechroniclesx.jpg", name:"Xenoblade Chronicles X" ,description:"just testing", genre:"rpg", release: '12/11/9999', developer:"Monolith Soft"},
  {fname:"halo5.jpg", name:"Halo 5" ,description:"just testing", genre:"shooter", release: '12/11/9999', developer:"343"},
  {fname:"bloodborne.jpg", name:"Bloodborne" ,description:"Testing", genre:"action/rpg", release: '12/11/9999', developer:"From software"},
  {fname:"monsterhunterx.jpg", name:"Monster Hunter X" ,description:"Testing", genre:"action/rpg", release: '12/11/9999', developer:"Capcom"},
  {fname:"destiny.jpg", name:"Destiny" ,description:gen_str_large, genre:"rpg/shooter", release: '12/11/9999', developer:"Bungie"},
  {fname:"witcher.jpg", name:"Witcher" ,description:gen_str_large, genre:"action/rpg", release: '12/11/9999', developer:"CD Projekt Red Studio"},
  {fname:"grandtheftautov.jpg", name:"Grand Theft Auto 5" ,description: gen_str_large, genre:"action", release: '12/11/9999', developer:"Rockstar"},
  {fname:"skyrim.jpg", name:"The Elder Scrolls V: Skyrim" ,description:gen_str_large, genre:"action/rpg", release: '12/11/9999', developer:"Bethsidia"},
  {fname:"phantompain.jpg", name:"Metal Gear Solid V: The Phantom Pain" ,description: gen_str_large, genre:"action", release: '12/11/9999', developer:"Kojima Productions"},
  {fname:"finalfantasy7.jpg", name:"Final Fantasy 7" ,description:gen_str_large, genre:"rpg", release: '12/11/9999', developer:"Squaresoft"},
  {fname:"finalfantasy14.jpg", name:"Final Fantasy 14" ,description:gen_str_large, genre:"mmo-rpg", release: '12/11/9999', developer:"Square Enix"},
  {fname:"smashbros.jpg", name:"Super Smash Bros" ,description:gen_str_large, genre:"action/rpg", release: '12/11/9999', developer:"Capcom"},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str},
  {fname:"#{gen_str}.jpg", name:gen_str,description:gen_str_large, genre:gen_str, release: '12/11/9999', developer:gen_str}
  ])

vgames.each do |vgame|
  for i in 1..4
  Topic.create(vgame_id: vgame.id, user_id: (rand(25)+1),title: gen_str)
  Review.create(vgame_id: vgame.id, user_id: (rand(25)+1), title: gen_str, reviewtext: gen_str_large, rating:(rand(10)+1))
  end
  VgamePlatform.create(vgame_id: vgame.id, platform_id:(rand(7)+1))
end

Topic.all.each do |topic|
  for i in 1..4
    Post.create(topic_id: topic.id, user_id: (rand(25)+1),message:gen_str_large)
  end
end
