do
-- Will leave the group if be added
local function run(msg, matches)
local bot_id = 104700910 -- your bot id
   -- like local bot_id = 1234567
    if matches[1] == 'left' and is_sudo(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
       send_large_msg("chat#id"..msg.to.id, 'یعنی مردم از خنده کیر شدی گوساله گاو کیرم دهنت کونی گاو بگیرم بگامت؟کونی سگ پدر کس پدر', ok_cb, false)
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^[!/](left)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end

