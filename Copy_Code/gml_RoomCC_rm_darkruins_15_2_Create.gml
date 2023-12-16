if (global.flag[15] != 1)
{
    message[0] = "* (Es una antorcha de madera con una# gran llama apoyada en#  la parte superior.)"
    if (global.route == 3)
        message[0] = "* (Una antorcha.)"
}
else
    message[0] = "* (Está profundamente dormido. #* Tal vez no deberías molestarlo.)"
