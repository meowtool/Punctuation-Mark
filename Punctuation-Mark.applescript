open location "x-apple.systempreferences:com.apple.Keyboard-Settings.extension"
delay 1
try
	tell application "System Events"
		tell process "System Settings"
			tell window "キーボード"
				tell group 1
					tell splitter group 1
						tell group 2
							tell group 1
								tell scroll area 1
									tell UI element 4
										tell button 1
											delay 1
											click (*|編集...|*)
											(*generate sheet 1*)
											delay 2.5
											display dialog "Select '日本語-ローマ字入力' and Select Mode" with title "Punctuation Mode" buttons {"。& 、", "。& ,", ". & ,"} default button 1
											set tmp to result
											set btn to button returned of tmp
										end tell
									end tell
								end tell
							end tell
						end tell
					end tell
				end tell
				tell sheet 1
					tell group 1
						tell splitter group 1
							tell group 2
								tell scroll area 1
									
									tell pop up button 6
										click (*'句読点の種類:'*)
										tell menu 1
											if btn = ". & ," then
												tell menu item ". と ,"
													click
												end tell
											else if btn = "。& ," then
												tell menu item "。と ,"
													click
												end tell
											else --if btn = "。& 、" then
												tell menu item "。と 、"
													click
												end tell
											end if
										end tell
										
									end tell
									
								end tell
								
								tell UI element 3
									click (*|完了|*)
								end tell
							end tell
						end tell
					end tell
				end tell
			end tell
		end tell
	end tell
	delay 1
	tell application "System Settings"
		activate
		quit
	end tell
	display dialog "Now Punctuation is  " & btn with title "Punctuation Mode"
on error
	display dialog "please confirm '日本語-ローマ字入力' is selected  and try again" with title "Error"
end try