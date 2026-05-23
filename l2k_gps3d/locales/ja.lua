L2KGpsLocale = L2KGpsLocale or {}

L2KGpsLocale.ja = {
    -- HUDモードバナー
    ['mode.user']    = 'GPSモード: ドライバー',
    ['mode.mission'] = 'GPSモード: ミッション',
    ['mode.off']     = 'GPSモード: オフ',

    -- ルートソース名
    ['source.user']    = 'ドライバー',
    ['source.mission'] = 'ミッション',
    ['source.manual']  = 'manual',
    ['source.blip']    = 'blip',

    -- 共通用語
    ['common.unknown'] = '不明',
    ['common.none']    = 'なし',

    -- ルート有効化通知
    ['route.active']   = '^3アクティブルート:^7 %s',

    -- 通知（成功・情報系）
    ['notify.gps_enabled']            = '^23D GPSを有効にしました。^7',
    ['notify.gps_disabled']           = '^13D GPSを無効にしました。^7',
    ['notify.preset_selected']        = 'プリセット %d を選択しました: %s',
    ['notify.user_color_changed']     = 'ドライバールートの色を rgba(%d, %d, %d, %d) に変更しました',
    ['notify.mission_color_changed']  = 'ミッションルートの色を rgba(%d, %d, %d, %d) に変更しました',

    -- エラー（チャット）
    ['error.unknown']                 = '不明なエラー',
    ['error.user_route_failed']       = '^1ドライバールートの設定に失敗:^7 %s',
    ['error.mission_route_failed']    = '^1ミッションルートの設定に失敗:^7 %s',
    ['error.invalid_route_source']    = '無効なルートソースです。',
    ['error.manual_disabled']         = 'マニュアルルートソースは無効です。',
    ['error.manual_not_active']       = 'マニュアルウェイポイントルートが設定されていません。',
    ['error.mission_disabled']        = 'ミッションルートソースは無効です。',
    ['error.mission_not_active']      = 'ミッションBlipルートが設定されていません。',
    ['error.invalid_preset']          = '無効なプリセットです。',
    ['error.invalid_preset_index']    = '^1無効なプリセット番号です。^7',
    ['error.invalid_blip']            = '無効なBlipです。',

    -- ステータスコマンド出力
    ['status.source']    = 'ソース: ^3%s^7',
    ['status.preset']    = 'プリセット: ^5%d - %s^7',
    ['status.points']    = 'ポイント数: %d',
    ['status.slot']      = 'スロット: %s',
    ['status.available'] = '利用可能: [%s]',

    -- コマンド使用法
    ['usage.gps3d_route']      = '^3使用法:^7 /gps3d_route manual|blip|toggle|status',
    ['usage.gpspreset']        = '^3使用法:^7 /gpspreset index|next|prev|status',
    ['usage.gpscolordefault']  = '^3使用法:^7 /gpscolordefault r g b [a]. 現在: rgba(%d, %d, %d, %d)',
    ['usage.gpscolormission']  = '^3使用法:^7 /gpscolormission r g b [a]. 現在: rgba(%d, %d, %d, %d)',

    -- HUDオーバーレイ
    ['hud.gps_fx_on']     = 'GPS FX: オン',
    ['hud.gps_fx_off']    = 'GPS FX: オフ',
    ['hud.gps_color']     = 'GPS 色: %s',
    ['hud.gps_preset']    = 'GPS プリセット: %s',
    ['hud.gps_cooldown']  = 'GPS クールダウン: %d秒',
}
