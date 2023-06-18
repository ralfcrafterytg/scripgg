keylogi = gg.prompt({ "🇰 🇪 🇾 " }, {}, { "text" })

function checkKey()
  local keys = {
    { key = "F84-UmFsZkNyYWZ0ZXI" },
    { key = "F84-RlVDS0lORyBGQVA" },
    { key = "F84-HAHvv70cAevSQCQgU" },
    { key = "F84-HAHvv717JvUww7dQ" },
    { key = "F84-SlNIU0JTTlNT" },
    { key = "F84-HSBSBSJJSNNSNNSN" },
    { key = "F84-HSNWIHS87H7" },
    { key = "F84-HSBBS727HS8" },
    { key = "F84-HSHSBjjsJsJ83" },
    { key = "F84-HSBS72gjOKhgF" },
    { key = "F84-USHSB76HSJ7" },
    { key = "F84-HDBDN73BSNSB" },
    { key = "F84-HSHSBH86HHhkwU" },
    { key = "F84-HHSHSUWJHS7Hg91HH" },
    { key = "F84-HSBSBBSBNSNSNSNSJWOQP" },
    { key = "F84-HSHWILQPjsJwK7" },
    { key = "F8-PERMHAJWI6KWP" }, --PERMANENT KEY
    { key = "F84-PERMHSJWJW8U1AZ" }, --PERMANENT KEY
    { key = "F84-TElGRVRJTUU" } --PERMANENT KEY
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
