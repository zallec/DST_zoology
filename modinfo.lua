name = "zachs_mod"
description = "mod for enjoyers of animals"
author = "zallec"
version = "0.0.1"

forumthread = ""

-- xml and tex images
--icon_atlas = "icon.xml"
--icon = "icon.tex"

-- clients require mod?
all_clients_require_mod = true

-- client only mod?
client_only_mod = false

dst_compatible = true

dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

api_version = 10

configuration_options =
{
    {
        name = "Sidekick_Options",
        label = "Options",
        options =
        {
            {description = "Choice: None", data = 0},
            {description = "Choice: Kitty", data = 1},
            {description = "Choice: Koala", data = 2},
        },
        default = 1,
    },
}