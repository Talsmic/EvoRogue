btl_manager.lock_skillinprogress = true;

var timeline = db_record_get("db_Skills",ref_skill,"timeline");
timeline_indexs(timeline,step);
step++;