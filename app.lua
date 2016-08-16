local lapis = require("lapis")
local app = lapis.Application()
app:enable("etlua")
app.layout = require "views.themes.AdminLTE2.default"

app:get("/", function()
  return "Welcome to Lapis " .. require("lapis.version")
end)

app:get("/index", function()
  return {
    render = "index"
  }
end)

app:get("/add", function()
  return {
    render = "add"
  }
end)

app:get("/login", function()
  app.layout = require "views.themes.AdminLTE2.login"
  return "Welcome to Lapis " .. require("lapis.version")
end)

return app
