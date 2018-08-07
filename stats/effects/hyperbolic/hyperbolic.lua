function init()
--  animator.setParticleEmitterOffsetRegion("glitch", mcontroller.boundBox())
--  animator.setParticleEmitterActive("glitch", true)
--  effect.setParentDirectives("fade=DDDDFF=0.5")
--  status.setResource("stunned", math.max(status.resource("stunned"), effect.duration()))
--  mcontroller.setVelocity({0, 0})
--  sb.logInfo("Hyperbolic Applied")
--  status.setResourcePercentage("health", 0)
--    effect.setParentDirectives("fade=FF0000;0.5?border=4;FF000020;FF000000")
    effect.setParentDirectives("hueshift=68?border=4;FF000020;FF000000")
end

function update(dt)
    if not self.messaged then
        world.sendEntityMessage(entity.id(), "setEnraged", true)
        self.messaged = true
    end
--  mcontroller.controlModifiers({
--      facingSuppressed = true,
--      movementSuppressed = true
--    })
end

function uninit()
    world.sendEntityMessage(entity.id(), "setEnraged", false)
end
