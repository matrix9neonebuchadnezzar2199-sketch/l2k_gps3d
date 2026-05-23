# l2k_gps3d

2 種類のルートソースに対応した 3D GPS リボン描画リソースです。

- `USER` = プレイヤーのウェイポイント
- `MISSION` = 他スクリプトが有効にしたルート付き blip

`multi` はデフォルトで無効です。`Config.routeSources.multi = false` のときは無視されます。

ジオアニメーションモジュールは本リソースに同梱されています。別リソース `l2k_geoanim` は不要です。

## コマンド

- `/gps3d`
  3D GPS の ON / OFF。

- `/gps3d_route manual`
  `USER` モードを強制する。

- `/gps3d_route blip`
  ルート付き blip がある場合に `MISSION` モードを強制する。

- `/gps3d_route toggle`
  `USER` と `MISSION` を切り替える。

- `/gps3d_route status`
  現在のソース、プリセット、ルート状態を表示する。

- `/gpspreset index|next|prev|status`
  現在のリボンプリセットを変更または確認する。

- `/gpscolordefault r g b [a]`
  `USER` ルートの色を設定する。

- `/gpscolormission r g b [a]`
  `MISSION` ルートの色を設定する。

- `/geoanim`
- `/geoanim on`
- `/geoanim shutdown`
- `/geoanim off`
- `/geoanim status`
  必要に応じて同梱 AR アニメーションモジュールを手動制御する。

## ショートカット

すべて許可車両内でのみ有効です。config で無効化できます。

- `SHIFT + UP`
  `USER` と `MISSION` を切り替える。
- `SHIFT + E`
  現在のルートソースの色をサイクルする。
- `SHIFT + LEFT / RIGHT`
  リボンプリセットをサイクルする。
- `SHIFT + DOWN`
  3D GPS を切り替える（再有効化時はクールダウン付き）。
- `SHIFT + K`
  GPS モード変更用の追加ジオアニメーションを切り替える。ワンショットイントロをリセットし、後から再表示できる。

## プリセット

プリセットはリボンスタイルのみを変更します。

- テクスチャディクショナリ
- テクスチャ名

`USER` と `MISSION` に設定した色は上書きしません。

## 外部 Blip の取得

他スクリプトが既に次を実行している場合:

```lua
local blip = AddBlipForCoord(x, y, z)
SetBlipRoute(blip, true)
```

次の設定が有効なら `l2k_gps3d` がそのルートを自動取得できます。

```lua
Config.enableExternalBlipRouteCapture = true
```

## ルート安全性

`l2k_gps3d` は非侵襲的に設計されています。

- ゲーム内に既に存在するルートを読み取るだけです。
- 外部のウェイポイントやミッションルートの作成は所有しません。
- 外部のルート付き blip は消しません。
- 他スクリプトの GPS ロジックを更新・再構築しません。
- 3D リボンがどの利用可能ルートを追うかだけを決定します。

つまり他リソースは次を引き続き担当できます。

- `SetBlipRoute(blip, true)`
- ウェイポイント作成
- ミッションフロー
- 配送フロー
- レースチェックポイント

`l2k_gps3d` はその上に 3D ビジュアルレイヤーを重ねるだけです。

## Exports

### `SetEnabled(enabled)`

```lua
exports.l2k_gps3d:SetEnabled(true)
```

### `SetActiveRouteSource(source)`

```lua
exports.l2k_gps3d:SetActiveRouteSource('manual')
exports.l2k_gps3d:SetActiveRouteSource('blip')
```

### `SetTrackedBlip(blip)`

```lua
exports.l2k_gps3d:SetTrackedBlip(blip)
```

### `ClearTrackedBlip()`

```lua
exports.l2k_gps3d:ClearTrackedBlip()
```

### `SetRoutePreset(index)`

```lua
exports.l2k_gps3d:SetRoutePreset(2)
```

### `SetDefaultRouteColor(r, g, b, a)`

```lua
exports.l2k_gps3d:SetDefaultRouteColor(255, 255, 255, 205)
```

### `SetMissionRouteColor(r, g, b, a)`

```lua
exports.l2k_gps3d:SetMissionRouteColor(255, 214, 64, 215)
```

### 同梱 GeoAnim Exports

いずれも同一リソース `l2k_gps3d` から公開されます。

```lua
exports.l2k_gps3d:PlayProfile('on', vehicle)
exports.l2k_gps3d:PlayProfile('on_fast', vehicle)
exports.l2k_gps3d:PlayProfile('off', vehicle)
exports.l2k_gps3d:StopExtraAnimations()
```

## 注意事項

- 外部 blip ルートは本リソースではクリアしません。
- ルート系コマンドとショートカットは 3D リボン・色・プリセット・同梱ビジュアル効果のみに影響します。
- ボートと飛行機クラスはデフォルトで無視されます。
- リボンは速度ベースのサンプリングと距離上限で、高速時の負荷を抑えます。
- 初回の大型 GPS イントロは 1 回のみ再生され、以降の有効化では `on_fast` プロファイルを使用します。`SHIFT + K` でリセットできます。

## クレジット

本リソースをベースに独自プロジェクトを作成する場合は、オリジナルプロジェクトおよび作者へのクレジットを目に見える形で記載してください。歓迎します。
