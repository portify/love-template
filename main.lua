function love.load()
  love.graphics.setNewFont(48)
  love.graphics.setBackgroundColor(50, 40, 40)
  love.graphics.setColor(60, 200, 100)
  love.graphics.setLineWidth(4)
end

function love.draw()
  local font = love.graphics.getFont()
  local text = "Ready for action"

  local textW = font:getWidth(text)
  local textH = font:getHeight()

  local textX = love.graphics.getWidth()  * 0.5 - textW * 0.5
  local textY = love.graphics.getHeight() * 0.5 - textH * 0.5

  love.graphics.print(text, textX, textY)
  love.graphics.rectangle("line",
    textX - 24, textY - 24,
    textW + 48, textH + 48)
end
