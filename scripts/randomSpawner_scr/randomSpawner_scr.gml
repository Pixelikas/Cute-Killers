randomize();
var rand_number = irandom(_spawn_quantity-1);
var _flag2 = true;
var spawner;
for (var j = 0; j < _spawn_quantity; j++) {
    if rand_number == j {
        if !_used_spawner[j] {
            spawner = SpawnController_obj._spawner_array[j];
            _used_spawner[j] = true;
        } else {
            for (var k = 0; k < _spawn_quantity; k++) {
                if !_used_spawner[k] && _flag2 {
                    spawner = SpawnController_obj._spawner_array[k];
                    _used_spawner[k] = true;
                    _flag2 = false;
                }
            }
        }
    }
}
return spawner;
