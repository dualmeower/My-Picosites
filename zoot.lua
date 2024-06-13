--[[pod_format="raw",created="2024-06-13 00:42:36",modified="2024-06-13 00:42:36",revision=0]]
--[[	Thanks for using PicoNet Sitebuilder! I look forward
	to seeing your picosite! In order to make this available
	on PicoNet Explorer, you'll need to upload this lua file
	somewhere on the internet that you can get a link to it.
	Then, you'll want to go to the following thread:
	
		https://www.lexaloffle.com/bbs/?tid=140960
	
	and post your link based on the format provided there.
	it's  very possible that this format could change slightly
	and so I will not be listing that here just yet.
]]

	p = {
	title="untitled_page ",
	g=create_gui({
		x=0,y=0,
		width=300,height=300,
		fgcol = 0x090d
	}),
	copybuttons = {},
	init = function(self,explorer)
		local page = self
		add(self.copybuttons, self.g:attach({
			x=131.0, y=89.0, width=24, height=24,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard("--[[pod,pod_type=\"image\"]]unpod(\""..page.image2_raw.."\")")
					notify("image userdata added to clipboard")
				end
			end
		}))
	end,
	get_gui = function(self,explorer)
		return self.g
	end,
	draw = function(self,explorer)
		cls(0)
		palt(0)
		palt(0, true)
		sspr(self.image2, 0, 0, 16,16,131.0,89.0,24,24)
		palt()
		
	end,
	update = function(self,explorer)
		
	end,
	image2_raw = "b64:bHo0ADIAAABCAAAA-wZweHUAQyAQEAQAPFA8AAw_DDAMPhwGAATwB2ww-BoRPBF8ETwR-AcB-ABx-AQA3AA=",
	image2 = unpod("b64:bHo0ADIAAABCAAAA-wZweHUAQyAQEAQAPFA8AAw_DDAMPhwGAATwB2ww-BoRPBF8ETwR-AcB-ABx-AQA3AA=")
}