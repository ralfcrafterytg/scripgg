
KEYRS_1 ="F84-UmFsZkNyYWZ0ZXI"
KEYRS_2 ="F84-RlVDS0lORyBGQVJMSUdIVA"


function PASH()

Result = gg.prompt({"🇰 🇪 🇾 "},{[1] = "🇰 🇪 🇾"},{"text"})
if Result[1] == nil or Result[1] == "🇰 🇪 🇾" then else

  -----KEY IF
if Result[1] == KEYRS_1
or
Result[1] == KEYRS_2



    
then 
gg.toast("KEY CORRECT✔") 
else
RALF = gg.alert("   ⚠WRONG KEY⚠  ","TRY AGAIN","EXIT")
if RALF == 1 then PASH() end
if RALF == 2 then os.exit() end
return
end
end

end
