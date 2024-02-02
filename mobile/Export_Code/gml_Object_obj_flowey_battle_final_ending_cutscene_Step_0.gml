if live_call()
    return global.live_result;
switch scene
{
    case 0:
        cutscene_wait(1)
        break
    case 1:
        if cutscene_dialogue_final_flowey()
        {
            if (global.meta_flowey_fight_count != 0)
            {
                instance_create(x, y, obj_flowey_battle_screen_glitch_ending)
                scene = 10
            }
        }
        with (msg)
        {
            position = 0
            sndfnt = 96
            if (global.meta_flowey_fight_count == 0)
            {
                message[0] = "* Heh, I can't believe I thought#  this run might be it."
                message[1] = "* It's no wonder we make a good#  team."
                message[2] = "* You're a lot like me in a way."
                message[3] = "* Too stubborn to lie down and#  accept your situation."
                message[4] = "* Too... determined."
                message[5] = "* You're so annoying."
                message[6] = "* ..."
                message[7] = "* I thought this would be fun,#  and I suppose it was..."
                message[8] = "* ...For a moment."
                message[9] = "* But I'm over it now."
                message[10] = "* ..."
                message[11] = "* I don't think either of us feel#  like fighting for all eternity#  so..."
                message[12] = "* I'll cut you a deal."
                message[13] = "* I'm going to reset. Back to#  when you first arrived."
                message[14] = "* Of course, you probably won't#  remember this."
                message[15] = "* We can be \"pals\" all over#  again. Reunited."
                message[16] = "* If we end up in the same spot,#  I may try this again."
                message[17] = "* But..."
                message[18] = "* If you can remember anything#  from right now..."
                message[19] = "* Try to make different decisions#  next time."
                message[20] = "* There's a better timeline out#  there for both of us."
                message[21] = "* Not that I care about you, this#  outcome just sucks."
                message[22] = "* It was all in my mind!"
                message[23] = "* No one could see it, it wasn't#  threatening lives..."
                message[24] = "* Doesn't come close to what I'm#  TRULY aiming for."
                message[25] = "* When I reach that goal, you'll#  be there to witness it."
                message[26] = "* A spectacle like the world's#  never seen!"
                message[27] = "* So... When we meet again in#  that dingy room..."
                message[28] = "* You're gonna help me get what I#  want."
                message[29] = "* Like it or not, I decide your#  fate now."
                message[30] = "* Haha! If only I could see your#  reaction to all this!"
                message[31] = "* Oh, who am I kidding?"
                message[32] = "* Your face would only look like#  it always did!"
                flowey[0] = flowey_worried
                flowey[1] = flowey_wink
                flowey[2] = flowey_nice
                flowey[3] = flowey_smirk
                flowey[4] = flowey_nice
                flowey[5] = flowey_smirk
                flowey[6] = flowey_plain
                flowey[7] = flowey_plains
                flowey[8] = flowey_plain
                flowey[9] = flowey_plain
                flowey[10] = flowey_plains
                flowey[11] = flowey_plains
                flowey[12] = flowey_plain
                flowey[13] = flowey_nice
                flowey[14] = flowey_niceside
                flowey[15] = flowey_nice
                flowey[16] = flowey_niceside
                flowey[17] = flowey_nice
                flowey[18] = flowey_nice
                flowey[19] = flowey_nice
                flowey[20] = flowey_nice
                flowey[21] = flowey_niceside
                flowey[22] = flowey_nice
                flowey[23] = flowey_plain
                flowey[24] = flowey_plains
                flowey[25] = flowey_nice
                flowey[26] = flowey_niceside
                flowey[27] = flowey_nice
                flowey[28] = flowey_smirk
                flowey[29] = flowey_smirk
                flowey[30] = flowey_nice
                flowey[31] = flowey_wink
                flowey[32] = flowey_nice
            }
            else if (global.meta_flowey_fight_count == 1)
            {
                message[0] = "* Here we are again."
                message[1] = "* Wasn't as terrifying or flashy#  as it was the first time, huh?"
                message[2] = "* Cut me some slack! My#  imagination is only so vast!"
                message[3] = "* Forget it. I might as well be#  talking to a wall."
                message[4] = "* You don't retain your memory#  after resets."
                message[5] = "* That's why I have to explain#  the same things every time."
                message[6] = "* Place the same savepoints,#  make the same comments..."
                message[7] = "* \"Golly, this place sure is#  ____!\" "
                message[8] = "* \"Keep up the good work,#  buddy!\""
                message[9] = "* \"Remember your mission!\""
                message[10] = "* Over and over and over and#  over..."
                message[11] = "* But I notice things each run."
                message[12] = "* You solve puzzles faster."
                message[13] = "* You defeat monsters faster."
                message[14] = "* You navigate the Underground#  like you have a map."
                message[15] = "* All that, yet I know your#  memory is wiped clean."
                message[16] = "* I can't explain it..."
                message[17] = "* ..."
                message[18] = "* Maybe at some point it will#  all culminate."
                message[19] = "* You will finally lead me to#  what I need."
                message[20] = "* Until then, I'll reset."
                message[21] = "* And reset and reset and reset#  and reset and reset and reset#  and reset and"
                flowey[0] = flowey_plain
                flowey[1] = flowey_plains
                flowey[2] = spr_flowey_disappointed
                flowey[3] = flowey_plains
                flowey[4] = flowey_plain
                flowey[5] = flowey_plain
                flowey[6] = flowey_plains
                flowey[7] = spr_flowey_grin_forward
                flowey[8] = spr_flowey_grin
                flowey[9] = spr_flowey_grin_forward
                flowey[10] = flowey_plains
                flowey[11] = flowey_nice
                flowey[12] = flowey_plains
                flowey[13] = flowey_plains
                flowey[14] = flowey_plain
                flowey[15] = flowey_plain
                flowey[16] = flowey_plains
                flowey[17] = flowey_plains
                flowey[18] = flowey_plain
                flowey[19] = flowey_plain
                flowey[20] = flowey_plains
                flowey[21] = spr_flowey_grin
                if (message_current == 21)
                    message_timer = 1
            }
            else if (global.meta_flowey_fight_count == 2)
            {
                message[0] = "* Why do we keep ending up here?"
                message[1] = "* Every time you make certain#  choices, it's the rooftop."
                message[2] = "* Martlet always convinces you#  to go with her."
                message[3] = "* Am I supposed to just... let#  that happen?"
                message[4] = "* No... I've seen you surrender#  and adapt before."
                message[5] = "* It doesn't lead anywhere."
                message[6] = "* So, what? Is this it? Is this#  the way it has to be?"
                message[7] = "* When I first steered you into#  the Dark Ruins..."
                message[8] = "* I could've sworn I was onto#  something."
                message[9] = "* But it feels like your life -#  your fate - is locked in."
                message[10] = "* As if there's a specific way#  it MUST play out."
                message[11] = "* If that's true... what does#  that fate lead to? Ultimately?"
                message[12] = "* ...Maybe you're not the one I#  need?"
                message[13] = "* Maybe you're only a stepping#  stone? A... precursor."
                message[14] = "* \"They come. They leave. They#  die.\""
                message[15] = "* That's what she always said."
                message[16] = "* ..."
                message[17] = "* There will be another.	"
                message[18] = "* And this \"helpful\" act... It's#  not working.	"
                message[19] = "* I need to embrace who I really#  am as soon as I'm rid of you.	"
                message[20] = "* For now, however, I have to#  keep it up.	"
                message[21] = "* I know what it's like to be at#  rock bottom without hope.	"
                message[22] = "* This... while incredibly#  frustrating...	"
                message[23] = "* This act has gotten me the#  closest I've ever been to my#  goal.	"
                message[24] = "* It's the first time I've felt#  like I've made true progress.	"
                message[25] = "* Sure I could try rigging a new#  puzzle...	"
                message[26] = "* Drag you into another#  alternate path...	"
                message[27] = "* But even I don't have the#  patience for that.	"
                message[28] = "* I know deep down that my plan#  WILL work out.	"
                message[29] = "* What I don't know is whether#  that plan involves you in the#  end.	"
                message[30] = "* ...Alive, that is.	"
                message[31] = "* But I've blabbered on enough.	"
                message[32] = "* It's time for me to fake a#  smile through another#  excruciating journey.	"
                message[33] = "* Don't mess it up again."
                flowey[0] = flowey_plain
                flowey[1] = flowey_plain
                flowey[2] = flowey_plains
                flowey[3] = flowey_plain
                flowey[4] = flowey_plains
                flowey[5] = flowey_plains
                flowey[6] = flowey_sad
                flowey[7] = flowey_plain
                flowey[8] = flowey_plains
                flowey[9] = flowey_plain
                flowey[10] = flowey_plain
                flowey[11] = flowey_plains
                flowey[12] = flowey_plain
                flowey[13] = flowey_plains
                flowey[14] = flowey_plains
                flowey[15] = flowey_nice
                flowey[16] = flowey_plain
                flowey[17] = flowey_plain
                flowey[18] = flowey_plains
                flowey[19] = flowey_niceside
                flowey[20] = flowey_nice
                flowey[21] = flowey_plain
                flowey[22] = flowey_plains
                flowey[23] = flowey_plain
                flowey[24] = flowey_plain
                flowey[25] = flowey_plains
                flowey[26] = flowey_plains
                flowey[27] = flowey_plain
                flowey[28] = flowey_smirk
                flowey[29] = flowey_plains
                flowey[30] = flowey_nice
                flowey[31] = flowey_niceside
                flowey[32] = flowey_nice
                flowey[33] = flowey_smirk
            }
            else if (global.meta_flowey_fight_count >= 3 && (!other.fun_value_check))
            {
                message[0] = "* Heh."
                message[1] = "* Talk about a \"dead end.\""
                message[2] = "* ..."
                message[3] = "* That's not funny."
                message[4] = "* None of this is."
                message[5] = "* I shouldn't be here. Not#  again."
                message[6] = "* I mean, come on..."
                message[7] = "* Don't I have anything better#  to do?"
                flowey[0] = flowey_nice
                flowey[1] = flowey_niceside
                flowey[2] = flowey_plains
                flowey[3] = flowey_plain
                flowey[4] = flowey_plains
                flowey[5] = flowey_plains
                flowey[6] = flowey_sad
                flowey[7] = flowey_plains
            }
            else if other.fun_value_check
            {
                message[0] = "* ..."
                message[1] = "* You know? It's strange."
                message[2] = "* Something's off here."
                message[3] = "* We're alone in my mind right#  now."
                message[4] = "* It's clear that we're alone,#  right?"
                message[5] = "* Then why I can't shake it..."
                message[6] = "* In moments like this where all#  is quiet... that's when I feel#  it."
                message[7] = "* Only since you showed up has#  it been this way."
                message[8] = "* ..."
                message[9] = "* I have to reset again."
                message[10] = "* I have to reset until I find#  the right path."
                message[11] = "* Until you make the right#  choices."
                message[12] = "* Until it..."
                flowey[0] = flowey_plain
                flowey[1] = flowey_plains
                flowey[2] = flowey_plains
                flowey[3] = flowey_plains
                flowey[4] = flowey_plain
                flowey[5] = flowey_plain
                flowey[6] = flowey_plain
                flowey[7] = flowey_plains
                flowey[8] = flowey_plain
                flowey[9] = flowey_plains
                flowey[10] = flowey_plains
                flowey[11] = flowey_plain
                flowey[12] = flowey_plains
                if (message_current == 12)
                    message_timer = 1
            }
            other.sprite_index = flowey[message_current]
        }
        break
    case 2:
        cutscene_sfx_play(snd_toy_squeak, 1)
        break
    case 3:
        sprite_index = spr_flowey_cloverface
        cutscene_wait(2)
        break
    case 4:
        cutscene_dialogue_final_flowey()
        with (msg)
        {
            position = 0
            sndfnt = 96
            message[0] = "* Hahahahaha!!!"
            message[1] = "* Alright, alright, I'll let you#  go."
            message[2] = "* I do need a little time to#  practice my intro monologue,#  though."
            message[3] = "* Feel free to pace yourself#  before the big fall!"
            message[4] = "* See ya later, Clover!"
            flowey[0] = flowey_nice
            flowey[1] = flowey_niceside
            flowey[2] = flowey_wink
            flowey[3] = flowey_nice
            flowey[4] = flowey_niceside
            other.sprite_index = flowey[message_current]
        }
        break
    case 5:
        if (sprite_index != spr_flowey_enter)
        {
            y -= 44
            sprite_index = spr_flowey_enter
            image_index = (image_number - 1)
            image_speed = -0.3
        }
        else if (image_index <= 0.5)
        {
            cutscene_advance()
            image_alpha = 0
        }
        break
    case 6:
        cutscene_wait(3)
        break
    case 7:
        cymbal_sound = audio_play_sound(mus_cymbal, 1, false)
        cutscene_advance()
        break
    case 8:
        draw_alpha_white = (audio_sound_get_track_position(cymbal_sound) / audio_sound_length(cymbal_sound))
        if (draw_alpha_white >= 0.99)
        {
            draw_alpha_white = 1
            scene++
        }
        break
    case 9:
        cutscene_wait(5)
        break
    case 10:
        if (!instance_exists(obj_flowey_battle_screen_glitch_ending))
        {
            room = rm_credits
            persistent = true
            scene++
        }
        break
    case 11:
        draw_alpha_white -= 0.1
        if (draw_alpha_white <= 0)
            instance_destroy()
        break
}

if instance_exists(obj_heart_battle_fighting_yellow_final)
    obj_heart_battle_fighting_yellow_final.y = lerp(obj_heart_battle_fighting_yellow_final.y, 440, 0.15)
