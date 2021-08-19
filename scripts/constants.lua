local math = require("__flib__.math")

local constants = {}

constants.biter_virus_evolution_multiplier = 0.67

constants.inserter_drop_vectors = {
  [true] = {[0] = {0.01, -0.2}, [2] = {0.2, 0.01}, [4] = {-0.01, 0.2}, [6] = {-0.2, -0.01}}, -- Near lane
  [false] = { [0] = {0.0, 0.2}, [2] = {-0.2, 0.0}, [4] = {0.0, -0.2}, [6] = {0.2, 0.0}},  -- Far lane
}

constants.tesla_coil = {
  charging_rate = 3000000, -- 3 MW
  input_flow_limit = 18000000, -- 8 MW
  loss_multiplier = 1.5,
  required_energy = 10000000, -- 10 MW
  simultaneous_allowed = 4,
}

constants.virus_iteration_counts = {
  [1000] = 20,
  [5000] = 40,
  [10000] = 80,
  [20000] = 160,
  [30000] = 280,
  [40000] = 300,
  [50000] = 400,
  [math.max_int53] = 800,
}

return constants
