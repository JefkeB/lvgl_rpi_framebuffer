#include "app.h"



#include "lvgl/lvgl.h"

//
//
//
void event_handler(lv_event_t * e)
{
    lv_event_code_t code = lv_event_get_code(e);

    if(code == LV_EVENT_CLICKED) {
        LV_LOG_USER("Clicked");
    }
}


//
//
//
void App()
{
	lv_obj_t * button;
	button = lv_btn_create(lv_scr_act());
	lv_obj_add_event_cb(button, event_handler, LV_EVENT_ALL, NULL);
    lv_obj_align(button, LV_ALIGN_CENTER, 0, 0);
	lv_obj_set_height(button, 100);
	
	
    lv_obj_t * label;
    label = lv_label_create(button);
    lv_label_set_text(label, "Radio Nostalgie");
    lv_obj_center(label);	
}