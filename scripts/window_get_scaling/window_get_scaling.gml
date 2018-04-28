///window_get_scaling()

var a = application_get_position();
var scaling_w = (a[2]-a[0])/Resolution_IdealWidth;
var scaling_h = (a[2]-a[0])/Resolution_IdealHeight;

return (a[2]-a[0])/Resolution_IdealWidth;