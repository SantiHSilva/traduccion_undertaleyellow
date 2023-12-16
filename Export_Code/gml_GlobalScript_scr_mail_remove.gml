function scr_mail_remove(argument0) //gml_Script_scr_mail_remove
{
    var old_pos = ds_list_find_index(global.mail_list, argument0)
    ds_list_delete(global.mail_list, old_pos)
    scr_mail_sort()
}

