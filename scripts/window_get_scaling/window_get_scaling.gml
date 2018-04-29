///window_get_scaling()

var a = application_get_position();
var scaling_w = (a[2]-a[0])/Resolution_IdealWidth;
var scaling_h = (a[2]-a[0])/Resolution_IdealHeight;

if ( scaling_w < scaling_h ) { return scaling_w }
						else { return scaling_h };
