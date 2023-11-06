_spawn_quantity = SpawnController_obj._spawn_quantity;
_used_spawner[_spawn_quantity - 1] = false;

// reset the _used_spawner for the death respawns mid game
for (var idx=0; idx<_spawn_quantity; idx++){
    _used_spawner[idx] = false;
}
