local r1, r2

local function checkCollision(a, b)
	local a_left = a.x
	local a_right = a.x + a.width
	local a_top = a.y
	local a_bottom = a.y + a.height
	local b_left = b.x
	local b_right = b.x + b.width
	local b_top = b.y
	local b_bottom = b.y + b.height
	--If Red's right side is further to the right than Blue's left side.
	--and Red's left side is further to the left than Blue's right side.
	--and Red's bottom side is further to the bottom than Blue's top side.
	--and Red's top side is further to the top than Blue's bottom side then..
	--There is collision!
	--If one of these statements is false, return false.
	if a_right > b_left and a_left < b_right and a_bottom > b_top and a_top < b_bottom then
		return true
	end
	return false
end

function love.load()
	r1 = {
		x = 10,
		y = 100,
		width = 100,
		height = 100,
	}
	r2 = {
		x = 250,
		y = 120,
		width = 150,
		height = 120,
	}
end

function love.update(dt)
	r1.x = r1.x + 100 * dt
end

function love.draw()
	local mode
	if checkCollision(r1, r2) then
		mode = "fill"
	else
		mode = "line"
	end

	love.graphics.rectangle(mode, r1.x, r1.y, r1.width, r1.height)
	love.graphics.rectangle(mode, r2.x, r2.y, r2.width, r2.height)
end
