KEYPS=[====[
KEYRS_1 ="F84-UmFsZkNyYWZ0ZXI"
KEYRS_2 ="F84-RlVDS0lORyBGQVJMSUdIVA"
]====]


WRIKEP=[====[
if Result[1] == KEYRS_1
or
Result[1] == KEYRS_2

then 
gg.toast("KEY CORRECT✔") 
else
RALF = gg.alert("   ⚠WRONG KEY⚠  ","TRY AGAIN","EXIT")
if RALF == 1 then goto meme end
if RALF == 2 then os.exit() end
return
end
]====]
