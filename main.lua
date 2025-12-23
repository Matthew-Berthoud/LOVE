local myImage

function love.load()
	myImage = love.graphics.newImage("static/sheep.png")
	love.graphics.setBackgroundColor(1, 1, 1)
end

function love.draw()
	love.graphics.setColor(255 / 255, 200 / 255, 40 / 255, 127 / 255)
	love.graphics.draw(myImage, 100, 100)
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(myImage, 200, 100)
end
