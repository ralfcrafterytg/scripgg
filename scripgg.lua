gg.alert("ha")
local keys = {
  { key ="F84-UmFsZkNyYWZ0ZXI" },
  { key ="F84-RlVDS0lORyBGQVJMSUdIVA" }
}

keylogi = gg.prompt({ "🇰 🇪 🇾 " }, {}, { "text" })

function checkKey()
  local enteredKey = keylogi[1]
  local isKeyValid = false

  for _, k in ipairs(keys) do
    if k.key == enteredKey then
      isKeyValid = true
      break
    end
  end

  if isKeyValid then
    HOME()
  else
    os.exit(print("Invalid key. Script execution stopped."))
  end
end

checkKey()
