# What we have to change?
# `Revolver` -> `[your own gun name]`

execute if data entity @s SelectedItem run give @s carrot_on_a_stick{display:{Name: "[{\"text\":\"Revolver\"}]"}}
execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name: "[{\"text\":\"Revolver\"}]"}}