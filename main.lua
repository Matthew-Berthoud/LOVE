function love.load()
	x = 100
	y = 50
	move = true

	fruits = { "apple", "banana" }
	table.insert(fruits, "pear")
	table.insert(fruits, "pineapple")
	table.remove(fruits, 2)
	fruits[1] = "tomato"
end

function love.update(dt)
	if love.keyboard.isDown("right") then
		x = x + 100 * dt
	elseif love.keyboard.isDown("left") then
		x = x - 100 * dt
	elseif love.keyboard.isDown("down") then
		y = y + 100 * dt
	elseif love.keyboard.isDown("up") then
		y = y - 100 * dt
	end
end

function love.draw()
	love.graphics.rectangle("line", x, y, 200, 80)
	for i, frt in ipairs(fruits) do
		love.graphics.print(frt, x, y + 50 * i)
	end
end
