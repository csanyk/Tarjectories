///level_data_write(filename)

///write level data to map
global.level_data = ds_map_create();
//global.level
ds_map_add(global.level_data, "global.level", global.level);
with oPlanet
{
    //planet.x
    ds_map_add(global.level_data, string(id)+".x", x);
    //planet.y
    ds_map_add(global.level_data, string(id)+".y", y);
    //radius
    ds_map_add(global.level_data, string(id)+".radius", radius);
    //spin
    ds_map_add(global.level_data, string(id)+".spin", spin);
    //g_force
    ds_map_add(global.level_data, string(id)+".g_force", g_force);
    //color
    ds_map_add(global.level_data, string(id)+".color", color);

    //target t_angle
    for (var i = 0; i< targets_number; i++)
    {
        ds_map_add(global.level_data, string(id)+".target["+string(i)+"]", target[i].t_angle);
    }
}

level_data_string = json_encode(global.level_data);

//Create or open filename for editing
var level_data_file = file_text_open_append(working_directory + "level_data.json");
file_text_write_string(level_data_file, level_data_string);
file_text_writeln(level_data_file);
file_text_close(level_data_file);
