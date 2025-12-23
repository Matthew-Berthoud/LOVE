local Player = require("player")
local Enemy = require("enemy")

local player, enemy

function love.load()
	player = Player()
	enemy = Enemy()
	ListOfBullets = {}
end

function love.update(dt)
	player:update(dt)
	enemy:update(dt)

	for i, v in ipairs(ListOfBullets) do
		v:update(dt)
		v:checkCollision(enemy)

		if v.dead then
			table.remove(ListOfBullets, i)
		end
	end
end

function love.draw()
	player:draw()
	enemy:draw()

	for _, v in ipairs(ListOfBullets) do
		v:draw()
	end
end

function love.keypressed(key)
	player:keyPressed(key)
end
