#> lib:dialog/shop/add_buy/m
#
# 実はfallbackを名前指定につかっているインチキをしている
#
# @within function lib:dialog/shop/add_buy/

$data modify storage lib: Dialog.Shop.BuyResult append value {"translate":"$(Translate)","fallback":"$(Name)","extra":[{"text":" ×$(Count)"},{"text":"\n"}]}
