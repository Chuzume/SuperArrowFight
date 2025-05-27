#> asset:object/abstract.gravity_projectile/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/_alias/abstract.gravity_projectile/hit

# フェイルセーフ用の消える処理
    execute on vehicle run kill @s

# マーカーを消す処理
    kill @s
