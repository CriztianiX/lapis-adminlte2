local lapis = require("lapis")
local app = lapis.Application()
app:enable("etlua")
app:get("/", function()
  app.layout = require "views.layout"
  return "Welcome to Lapis " .. require("lapis.version")
end)

app:get("/login", function()
  app.layout = require "views.themes.login"
  return "Welcome to Lapis " .. require("lapis.version")
end)

return app
