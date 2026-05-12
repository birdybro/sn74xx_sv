# ttl_74x600 — dynamic memory refresh controller (transparent + burst)

State machine that drives `ras_n` low for a refresh cycle on each `refresh_req`,
incrementing an internal row counter. `burst=1` sweeps every row before returning
to idle.
