text_effect = "twitchy"
message[0] = "Well, some of the time#at least."
message[1] = "And some of the time#is good enough for#me!"
message[2] = "Oh, I have a great#idea!"
message[3] = "What if I help you get#through Snowdin before#you become an adorable#popsicle?!"
message[4] = "And, along the way,#I can teach you#to be a better citizen#of the Underground!"
message[5] = "It'll be fun! It#happens in movies all#the time!"
message[6] = "A grumpy little human#enters and then two#or three montages#later..."
message[7] = "TA-DA!"
message[8] = "Okay, I'll be right#back! I need to#go figure how#to trigger a montage!"
portrait_head[0] = 314
portrait_hand[0] = 2058
portrait_head[1] = 3235
portrait_hand[1] = 2058
portrait_head[2] = 126
portrait_hand[2] = 2058
portrait_head[3] = 2087
portrait_hand[3] = 2058
portrait_head[4] = 2087
portrait_hand[4] = 2058
portrait_head[5] = 3673
portrait_hand[5] = 2058
portrait_head[6] = 126
portrait_hand[6] = 2058
portrait_head[7] = 126
portrait_hand[7] = 2058
portrait_head[8] = 126
portrait_hand[8] = 2058
message_end = 8
message_current = 0
message_draw = ""
increase = global.text_speed
characters = 0
hold = 0
message_length = string_length(message[message_current])
script_execute(gml_Script_scr_generate_text_counters)
circle_text_angle = global.circle_text_angle_default
circle_text_angle_direction = 1
