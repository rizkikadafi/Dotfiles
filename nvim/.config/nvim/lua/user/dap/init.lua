local status_ok, dap = pcall(require, "dap")
if not status_ok then
	return
end

local dapui = require "dapui"
local dap_virtual_text = require "nvim-dap-virtual-text"
local fn = vim.fn

local dap_breakpoint = {
  error = {
    text = "🟥",
    texthl = "LspDiagnosticsSignError",
    linehl = "",
    numhl = "",
  },
  rejected = {
    text = "",
    texthl = "LspDiagnosticsSignHint",
    linehl = "",
    numhl = "",
  },
  stopped = {
    text = "⭐️",
    texthl = "LspDiagnosticsSignInformation",
    linehl = "DiagnosticUnderlineInfo",
    numhl = "LspDiagnosticsSignInformation",
  },
}

fn.sign_define("DapBreakPoint", dap_breakpoint.error)
fn.sign_define("DapStopped", dap_breakpoint.stopped)
fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)

dapui.setup {}
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

dap_virtual_text.setup {}

local function configure_debuggers()
  require "user.dap.config.python"
  require "user.dap.config.cpp"
end
configure_debuggers()
