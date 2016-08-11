local lapis = require("lapis")
local app = lapis.Application()
app:enable("etlua")
app:get("/", function()
  app.layout = require "views.themes.AdminLTE2.default"
  return "Welcome to Lapis " .. require("lapis.version")
end)

app:get("/login", function()
  app.layout = require "views.themes.AdminLTE2.login"
  return "Welcome to Lapis " .. require("lapis.version")
end)

return app
