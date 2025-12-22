function love.load()
	listOfRectangles = {}
end

function createRect()
	local rect = {}
	rect.x = 100
	rect.y = 100
	rect.width = 70
	rect.height = 90

	rect.speed = 100
	table.insert(listOfRectangles, rect)
end

function love.keypressed(key)
	if key == "space" then
		createRect()
	end
end

function love.update(dt)
	for _, rect in ipairs(listOfRectangles) do
		if love.keyboard.isDown("right") then
			rect.x = rect.x + rect.speed * dt
		elseif love.keyboard.isDown("left") then
			rect.x = rect.x - rect.speed * dt
		elseif love.keyboard.isDown("down") then
			rect.y = rect.y + rect.speed * dt
		elseif love.keyboard.isDown("up") then
			rect.y = rect.y - rect.speed * dt
		end
	end
end

function love.draw()
	for _, rect in ipairs(listOfRectangles) do
		love.graphics.rectangle("line", rect.x, rect.y, rect.width, rect.height)
	end
end
