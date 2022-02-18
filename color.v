module color

struct ANSImessage {
	message []string
mut:
	color      string
	background string
	style      string
}

fn (c ANSImessage) str() string {
	return '\033[$c.color' +'$c.background'+'$c.style'+'m$c.message'+c.reset()
}

pub fn new(text ...string) ANSImessage {
	return ANSImessage{
		message: text
	}
}

pub fn (mut c ANSImessage) black() {
	c.color = Black
}

pub fn (mut c ANSImessage) red() {
	c.color = DarkRed
}

pub fn (mut c ANSImessage) green() {
	c.color = DarkGreen
}

pub fn (mut c ANSImessage) yellow() {
	c.color = DarkYellow
}

pub fn (mut c ANSImessage) blue() {
	c.color = DarkBlue
}

pub fn (mut c ANSImessage) magenta() {
	c.color = DarkMagenta
}

pub fn (mut c ANSImessage) cyan() {
	c.color = DarkCyan
}

pub fn (mut c ANSImessage) light_gray() {
	c.color = LightGray
}

pub fn (mut c ANSImessage) gray() {
	c.color = DarkGray
}

pub fn (mut c ANSImessage) light_red() {
	c.color = LightRed
}

pub fn (mut c ANSImessage) light_green() {
	c.color = LightGreen
}

pub fn (mut c ANSImessage) light_yellow() {
	c.color = LightYellow
}

pub fn (mut c ANSImessage) light_blue() {
	c.color = LightBlue
}

pub fn (mut c ANSImessage) light_magenta() {
	c.color = LightMagenta
}

pub fn (mut c ANSImessage) light_cyan() {
	c.color = LightCyan
}

pub fn (mut c ANSImessage) white() {
	c.color = White
}

pub fn (mut c ANSImessage) bg_black() {
	c.background = BgBlack
}

pub fn (mut c ANSImessage) bg_red() {
	c.background = BgDarkRed
}

pub fn (mut c ANSImessage) bg_green() {
	c.background = BgDarkGreen
}

pub fn (mut c ANSImessage) bg_yellow() {
	c.background = BgDarkYellow
}

pub fn (mut c ANSImessage) bg_blue() {
	c.background = BgDarkBlue
}

pub fn (mut c ANSImessage) bg_cyan() {
	c.background = BgDarkCyan
}

pub fn (mut c ANSImessage) bg_light_gray() {
	c.background = BgLightGray
}

pub fn (mut c ANSImessage) bg_light_red() {
	c.background = BgLightRed
}

pub fn (mut c ANSImessage) bg_light_green() {
	c.background = BgLightGreen
}

pub fn (mut c ANSImessage) bg_light_yellow() {
	c.background = BgLightYellow
}

pub fn (mut c ANSImessage) bg_light_blue() {
	c.background = BgLightBlue
}

pub fn (mut c ANSImessage) bg_light_magenta() {
	c.background = BgLightMagenta
}

pub fn (mut c ANSImessage) bg_light_cyan() {
	c.background = BgLightCyan
}

pub fn (mut c ANSImessage) bg_white() {
	c.background = BgWhite
}

pub fn (mut c ANSImessage) bold() {
	c.style = Bold
}

pub fn (mut c ANSImessage) underline() {
	c.style = Underline
}

pub fn (mut c ANSImessage) no_underline() {
	c.style = NoUnderline
}

pub fn (mut c ANSImessage) positive_text() {
	c.style = PositiveText
}

fn (mut c ANSImessage) reset() {
	c.style = Reset
}
