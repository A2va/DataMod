execute if entity @s[nbt={SelectedItem:{tag:{Magnet:0}}}] run function datamod:magnet/on
execute if entity @s[nbt={SelectedItem:{tag:{Magnet:1}}}] unless entity @s[nbt={SelectedItem:{tag:{MagnetWasActivate:1}}}] run function datamod:magnet/off
data remove entity @s SelectedItem.tag.MagnetWasActivate