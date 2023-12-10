if (image_index >= index_trigger_obj && trigger_obj == 0)
{
    event_user(0)
    trigger_obj = 1
}
if (image_index >= index_trigger_bg && trigger_bg == 0)
{
    event_user(1)
    trigger_bg = 1
}
