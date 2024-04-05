--[[pod_format="raw",created="2024-04-05 20:26:23",modified="2024-04-05 20:26:23",revision=0]]
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
			x=102.0, y=66.0, width=24, height=24,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard("--[[pod,pod_type=\"image\"]]unpod(\""..page.image2_raw.."\")")
					notify("image userdata added to clipboard")
				end
			end
		}))
		add(self.copybuttons,self.g:attach({
			x=143.0, y=70.0, width=16, height=16,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard(pod({type="gif", w=16, h=16, frames=12, speed=1, clr=0, imgdata=page.gif3_gif_raw}))
					notify("gif added to clipboard")
				end
			end
		}))
		self.button4 = self.g:attach_button({
			x=129.0, y=93.0, width=42, height=13,
			label="button ",
			click=function()
				
			end
		})
	end,
	get_gui = function(self,explorer)
		return self.g
	end,
	draw = function(self,explorer)
		cls(0)
		palt(0)
		palt(0, true)
		sspr(self.image2, 0, 0, 24,24,102.0,66.0,24,24)
		palt()
		self.gif3:draw(143.0,70.0,16,16,1,0)
		print("select \"text\"\nunder \"edit\" ",76.0,110.0,7)
		rectfill(48.0,26.0,88.0,66.0,8)
		ovalfill(178.0,21.0,218.0,61.0,8)
		
	end,
	update = function(self,explorer)
		
	end,
	gif3_gif_raw = "b64:bHo0ALcBAAAQAwAA-AJweHUAQyDAEATwtD8WsE7ALgIA-wCgTpAOLw8ekA4tLqAOHR4EAA3-BYAOLS5wLi0OkB4tHpAeLQ4NgC4dBQAOACgA-wVwHi0ecH6AfoBugA4fIA4cDoAOHAYAD7ducH5gBR4cDhyAHhYADwYAHBFwPACAcAUOHA0MDYAHAAUgAD8uDC4EAAYVDjYAAAcAgS4MDqAuDB6QHgAfCQQACAE_AP8EHpAFLgmgBR4JDrAeCQ4FoB4JCgUADzEOBZAyAP8EFQ0ACQqQFQ0JCrAFDQrABQ0ZsAQAByAKsCkA8gTgDxkZCqALDQkNoA0ZsA0OGgmgBQBGCgkPFAwAFAgLAHAOGgmwDRnQMQDxBtANCQ0JGoAdGRpgDQ4JKpANChgJoAUAWwoJKAmQCgACBQDyEw4JKsAdGRqgDg0JCgQJgA4ZCgQJYA0OCggECZANCQgECaAGAG4KGAQLCZAMAAMGAAExABHAPgCCoA4LCgQLCoAHALBgDQAJBAsKkA0psAMAWQkICwmgCQAiKbAiABLAMAD1BqANACmQDQApcA0AKaAN4A3gDQAZsAYAwOANACnQDQApsA3wpQ==",
	image2_raw = "b64:bHo0AHUAAACIAAAA8B1weHUAQyAYGAT3VZ8gDccOhx23Dgd2DQcNpw4HJhMmDRcNlw4HFgMLAwEWPgoAsSMBNgcOlw4HJhFGCABBVi8QAQkAcwYINgwPDAwNAGIPDggmHBEMAEIaCBYxCgAiKgg1ACIGMQgAsJYHDpcOtw6X3vdV",
	image2 = unpod("b64:bHo0AHUAAACIAAAA8B1weHUAQyAYGAT3VZ8gDccOhx23Dgd2DQcNpw4HJhMmDRcNlw4HFgMLAwEWPgoAsSMBNgcOlw4HJhFGCABBVi8QAQkAcwYINgwPDAwNAGIPDggmHBEMAEIaCBYxCgAiKgg1ACIGMQgAsJYHDpcOtw6X3vdV"),
	gif3 = new_gif("b64:bHo0ALcBAAAQAwAA-AJweHUAQyDAEATwtD8WsE7ALgIA-wCgTpAOLw8ekA4tLqAOHR4EAA3-BYAOLS5wLi0OkB4tHpAeLQ4NgC4dBQAOACgA-wVwHi0ecH6AfoBugA4fIA4cDoAOHAYAD7ducH5gBR4cDhyAHhYADwYAHBFwPACAcAUOHA0MDYAHAAUgAD8uDC4EAAYVDjYAAAcAgS4MDqAuDB6QHgAfCQQACAE_AP8EHpAFLgmgBR4JDrAeCQ4FoB4JCgUADzEOBZAyAP8EFQ0ACQqQFQ0JCrAFDQrABQ0ZsAQAByAKsCkA8gTgDxkZCqALDQkNoA0ZsA0OGgmgBQBGCgkPFAwAFAgLAHAOGgmwDRnQMQDxBtANCQ0JGoAdGRpgDQ4JKpANChgJoAUAWwoJKAmQCgACBQDyEw4JKsAdGRqgDg0JCgQJgA4ZCgQJYA0OCggECZANCQgECaAGAG4KGAQLCZAMAAMGAAExABHAPgCCoA4LCgQLCoAHALBgDQAJBAsKkA0psAMAWQkICwmgCQAiKbAiABLAMAD1BqANACmQDQApcA0AKaAN4A3gDQAZsAYAwOANACnQDQApsA3wpQ==",12)
}