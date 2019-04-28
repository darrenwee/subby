local const = {
  log_prefix = "[subby] "
}

-- Logging facades
local function log_debug(message)
  vlc.msg.dbg(const.log_prefix .. message)
end

local function log_info(message)
  vlc.msg.info(const.log_prefix .. message)
end

local function log_warn(message)
  vlc.msg.warn(const.log_prefix .. message)
end

local function log_err(message)
  vlc.msg.err(const.log_prefix .. message)
end

function descriptor()
  return {
    title = "subby",
    version = "0.0.1",
    author = "darrenwee",
    url = "https://github.com/darrenwee/subby",
    shortdesc = "subby",
    description = "Extension to easily download subtitles from within VLC",
    capabilities = {"menu", "input-listener"},
  }
end


function activate()
  log_debug("subby has started!")
end

function deactivate()
  log_debug("subby is closing")
end

function close()
  vlc.deactivate()
end

function menu()
  return {"foo", "bar"}
end

function input_changed()

end
