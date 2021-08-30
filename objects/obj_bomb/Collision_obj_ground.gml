instance_destroy() //Evita o bug de clip

if vspeed > 1 { vspeed *= -0.8 }
else { vspeed = gravity * -1 }

if hspeed > 1 { hspeed *= 0.5 }
else { hspeed = 0 }