#> lib:dialog/shop/add_buy/name.m
#
# アイテムの名前コンポーネントをそのまま使う場合など、そもそもで結果がテキストコンポーネントのもの
#
# @within function lib:dialog/shop/add_buy/

$data modify storage lib: Shop.BuyItemResult append value $(Name)
#data modify storage lib: Shop.BuyItemResult.extra set value {"extra":[{"text":" ×$(Count)"},{"text":"\n"}]}
$data modify storage lib: Shop.BuyItemResult append value {"text":" ×$(Count)\n"}
