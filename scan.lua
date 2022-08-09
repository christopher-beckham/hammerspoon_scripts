--[[
This function can only return windows in the current Mission Control Space; if you need to address windows across different Spaces you can use the hs.window.filter module
- if Displays have separate Spaces is on (in System Preferences>Mission Control) the current Space is defined as the union of all currently visible Spaces
- minimized windows and hidden windows (i.e. belonging to hidden apps, e.g. via cmd-h) are always considered to be in the current Space
]]

print("scanning for windows (incl. non-hidden) for all active spaces")
local all_windows = hs.window.allWindows()
for j=1,#all_windows do
   print("  " .. all_windows[j]:title())
   print("    app name: " .. hs.inspect(all_windows[j]:application():name()))
end
