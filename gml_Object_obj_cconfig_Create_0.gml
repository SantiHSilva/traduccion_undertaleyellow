p[6] = 0
p[0] = 1
binding = 0
control_test = 0
ini_open("Controls.sav")
global.buttonText1 = ini_read_string("ControlsNameIgnore", "Z", "1(A)")
global.buttonText2 = ini_read_string("ControlsNameIgnore", "X", "2(B)")
global.buttonText3 = ini_read_string("ControlsNameIgnore", "C", "4(Y)")
ini_close()
waiter = 0
