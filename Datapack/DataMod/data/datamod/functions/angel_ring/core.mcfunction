execute if entity @s[nbt={SelectedItem:{tag:{AngelRing:0}}}] run function datamod:angel_ring/on
execute if entity @s[nbt={SelectedItem:{tag:{AngelRing:1}}}] unless entity @s[nbt={SelectedItem:{tag:{AngelRingWasActivate:1}}}] run function datamod:angel_ring/off
data remove entity @s SelectedItem.tag.AngelRingWasActivate