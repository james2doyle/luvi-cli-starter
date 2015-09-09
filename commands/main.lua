local prompt = require('prompt')(require('pretty-print'))
local exec = require('exec')

-- Takes a time struct with a date and time in UTC and converts it into
-- seconds since Unix epoch (0:00 1 Jan 1970 UTC).
-- Trickier than you'd think because os.time assumes the struct is in local time.
local function getdate()
  local t_secs = os.time() -- get seconds if t was in local time.
  local t = os.date("*t", t_secs) -- find out if daylight savings was applied.
  local t_UTC = os.date("!*t", t_secs) -- find out what UTC t was converted to.
  t_UTC.isdst = t.isdst -- apply DST to this time if necessary.
  local UTC_secs = os.time(t_UTC) -- find out the converted time in seconds.
  return {
    seconds = t_secs,
    offset = os.difftime(t_secs, UTC_secs) / 60
  }
end

-- helper for running command line tools
local function run(...)
  local stdout, stderr, code, signal = exec(...)
  if code == 0 and signal == 0 then
    return string.gsub(stdout, "%s*$", "")
  else
    return nil, string.gsub(stderr, "%s*$", "")
  end
end

-- a wrapper around prompt to show a confirm message
local function confirm(message)
  local res = prompt(message .. " (y/n)")
  return res and res:find("y")
end

local defaultName = run('whoami')
local defaultSystem = run('uname', '-s')

print(getdate().seconds)

local name = prompt('Your Name', defaultName)
local system = prompt('Your System Type', defaultSystem)

print(name, system)