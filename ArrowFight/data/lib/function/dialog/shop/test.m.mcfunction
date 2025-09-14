#> lib:dialog/shop/test.m
#
# 
#
# @within function lib:dialog/shop/test

$dialog show @s {"type":"minecraft:notice","title":{"text":"HogeHoge"},"body":$(Body)}
#$say dialog show @s {"type":"minecraft:notice","title":{"text":"HogeHoge"},"body":$(body)}

# リセット
    data remove storage lib: Dialog
