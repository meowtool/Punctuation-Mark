open location "x-apple.systempreferences:com.apple.Keyboard-Settings.extension"
delay 1
try
	tell application "System Events"
		tell process "System Settings"
			tell window "�L�[�{�[�h"
				tell group 1
					tell splitter group 1
						tell group 2
							tell group 1
								tell scroll area 1
									tell UI element 4
										tell button 1
											delay 1
											click (*|�ҏW...|*)
											(*generate sheet 1*)
											delay 2.5
											display dialog "Select '���{��-���[�}������' and Select Mode" with title "Punctuation Mode" buttons {"�B& �A", "�B& ,", ". & ,"} default button 1
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
										click (*'��Ǔ_�̎��:'*)
										tell menu 1
											if btn = ". & ," then
												tell menu item ". �� ,"
													click
												end tell
											else if btn = "�B& ," then
												tell menu item "�B�� ,"
													click
												end tell
											else --if btn = "�B& �A" then
												tell menu item "�B�� �A"
													click
												end tell
											end if
										end tell
										
									end tell
									
								end tell
								
								tell UI element 3
									click (*|����|*)
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
	display dialog "please confirm '���{��-���[�}������' is selected  and try again" with title "Error"
end try