local lapis = require("lapis")
local app = lapis.Application()
app:enable("etlua")
app.layout = require "views.themes.AdminLTE2.default"
-- Load some components
app:before_filter(function(self)
  -- This load a custom element or the default element
  -- views.element.footer
  -- or
  -- views.themes.AdminLTE2.element.footer
  self.element = function(self, fn, element)
    status, result = pcall(function()
      return fn("views." .. element)
    end)
    if not status then
      return fn("views.themes.AdminLTE2." .. element)
    end
    return result
  end
end)
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
