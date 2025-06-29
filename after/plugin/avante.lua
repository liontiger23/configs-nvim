require("avante").setup({
  provider = "ollamalocal",  -- Default provider
  providers = {
    --copilot = {},  -- Uses existing Copilot auth
    -- Default provider does not work (see https://github.com/yetone/avante.nvim/issues/2127)
    --ollama = {
    --  endpoint = "http://localhost:11434",
    --  model = "codellama:7b",  -- Good default for code
    --  -- Alternative models: "llama3:70b", "mixtral"
    --},
    ollamalocal = {
      __inherited_from = "openai",
      api_key_name = "",
      endpoint = "http://localhost:11434/v1",
      model = "qwen2.5-coder:7b",
      mode = "legacy",
      --disable_tools = true, -- Open-source models often do not support tools.
    },
  },
  behaviour = {
    enable_cursor_planning_mode = true,
  },
})
