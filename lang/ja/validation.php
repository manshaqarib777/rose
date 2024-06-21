<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | following language lines contain default error messages used by
    | validator class. Some of these rules have multiple versions such
    | as size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted'             => ':プロパティ 受け入れなければならない.',
    'active_url'           => ':プロパティ は有効な URL ではありません.',
    'after'                => ':プロパティ :date 以降の日付である必要があります.',
    'after_or_equal'       => ':プロパティ :date以降の日付である必要があります.',
    'alpha'                => ':プロパティ 文字のみを含めることができます.',
    'alpha_dash'           => ':プロパティ 文字、数字、ダッシュのみを含めることができます。',
    "ascii_only"           => ":プロパティ 文字、数字、ダッシュのみを含めることができます。",
    'alpha_num'            => ':プロパティ 文字と数字のみを含めることができます。',
    'array'                => ':プロパティ 配列でなければなりません。',
    'before'               => ':プロパティ :date より前の日付である必要があります。',
    'before_or_equal'      => ':プロパティ :date 以前の日付である必要があります。',
    'between'              => [
        'numeric' => ':プロパティ :min と :max の間である必要があります。',
        'file'    => ':プロパティ :min ～ :max キロバイトの範囲内である必要があります。',
        'string'  => ':プロパティ :min 文字と :max 文字の間である必要があります。',
        'array'   => ':プロパティ :min と :max の間の項目が必要です。',
    ],
    'boolean'              => ':プロパティ フィールドは true または false である必要があります。',
    'confirmed'            => ':プロパティ 確認が一致しません。',
    'date'                 => ':プロパティ は有効な日付ではありません。',
    'date_format'          => ':プロパティ 形式:format と一致しません。',
    'different'            => ':プロパティ と :other は異なっていなければなりません。',
    'digits'               => ':プロパティ :digits 数字である必要があります。',
    'digits_between'       => ':プロパティ :min と :max の数字の間である必要があります。',
    'dimensions'           => ':プロパティ 画像の寸法が無効です (:min_width x :min_height px)。',
    'distinct'             => ':プロパティ フィールドに重複した値があります。',
    'email'                => ':プロパティ 有効な電子メールアドレスでなければなりません。',
    'exists'               => 'selected :プロパティ 無効です。',
    'file'                 => ':プロパティ ファイルである必要があります。',
    'filled'               => ':プロパティ フィールドには値が必要です。',
    'gt'                   => [
        'numeric' => ':プロパティ :value より大きくなければなりません。',
        'file'    => ':プロパティ :value キロバイトより大きくなければなりません。',
        'string'  => ':プロパティ :value 文字より大きくなければなりません。',
        'array'   => ':プロパティ :value を超える項目が必要です。',
    ],
    'gte'                  => [
        'numeric' => ':プロパティ :value 以上である必要があります。',
        'file'    => ':プロパティ :value キロバイト以上である必要があります。',
        'string'  => ':プロパティ :value 文字以上である必要があります。',
        'array'   => ':プロパティ :value 項目以上が必要です。',
    ],
    'image'                => ':プロパティ 画像でなければなりません。',
    'in'                   => '選択された:プロパティ  は無効です。',
    'in_array'             => ':プロパティ :other にフィールドが存在しません。',
    'integer'              => ':プロパティ 整数でなければなりません。',
    'ip'                   => ':プロパティ 有効な IP アドレスである必要があります。',
    'ipv4'                 => ':プロパティ 有効な IPv4 アドレスである必要があります。',
    'ipv6'                 => ':プロパティ 有効な IPv6 アドレスである必要があります。',
    'json'                 => ':プロパティ 有効な JSON 文字列である必要があります。',
    'lt'                   => [
        'numeric' => ':プロパティ :value より小さくなければなりません。',
        'file'    => ':プロパティ :value キロバイト未満である必要があります。',
        'string'  => ':プロパティ :value 文字未満である必要があります。',
        'array'   => ':プロパティ :value 未満の項目が必要です。',
    ],
    'lte'                  => [
        'numeric' => ':プロパティ :value 以下である必要があります。',
        'file'    => ':プロパティ :value キロバイト以下である必要があります。',
        'string'  => ':プロパティ :value 文字以下である必要があります。',
        'array'   => ':プロパティ :value を超える項目を含めることはできません。',
    ],
    'max'                  => [
        'numeric' => ':プロパティ :max を超えることはできません。',
        'file'    => ':プロパティ :max キロバイトを超えることはできません。',
        'string'  => ':プロパティ :max 文字を超えることはできません。',
        'array'   => ':プロパティ :max を超える項目は含めることはできません。',
    ],
    'mimes'                => ':プロパティ タイプ: :values のファイルである必要があります。',
    'mimetypes'            => ':プロパティ タイプ: :values のファイルである必要があります。',
    'min'                  => [
        'numeric' => ':プロパティ 少なくとも :min である必要があります。',
        'file'    => ':プロパティ 少なくとも :min キロバイトである必要があります。',
        'string'  => ':プロパティ 少なくとも :min 文字でなければなりません。',
        'array'   => ':プロパティ 少なくとも :min 項目が必要です。',
    ],
    'not_in'               => '選択された:プロパティ  は無効です.',
    'not_regex'            => ':プロパティ 形式が無効です。',
    'numeric'              => ':プロパティ 数値でなければなりません。',
    'present'              => ':プロパティ フィールドが存在する必要があります。',
    'regex'                => ':プロパティ 形式が無効です。',
    'required'             => ':プロパティ フィールドは必須項目です。',
    'required_if'          => ':プロパティ :other が :value の場合、フィールドは必須です。',
    'required_unless'      => ':プロパティ :other が :values にない限り、フィールドは必須です。',
    'required_with'        => ':プロパティ :values が存在する場合、フィールドは必須です。',
    'required_with_all'    => ':プロパティ :values が存在する場合、フィールドは必須です。',
    'required_without'     => ':プロパティ :values が存在しない場合、フィールドは必須です。',
    'required_without_all' => ':プロパティ :value が存在しない場合、フィールドは必須です。',
    'same'                 => ':プロパティ と :other は一致する必要があります。',
    'size'                 => [
        'numeric' => ':プロパティ :size である必要があります。',
        'file'    => ':プロパティ :size キロバイトである必要があります。',
        'string'  => ':プロパティ :size 文字である必要があります。',
        'array'   => ':プロパティ :size 項目を含める必要があります。',
    ],
    'string'               => ':プロパティ 文字列である必要があります。',
    'timezone'             => ':プロパティ 有効なゾーンでなければなりません。',
    'unique'               => ':プロパティ すでに使用されている。',
    'uploaded'             => ':プロパティ アップロードに失敗しました。',
    'url'                  => ':プロパティ 形式が無効です。',
    "account_not_confirmed" => "あなたのアカウントは確認されていません。メールを確認してください",
  	"user_suspended"        => "あなたのアカウントは停止されました。エラーの場合はご連絡ください",
  	"letters"              => ":プロパティ 少なくとも 1 つの文字または数字を含める必要があります",
    'video_url'          => 'URL が無効ですは、Youtube と Vimeo のみをサポートします。',
    'update_max_length' => 'post は :max 文字を超えることはできません。',
    'update_min_length' => 'post は少なくとも :min 文字でなければなりません。',
    'video_url_required'   => '注目のコンテンツがビデオの場合、ビデオ URL フィールドは必須です。',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for プロパティs using the
    | convention "attribute.rule" to name lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'カスタムメッセージ',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation プロパティs
    |--------------------------------------------------------------------------
    |
    | following language lines are used to swap attribute place-holders
    | with something more reader friendly such as E-Mail Address instead
    | of "email". This simply helps us make messages a little cleaner.
    |
    */

    'attributes' => [
  		'agree_gdpr' => 'ボックス 個人データの処理に同意します',
      'agree_terms' => 'ボックス 利用規約に同意します',
      'agree_terms_privacy' => 'ボックス 利用規約とプライバシーポリシーに同意します',
  		'full_name' => 'フルネーム',
      'name' => '名前',
  		'username'  => 'ユーザー名',
      'username_email' => 'ユーザー名または電子メール',
  		'email'     => 'Eメール',
  		'password'  => 'パスワード',
  		'password_confirmation' => 'パスワードの確認',
  		'website'   => 'Webサイト',
  		'location' => '位置',
  		'countries_id' => '国',
  		'twitter'   => 'ツイッター',
  		'facebook'   => 'フェイスブック',
  		'google'   => 'グーグル',
  		'instagram'   => 'インスタグラム',
  		'comment' => 'コメント',
  		'title' => 'タイトル',
  		'description' => '説明',
      'old_password' => '以前のパスワード',
      'new_password' => '新しいパスワード',
      'email_paypal' => 'PayPalにメールで送信する',
      'email_paypal_confirmation' => 'PayPal 確認メールを送信する',
      'bank_details' => '銀行詳細',
      'video_url' => '動画のURL',
      'categories_id' => 'カテゴリー',
      'story' => '話',
      'image' => '画像',
      'avatar' => 'アバター',
      'message' => 'メッセージ',
      'profession' => '職業',
      'thumbnail' => 'サムネイル',
      'address' => '住所',
      'city' => '市',
      'zip' => '郵便/郵便番号',
      'payment_gateway' => 'ペイメントゲートウェイ',
      'payment_gateway_tip' => 'ペイメントゲートウェイ',
      'MAIL_FROM_ADDRESS' => 'メール返信なし',
      'FILESYSTEM_DRIVER' => 'ディスク',
      'price' => '価格',
      'amount' => '額',
      'birthdate' => '生年月日',
      'navbar_background_color' => 'ナビゲーションバーの背景色',
    	'navbar_text_color' => 'ナビゲーションバーのテキストの色',
    	'footer_background_color' => 'フッターの背景色',
    	'footer_text_color' => 'フッターのテキストの色',

      'AWS_ACCESS_KEY_ID' => 'Amazon Key', // Not necessary edit
      'AWS_SECRET_ACCESS_KEY' => 'Amazon Secret', // Not necessary edit
      'AWS_DEFAULT_REGION' => 'Amazon Region', // Not necessary edit
      'AWS_BUCKET' => 'Amazon Bucket', // Not necessary edit

      'DOS_ACCESS_KEY_ID' => 'DigitalOcean Key', // Not necessary edit
      'DOS_SECRET_ACCESS_KEY' => 'DigitalOcean Secret', // Not necessary edit
      'DOS_DEFAULT_REGION' => 'DigitalOcean Region', // Not necessary edit
      'DOS_BUCKET' => 'DigitalOcean Bucket', // Not necessary edit

      'WAS_ACCESS_KEY_ID' => 'Wasabi Key', // Not necessary edit
      'WAS_SECRET_ACCESS_KEY' => 'Wasabi Secret', // Not necessary edit
      'WAS_DEFAULT_REGION' => 'Wasabi Region', // Not necessary edit
      'WAS_BUCKET' => 'Wasabi Bucket', // Not necessary edit

      //===== v2.0
      'BACKBLAZE_ACCOUNT_ID' => 'Backblaze Account ID', // Not necessary edit
      'BACKBLAZE_APP_KEY' => 'Backblaze Master Application Key', // Not necessary edit
      'BACKBLAZE_BUCKET' => 'Backblaze Bucket Name', // Not necessary edit
      'BACKBLAZE_BUCKET_REGION' => 'Backblaze Bucket Region', // Not necessary edit
      'BACKBLAZE_BUCKET_ID' => 'Backblaze Bucket Endpoint', // Not necessary edit

      'VULTR_ACCESS_KEY' => 'Vultr Key', // Not necessary edit
      'VULTR_SECRET_KEY' => 'Vultr Secret', // Not necessary edit
      'VULTR_REGION' => 'Vultr Region', // Not necessary edit
      'VULTR_BUCKET' => 'Vultr Bucket', // Not necessary edit
  	],

];
