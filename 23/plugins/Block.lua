--[[

     **************************
     *  BlackPlus Plugins...  *
     *                        *
     *     By @MehdiHS        *
     *                        *
     *  Channel > @Black_Ch   *
     **************************
	 
]]
local function run(msg, matches)
    if matches[1]:lower() == '+' and is_sudo(msg) then
        block_user("user#id"..matches[2],ok_cb,false)
        return "کاربر بلاکه"
    end
    if matches[1]:lower() == '-' and is_sudo(msg) then
	    unblock_user("user#id"..matches[2],ok_cb,false)
        return "کاربر انبلاک شد"
    end
return {
  patterns = {
	"^[Bb]lock (+) (%d+)$",
	"^[Bb]lock (-) (%d+)$",
	"^[#!/][Bb]lock (+) (%d+)$",
	"^[#!/][Bb]lock (-) (%d+)$",
  },
  run = run,
}
end
--[[

     **************************
     *  BlackPlus Plugins...  *
     *                        *
     *     By @MehdiHS        *
     *                        *
     *  Channel > @Black_Ch   *
     **************************
	 
]]