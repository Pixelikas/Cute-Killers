_spawn_quantity = instance_number(Spawn_obj);
_spawner_array[_spawn_quantity - 1] = 0;

for (var i = 0; i < _spawn_quantity; i++) {
    _spawner_array[i] = instance_find(Spawn_obj, i);
}

