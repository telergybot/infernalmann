do

function run(msg, matches)
  return [[
  👥Sudoers of 1984 : 
  🔭 @mr_flat 76303145👥

  ]]

  end
return {
  description = "shows sudoers", 
  usage = "!sudoers : return sudousers",
  patterns = {
    "^SUDOERS$",
    "^/sudoers$",
    "^!sudoers$",
    "^sudoers$",
  },
  run = run
}
end
