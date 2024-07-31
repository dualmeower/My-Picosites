--[[pod_format="raw",created="2024-07-31 15:30:02",modified="2024-07-31 15:30:02",revision=0]]
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
			x=5.0, y=20.0, width=24, height=24,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard("--[[pod,pod_type=\"image\"]]unpod(\""..page.image2_raw.."\")")
					notify("image userdata added to clipboard")
				end
			end
		}))
		add(self.copybuttons, self.g:attach({
			x=49.0, y=22.0, width=24, height=24,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard("--[[pod,pod_type=\"image\"]]unpod(\""..page.image3_raw.."\")")
					notify("image userdata added to clipboard")
				end
			end
		}))
		add(self.copybuttons, self.g:attach({
			x=35.0, y=18.0, width=24, height=24,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard("--[[pod,pod_type=\"image\"]]unpod(\""..page.image4_raw.."\")")
					notify("image userdata added to clipboard")
				end
			end
		}))
		add(self.copybuttons, self.g:attach({
			x=146.0, y=64.0, width=24, height=24,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard("--[[pod,pod_type=\"image\"]]unpod(\""..page.image5_raw.."\")")
					notify("image userdata added to clipboard")
				end
			end
		}))
		add(self.copybuttons, self.g:attach({
			x=56.0, y=92.0, width=24, height=24,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard("--[[pod,pod_type=\"image\"]]unpod(\""..page.image8_raw.."\")")
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
		sspr(self.image2, 0, 0, 16,16,5.0,20.0,24,24)
		palt()
		palt(0)
		palt(0, true)
		sspr(self.image3, 0, 0, 16,16,49.0,22.0,24,24)
		palt()
		palt(0)
		palt(0, true)
		sspr(self.image4, 0, 0, 16,16,35.0,18.0,24,24)
		palt()
		palt(0)
		palt(0, true)
		sspr(self.image5, 0, 0, 16,16,146.0,64.0,24,24)
		palt()
		print("Picotron\nWorkstation\n ",97.0,75.0,7)
		print("$998.99 ",157.0,89.0,7)
		palt(0)
		palt(0, true)
		sspr(self.image8, 0, 0, 16,16,56.0,92.0,24,24)
		palt()
		print("PICO-8 Home\nComputer\n ",10.0,81.0,7)
		print("$332.99 ",67.0,114.0,7)
		print("Copyright 2024\nPico Industries\nLtd.,\n ",199.0,122,7)
		
	end,
	update = function(self,explorer)
		
	end,
	image2_raw = "b64:bHo0AC8AAAAzAAAA9AdweHUAQyAQEATnAOcA9xwvFwcAjBcuBQCQx3wAZ3wAFy4XBQCAxy73CwDnAOc=",
	image2 = unpod("b64:bHo0AC8AAAAzAAAA9AdweHUAQyAQEATnAOcA9xwvFwcAjBcuBQCQx3wAZ3wAFy4XBQCAxy73CwDnAOc="),
	image3_raw = "b64:bHo0ACAAAAAeAAAA8A9weHUAQyAQEATwVwjQCQcPD7AKJw8XsAsHAdAM8Eg=",
	image3 = unpod("b64:bHo0ACAAAAAeAAAA8A9weHUAQyAQEATwVwjQCQcPD7AKJw8XsAsHAdAM8Eg="),
	image4_raw = "b64:bHo0ACsAAAAxAAAA8QZweHUAQyAQEATwsCcABxAXEBcgBwACAGUgBxAHECcKAIAHIAcQFxAXIA==",
	image4 = unpod("b64:bHo0ACsAAAAxAAAA8QZweHUAQyAQEATwsCcABxAXEBcgBwACAGUgBxAHECcKAIAHIAcQFxAXIA=="),
	image5_raw = "b64:bHo0AG4AAAB_AAAA80FweHUAQyAQEAQA1xAHAAoLDAEPFw8PCAkKCwAHEAcIkAwHEAcOkAEHEAcPFwAHECcgDQcQBwGQDgcQBwALCQgODQEMCwoJAAcQ1yC3IBcGBwIARhcgBwYCACYXEBoA0CcQ1wBnFlcAZwsI9wc=",
	image5 = unpod("b64:bHo0AG4AAAB_AAAA80FweHUAQyAQEAQA1xAHAAoLDAEPFw8PCAkKCwAHEAcIkAwHEAcOkAEHEAcPFwAHECcgDQcQBwGQDgcQBwALCQgODQEMCwoJAAcQ1yC3IBcGBwIARhcgBwYCACYXEBoA0CcQ1wBnFlcAZwsI9wc="),
	image8_raw = "b64:bHo0ADMAAABFAAAA9wtweHUAQyAQEATwIPcBUJcABwAXAJdQ9woGBwIANzcGBwIAExcIAKAHBgcGBwb3AvAw",
	image8 = unpod("b64:bHo0ADMAAABFAAAA9wtweHUAQyAQEATwIPcBUJcABwAXAJdQ9woGBwIANzcGBwIAExcIAKAHBgcGBwb3AvAw")
}