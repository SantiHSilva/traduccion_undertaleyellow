scr_text()
is_talking = 1
msg.sndfnt_array[0] = 102
talk_id = (room_get_name(room) + string_copy(object_get_name(global.party_member), 4, 2))
function multiple_lines_gml_Object_obj_martlet_follower_Other_10() //gml_Script_multiple_lines_gml_Object_obj_martlet_follower_Other_10
{
    if (!(ds_map_exists(global.talk_map, talk_id)))
        ds_map_add(global.talk_map, talk_id, 0)
}

function update_talk_val_gml_Object_obj_martlet_follower_Other_10() //gml_Script_update_talk_val_gml_Object_obj_martlet_follower_Other_10
{
    ds_map_replace(global.talk_map, talk_id, (ds_map_find_value(global.talk_map, talk_id) + 1))
}

if (global.dunes_flag[41] == 0)
{
    switch room
    {
        case rm_dunes_10:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Bet you had a few#  run-ins on your journey,#  right?	"
                    message[1] = "* An area like this... I#  wonder what kind of#  battle music they had?	"
                    message[2] = "* Oh, right. You may not#  know...	"
                    message[3] = "* There's this phenomenon#  with monsters.	"
                    message[4] = "* When we focus while in#  a battle, melodic#  vibrations echo from us."
                    message[5] = "* It's almost like it's#  in our heads but... 	"
                    message[6] = "* It's possible the#  opponent hears it as#  well.	"
                    message[7] = "* I always hear super#  dramatic music when I#  fight!	"
                    message[8] = "* It may not fit me to be#  honest... but it's the#  feeling I strive for!	"
                    message[9] = "* I wonder...	"
                    message[10] = "* Could humans find their#  own melody if determined#  enough?	"
                    message[11] = "* An interesting thought!"
                    prt[0] = 321
                    prt[1] = 328
                    prt[2] = 320
                    prt[3] = 311
                    prt[4] = 328
                    prt[5] = 338
                    prt[6] = 328
                    prt[7] = 313
                    prt[8] = 313
                    prt[9] = 311
                    prt[10] = 324
                    prt[11] = 312
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* With me around, you#  shouldn't have to worry#  about fights anymore!	"
                    message[1] = "* It isn't because they#  don't like me...	"
                    message[2] = "* It's that monsters#  typically don't attack#  other monsters."
                    message[3] = "* ‘Least I hope that's#  the reason..."
                    message[4] = "* I'm personable...#  right?	"
                    message[5] = "* Let's just say \"yes\" to#  avoid being anxious the#  rest of today."
                    prt[0] = 312
                    prt[1] = 320
                    prt[2] = 338
                    prt[3] = 311
                    prt[4] = 320
                    prt[5] = 312
                }
            }
            break
        case 126:
            with (msg)
            {
                message[0] = "* ..."
                prt[0] = 321
            }
            break
        case 124:
            with (msg)
            {
                message[0] = "* I have no clue where#  we're headed."
                message[1] = "* I'm so unfamiliar with#  this place, it might as#  well be the Surface."
                message[2] = "* Doing a great job of#  helping you, I know."
                prt[0] = 312
                prt[1] = 328
                prt[2] = 320
            }
            break
        case 125:
            with (msg)
            {
                message[0] = "* Geez, I was hoping it'd#  be cooler in here but#  nope!"
                prt[0] = 321
            }
            break
        case 123:
            with (msg)
            {
                message[0] = "* Hmm... there's gotta be#  a way to Hotland#  somewhere."
                prt[0] = 311
            }
            break
        case 121:
            with (msg)
            {
                message[0] = "* Man, it is h-o-t HOT!#  I'm starting to miss#  Snowdin!"
                message[1] = "* You doin' okay in those#  heavy clothes? I'd pass#  out by now."
                prt[0] = 322
                prt[1] = 322
            }
            break
        case 276:
            with (msg)
            {
                message[0] = "* There's so much to see#  in this town!	"
                message[1] = "* I'm getting some strong#  Honeydew Resort vibes.	"
                message[2] = "* After I get tired of#  keeping the peace every#  day, I may move here.	"
                message[3] = "* A mighty fine#  retirement plan, yeah?"
                prt[0] = 312
                prt[1] = 318
                prt[2] = 318
                prt[3] = 312
            }
            break
        case 117:
            with (msg)
            {
                message[0] = "* I apologize for not#  talking with the#  residents more."
                message[1] = "* With my bird brain, who#  knows what might slip#  out!"
                prt[0] = 320
                prt[1] = 323
            }
            break
        case 118:
            with (msg)
            {
                message[0] = "* Look at that little#  thing.    "
                message[1] = "* Trying its best to grow#  big and strong I bet!"
                prt[0] = 312
                prt[1] = 318
            }
            break
        case 119:
            with (msg)
            {
                message[0] = "* Ooo! I bet I can tell#  your fortune, Clover!"
                message[1] = "* Yeess... Hmm..."
                message[2] = "* I see you with a brand#  new hat..."
                message[3] = "* One that just SCREAMS#  \"I'm a human.\""
                message[4] = "* Kidding, by the way.#  Your hat's plenty cool#  as is!"
                prt[0] = 318
                prt[1] = 335
                prt[2] = 334
                prt[3] = 333
                prt[4] = 312
            }
            break
        case 120:
            with (msg)
            {
                message[0] = "* The architecture here#  is fascinating!"
                message[1] = "* Back home, almost#  everything is made from#  wood."
                message[2] = "* Maybe I should start#  building with stone?"
                prt[0] = 312
                prt[1] = 328
                prt[2] = 324
            }
            break
        case 116:
            with (msg)
            {
                message[0] = "* Hey... I think I know#  who lives here."
                message[1] = "* Guess she doesn't want#  visitors."
                message[2] = "* Makes sense, poor#  thing."
                prt[0] = 321
                prt[1] = 338
                prt[2] = 329
            }
            break
        case 110:
            with (msg)
            {
                message[0] = "* Aww, the playground is#  super cute!"
                message[1] = "* I should build one of#  these back home for the#  school!"
                prt[0] = 312
                prt[1] = 328
            }
            break
        case 114:
            with (msg)
            {
                message[0] = "* Can't say this is how I#  thought my day would end#  up.	"
                message[1] = "* Meeting a human,#  visiting a new place...	"
                message[2] = "* Couple checks off the#  bucket list for sure."
                prt[0] = 320
                prt[1] = 338
                prt[2] = 328
            }
            break
        case 111:
            with (msg)
            {
                message[0] = "* Phew, I'm getting#  thirsty."
                message[1] = "* I typically bring a#  canteen when I travel#  but..."
                message[2] = "* ...I kinda left all of#  my belongings at my#  station."
                prt[0] = 315
                prt[1] = 317
                prt[2] = 329
            }
            break
        case 112:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    talker[0] = 1169
                    talker[2] = 1797
                    talker[3] = 1169
                    talker[4] = 1797
                    talker[5] = 1169
                    sndfnt_array[0] = 102
                    sndfnt_array[2] = 391
                    sndfnt_array[3] = 102
                    sndfnt_array[4] = 391
                    sndfnt_array[5] = 102
                    message[0] = "* Excuse me, sir?     "
                    message[1] = "* Shouldn't a gift shop#  have, ya know, gifts?"
                    message[2] = "* DO YOU SEE THOSE#  SHELVES?"
                    message[3] = "* I do."
                    message[4] = "* YEAH, THOUGHT SO.#"
                    message[5] = "* ...What?"
                    prt[0] = 311
                    prt[1] = 324
                    prt[3] = 321
                    prt[5] = 336
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Not exactly digging the#  vibe of this place.    "
                    message[1] = "* I'm ready to leave when#  you are."
                    prt[0] = 336
                    prt[1] = 338
                }
            }
            break
        case 106:
        case 107:
        case 108:
        case 109:
            talk_id = ("rm_dunes_25" + string_copy(object_get_name(global.party_member), 4, 2))
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* What a breathtaking#  view...    "
                    message[1] = "* Isn't it fascinating#  how large the#  Underground is?    "
                    message[2] = "* Feels almost too large#  sometimes.    "
                    message[3] = "* I may seem audacious#  but I'm a little uneasy#  right now, heh.    "
                    message[4] = "* Bit of a homebody...#  Like to stay where it's#  familiar.    "
                    message[5] = "* Focus on my hobbies and#  job, ya know...    "
                    message[6] = "* But I'm working on it! #    "
                    message[7] = "* Not doing great but#  working on it!"
                    prt[0] = 333
                    prt[1] = 321
                    prt[2] = 338
                    prt[3] = 320
                    prt[4] = 338
                    prt[5] = 320
                    prt[6] = 312
                    prt[7] = 323
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Just saying, last time#  I stepped out and took a#  risk...    "
                    message[1] = "* I ended up regretting#  it SO MUCH you wouldn't#  believe!    "
                    message[2] = "* But I guess it taught#  me that growth is#  possible.    "
                    message[3] = "* Good growth, bad#  growth, don't know yet. #    "
                    message[4] = "* I'm still not even used#  to normal adult#  responsibilities!    "
                    message[5] = "* Cut me some slack,#  waking up before noon#  sucks!"
                    prt[0] = 338
                    prt[1] = 321
                    prt[2] = 328
                    prt[3] = 338
                    prt[4] = 323
                    prt[5] = 335
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 2)
            {
                with (msg)
                {
                    message[0] = "* Guess I'm lucky my job#  involves something I#  like doing.    "
                    message[1] = "* I could be working here#  at the Mines or even#  worse... retail!    "
                    message[2] = "* Glass half full,#  Clover. Glass half full."
                    prt[0] = 328
                    prt[1] = 332
                    prt[2] = 312
                }
            }
            break
        case 90:
        case 91:
        case 92:
        case 94:
        case 95:
        case 96:
        case 97:
        case 99:
        case 101:
        case 103:
        case 104:
            talk_id = ("rm_dunes_12" + string_copy(object_get_name(global.party_member), 4, 2))
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Oh my gosh! Look at all#  the gemstones in the#  walls!"
                    message[1] = "* I might have to sneak a#  few outta here."
                    message[2] = "* Don't rat me out!"
                    prt[0] = 318
                    prt[1] = 331
                    prt[2] = 337
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* We should probably find#  a way to Hotland soon,#  yeah?"
                    prt[0] = 312
                }
            }
            break
        case 86:
            multiple_lines()
            if (instance_exists(obj_dunes_08b_room_controller) && global.dunes_flag[3] > 0)
            {
                with (msg)
                {
                    message[0] = "* (Hey, Clover. I know#  this fella.)"
                    message[1] = "* (He's set up shop#  around Snowdin quite a#  bit.)"
                    message[2] = "* (Always seemed a little#  shady if you ask me...#  pun intended.)"
                    prt[0] = 335
                    prt[1] = 334
                    prt[2] = 335
                }
                update_talk_val()
            }
            else
            {
                with (msg)
                {
                    message[0] = "* Looks like this is a#  dead end, huh."
                    prt[0] = 328
                }
            }
            break
        case 77:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* What a terrible#  sight..."
                    message[1] = "* Ava was such a beauty#  and look at her now..."
                    message[2] = "* A hundred smaller#  beauties."
                    message[3] = "* ..."
                    message[4] = "* I should... "
                    message[5] = "* No, nevermind. We don't#  have time. Let's go."
                    prt[0] = 317
                    prt[1] = 317
                    prt[2] = 329
                    prt[3] = 329
                    prt[4] = 329
                    prt[5] = 321
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Let's push ahead,#  Clover."
                    prt[0] = 321
                }
            }
            break
        default:
            with (msg)
            {
                message[0] = "* We should probably get#  going."
                prt[0] = 321
            }
            break
    }

}
if (global.dunes_flag[41] >= 1)
{
    switch room
    {
        case rm_dunes_36:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* This is going to be#  redundant,	"
                    message[1] = "* But I'm sorry for all#  of my apologies.	"
                    message[2] = "* It feels like all I've#  done since we met is#  screw up.	"
                    message[3] = "* I'm thankful that#  you're tough and aren't,#  ya know, dead.	"
                    message[4] = "* But I shouldn't have#  been so scatterbrained#  in the first place.	"
                    message[5] = "* That changes here!	"
                    message[6] = "* Whatever awaits us,#  I'll do my best to help!"
                    prt[0] = 338
                    prt[1] = 329
                    prt[2] = 317
                    prt[3] = 320
                    prt[4] = 317
                    prt[5] = 328
                    prt[6] = 312
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Trek on, Clover!"
                    prt[0] = 328
                }
            }
            break
        case 123:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* I want you to know that#  you can trust me."
                    message[1] = "* Some monster's haven't#  been incredibly#  accommodating to you.	"
                    message[2] = "* Me included...	"
                    message[3] = "* But please don't let#  those experiences warp#  your perception of us!	"
                    message[4] = "* Especially the#  potential backstabbing#  we're dealing with now.	"
                    message[5] = "* Our history with#  humanity is a harsh and#  complicated one.	"
                    message[6] = "* Not everyone takes it#  well."
                    prt[0] = 328
                    prt[1] = 320
                    prt[2] = 329
                    prt[3] = 317
                    prt[4] = 329
                    prt[5] = 317
                    prt[6] = 315
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ..."
                    prt[0] = 317
                }
            }
            break
        case 121:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Gosh..."
                    message[1] = "* I don't know if I'm#  ready for this."
                    message[2] = "* Way to get yourself#  into a mess, Martlet.	"
                    message[3] = "* Bang up job."
                    prt[0] = 317
                    prt[1] = 329
                    prt[2] = 322
                    prt[3] = 322
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ..."
                    prt[0] = 329
                }
            }
            break
        case 120:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* You doing alright?	"
                    message[1] = "* Sure look like you#  are.	"
                    message[2] = "* I can only hope your#  confidence rubs off on#  me."
                    message[3] = "* Just a smidge."
                    prt[0] = 317
                    prt[1] = 320
                    prt[2] = 329
                    prt[3] = 320
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ..."
                    prt[0] = 320
                }
            }
            break
        case 276:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Until now, I haven't#  done any real#  investigations.	"
                    message[1] = "* Though, one time I did#  have to look into a#  Snowdin gang.	"
                    message[2] = "* I heard reports they#  were harassing visitors#  so I checked it out.	"
                    message[3] = "* I didn't find a gang#  but a few cups did make#  me play a game.	"
                    message[4] = "* They moved so fast it#  made me dizzy! I#  couldn't beat ‘em!	"
                    message[5] = "* They had a name... What#  was it? \"The Scrufflers\"#  or something like that.	"
                    message[6] = "* Wait... Gangs have#  names!	"
                    message[7] = "* They were probably#  friends with the other#  gang!	"
                    message[8] = "* Gah-I should've pieced#  it together sooner!"
                    prt[0] = 321
                    prt[1] = 338
                    prt[2] = 311
                    prt[3] = 324
                    prt[4] = 310
                    prt[5] = 324
                    prt[6] = 333
                    prt[7] = 309
                    prt[8] = 310
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Almost there..."
                    prt[0] = 321
                }
            }
            break
        case 116:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Here we go...	"
                    message[1] = "* No turning back..."
                    prt[0] = 317
                    prt[1] = 322
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ..."
                    prt[0] = 329
                }
            }
            break
        case 251:
            with (msg)
            {
                message[0] = "* ..."
                prt[0] = 329
            }
            break
        case 241:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Talk about#  extravagant!	"
                    message[1] = "* This must've taken#  years to build...	"
                    message[2] = "* Well, if it were done#  traditionally."
                    message[3] = "* Maybe magic had#  something to do with it?"
                    prt[0] = 333
                    prt[1] = 338
                    prt[2] = 320
                    prt[3] = 311
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Guess we should choose#  a direction."
                    message[1] = "* East, west, up to you."
                    message[2] = "* We'll find what we need#  eventually."
                    prt[0] = 324
                    prt[1] = 328
                    prt[2] = 328
                }
            }
            break
        case 243:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* This place is a little#  eerie when no one's#  around.	"
                    message[1] = "* Long, dim halls... dust#  filling each beam of#  light...	"
                    message[2] = "* Regular dust that is..."
                    prt[0] = 317
                    prt[1] = 329
                    prt[2] = 321
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Keep on looking,#  Clover."
                    prt[0] = 321
                }
            }
            break
        case 249:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* I'm a bit surprised#  Kanako wanted this#  room.	"
                    message[1] = "* It's pretty isolated#  from everything else.	"
                    message[2] = "* Must have some of her#  mother's independence,#  huh?"
                    prt[0] = 338
                    prt[1] = 321
                    prt[2] = 320
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Keep on looking,#  Clover."
                    prt[0] = 321
                }
            }
            break
        case 248:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Keep an eye out for#  anything out of the#  ordinary."
                    prt[0] = 338
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Anything seem off to#  you yet?"
                    message[1] = "* Yeah... me neither."
                    prt[0] = 321
                    prt[1] = 338
                }
            }
            break
        case 247:
            with (msg)
            {
                message[0] = "* ..."
                prt[0] = 338
            }
            break
        case 244:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Hopefully this place#  doesn't stay abandoned#  for too long."
                    message[1] = "* It'd be a huge shame to#  let it waste away."
                    prt[0] = 329
                    prt[1] = 317
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Keep on looking,#  Clover."
                    prt[0] = 321
                }
            }
            break
        case 246:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* I don't see anything#  concerning here.	"
                    message[1] = "* It's gotta be somewhere#  else."
                    prt[0] = 338
                    prt[1] = 321
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* We gotta be getting#  closer, right?"
                    prt[0] = 317
                }
            }
            break
        case 245:
            with (msg)
            {
                message[0] = "* ..."
                prt[0] = 338
            }
            break
        case 242:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* You still doing okay?	"
                    message[1] = "* I know this whole thing#  is a lot to process...	"
                    message[2] = "* Actually, me pointing#  that out doesn't help.	"
                    message[3] = "* I'm gonna stop talking."
                    prt[0] = 320
                    prt[1] = 329
                    prt[2] = 329
                    prt[3] = 320
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ..."
                    prt[0] = 338
                }
            }
            break
        case 250:
            multiple_lines()
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* What the..."
                    prt[0] = 333
                }
                update_talk_val()
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ..."
                    prt[0] = 322
                }
            }
            break
        case 221:
            with (msg)
            {
                message[0] = "* There's no more time to#  waste!"
                message[1] = "* We got this!"
                prt[0] = 313
                prt[1] = 313
            }
            break
        case 213:
            with (msg)
            {
                message[0] = "* Sorry if the meet#  location was hard to#  find."
                message[1] = "* Needed a private#  vantage point."
                message[2] = "* I also forgot that not#  everyone can fly..."
                prt[0] = 323
                prt[1] = 329
                prt[2] = 324
            }
            break
        case 212:
            with (msg)
            {
                message[0] = "* This is a busy place so#  we should keep to#  ourselves."
                message[1] = "* No need to raise#  suspicion."
                message[2] = "* It's a normal day in#  the Underground. Yep."
                message[3] = "* ...Let's just hope it#  ends normally too."
                prt[0] = 321
                prt[1] = 338
                prt[2] = 328
                prt[3] = 329
            }
            break
        case 217:
            with (msg)
            {
                message[0] = "* Need to take that#  elevator to New Home."
                message[1] = "* ...If it isn't#  occupied, that is."
                prt[0] = 321
                prt[1] = 338
            }
            break
        case 253:
            with (msg)
            {
                message[0] = "* Here we are... the big#  city."
                message[1] = "* Now that I think about#  it..."
                message[2] = "* I'm not sure a human#  has ever walked these#  streets."
                message[3] = "* Who's to say, though?"
                message[4] = "* Not a whole lot is#  known about those#  previous treks."
                prt[0] = 328
                prt[1] = 338
                prt[2] = 321
                prt[3] = 328
                prt[4] = 338
            }
            break
        case 254:
            with (msg)
            {
                message[0] = "* Huh..."
                message[1] = "* I expected a lot more#  citizens."
                message[2] = "* Little eerie when no#  one's around."
                prt[0] = 311
                prt[1] = 338
                prt[2] = 317
            }
            break
        case 255:
            with (msg)
            {
                message[0] = "* ..."
                prt[0] = 329
            }
            break
        case 263:
            with (msg)
            {
                message[0] = "* So this is the#  Castle..."
                message[1] = "* Never been inside#  before."
                message[2] = "* Nerve-wracking stuff."
                prt[0] = 321
                prt[1] = 338
                prt[2] = 317
            }
            break
        case 264:
            with (msg)
            {
                message[0] = "* ...	"
                message[1] = "* ..."
                message[2] = "* For once, I'm at a loss#  for words."
                prt[0] = 333
                prt[1] = 321
                prt[2] = 321
            }
            break
        case 265:
            with (msg)
            {
                message[0] = "* This is it, Clover."
                message[1] = "* A few more steps and#  you're free."
                prt[0] = 321
                prt[1] = 320
            }
            break
        case 267:
            with (msg)
            {
                message[0] = "* ..."
                message[1] = "* Maybe we shouldn't be#  in this room..."
                prt[0] = 315
                prt[1] = 317
            }
            break
        default:
            with (msg)
            {
                if (global.hotland_flag[1] > 0)
                {
                    message[0] = "* Let's keep going,#  Clover!"
                    prt[0] = 328
                }
                else
                {
                    message[0] = "* We should probably get#  going."
                    prt[0] = 321
                }
            }
            break
    }

}