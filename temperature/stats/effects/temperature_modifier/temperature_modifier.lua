function init()
	script.setUpdateDelta(5)
	temperatureMod = effect.configParameter("tempModifier", 0) / effect.duration()
	self.tickTimer = 1
end

function update(dt)
	status.modifyResource("temperature", temperatureMod * dt)
	self.tickTimer = self.tickTimer - dt
	if self.tickTimer <= 0 then
	self.tickTimer = 5
    world.logInfo(status.resource("temperature").." Temperature after Effect")
		world.logInfo(tostring(temperatureMod * dt).." Effect Calculation")
  end
	
end

function uninit()

end