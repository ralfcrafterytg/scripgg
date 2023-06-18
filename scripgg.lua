keylogi = gg.prompt({ "🇰 🇪 🇾 " }, {}, { "text" })

function checkKey()
  local keys = {
    { key = "F84-UmFsZkNyYWZ0ZXI" },
    { key = "F84-RlVDS0lORyBGQVJMSUdIVA" }
  }
  
  local enteredKey = keylogi[1]
  local isKeyValid = false

  for _, k in ipairs(keys) do
    if k.key == enteredKey then
      isKeyValid = true
      break
    end
  end

  if isKeyValid then
    VALIDkey = "true"
  else
    os.exit(print("Invalid key. Script execution stopped."))
  end
end

checkKey()
