<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted'             => ':속성을 허용해야 합니다.',
    'active_url'           => ':속성은 유효한 URL이 아닙니다.',
    'after'                => ':속성은 :date 이후의 날짜여야 합니다.',
    'after_or_equal'       => ':속성은 :date 이후의 날짜거나 또는 같아야 합니다.',
    'alpha'                => ':속성은 문자만 포함할 수 있습니다.',
    'alpha_dash'           => ':속성은 문자, 숫자, 대시만 포함될 수 있습니다.',
    "ascii_only"           => ":속성은 문자, 숫자, 대시만 포함될 수 있습니다.",
    'alpha_num'            => ':속성은 문자와 숫자만 포함할 수 있습니다.',
    'array'                => ':속성은 배열이어야 합니다.',
    'before'               => ':속성은 :date 이전 날짜여야 합니다.',
    'before_or_equal'      => ':속성은 :date 이전 또는 같은 날짜여야 합니다.',
    'between'              => [
        'numeric' => ':속성은 :min과 :max 사이에 있어야 합니다.',
        'file'    => ':속성은 :min에서 :max킬로바이트 사이여야 합니다.',
        'string'  => ':속성은 :min과 :max 문자 사이에 있어야 합니다.',
        'array'   => ':속성은 :min과 :max 아이템 사이의 항목이 있어야 합니다.',
    ],
    'boolean'              => ':속성 필드는 true 또는 false여야 합니다.',
    'confirmed'            => ':속성 확인이 일치하지 않습니다.',
    'date'                 => ':속성은 유효한 날짜가 아닙니다.',
    'date_format'          => ':속성은 :format 형식과 일치하지 않습니다.',
    'different'            => ':속성과 :other는 달라야 합니다.',
    'digits'               => ':속성은 :digits digits 숫자여야 합니다.',
    'digits_between'       => ':속성은 :min과 :max digits 숫자 사이에 있어야 합니다.',
    'dimensions'           => ':속성에 잘못된 이미지 크기가 있습니다. (:min_width x :min_height px).',
    'distinct'             => ':속성 필드에 중복된 값이 있습니다.',
    'email'                => ':속성은 유효한 이메일 주소여야 합니다.',
    'exists'               => '선택한 :속성이 잘못되었습니다.',
    'file'                 => ':속성은 파일이어야 합니다.',
    'filled'               => 'The :속성 필드에는 값이 있어야 합니다.',
    'gt'                   => [
        'numeric' => ':속성은 :value보다 커야 합니다.',
        'file'    => ':속성은 :value 킬로바이트 보다 커야 합니다.',
        'string'  => ':속성은 :value 문자 보다 커야 합니다.',
        'array'   => ':속성에 :value 아이템보다 많은 항목이 있어야 합니다.',
    ],
    'gte'                  => [
        'numeric' => ':속성은 :value보다 크거나 같아야 합니다.',
        'file'    => ':속성은 :value 킬로바이트 보다 크거나 같아야 합니다.',
        'string'  => ':속성은 :value 문자 보다 크거나 같아야 합니다.',
        'array'   => ':속성에 :value 아이템 이상이 있어야 합니다.',
    ],
    'image'                => ':속성은 이미지여야 합니다.',
    'in'                   => '선택한 :속성이 잘못되었습니다.',
    'in_array'             => ':속성 필드는 :other에 존재하지 않습니다.',
    'integer'              => ':속성은 정수여야 합니다.',
    'ip'                   => ':속성은 유효한 IP 주소여야 합니다.',
    'ipv4'                 => ':속성은 유효한 IPv4 주소여야 합니다.',
    'ipv6'                 => ':속성은 유효한 IPv6 주소여야 합니다.',
    'json'                 => ':속성은 유효한 JSON 문자열이어야 합니다.',
    'lt'                   => [
        'numeric' => ':속성은 :value보다 작아야 합니다.',
        'file'    => ':속성은 :value 킬로바이트 보다 작아야 합니다.',
        'string'  => ':속성은 :value 문자 보다 작아야 합니다.',
        'array'   => ':속성은 :value 아이템 보다 작아야 합니다.',
    ],
    'lte'                  => [
        'numeric' => ':속성은 :value보다 작거나 같아야 합니다.',
        'file'    => ':속성은 :value 킬로바이트보다 작거나 같아야 합니다.',
        'string'  => ':속성은 :value 문자 보다 작거나 같아야 합니다.',
        'array'   => ':속성은 :value 아이템을 초과할 수 없습니다.',
    ],
    'max'                  => [
        'numeric' => ':속성은 :max보다 클 수 없습니다.',
        'file'    => ':속성은 :max 킬로바이트 보다 클 수 없습니다.',
        'string'  => ':속성은 :max 문자를 초과할 수 없습니다.',
        'array'   => ':속성에 :max 아이템 이상의 항목이 있을 수 없습니다.',
    ],
    'mimes'                => ':속성은 :values 유형의 파일이어야 합니다.',
    'mimetypes'            => ':속성은 :values 유형의 파일이어야 합니다.',
    'min'                  => [
        'numeric' => ':속성은 최소한 :min 이상이어야 합니다.',
        'file'    => ':속성에 최소 :min 킬로바이트 이상이어야 합니다.',
        'string'  => ':속성에 :min 문자 이상이어야 합니다.',
        'array'   => ':속성에 최소한 :min 아이템이 있어야 합니다.',
    ],
    'not_in'               => ':선택한 속성이 잘못되었습니다.',
    'not_regex'            => ':속성 형식이 잘못되었습니다.',
    'numeric'              => ':속성은 숫자여야 합니다.',
    'present'              => ':속성 필드가 있어야 합니다.',
    'regex'                => ':속성 형식이 잘못되었습니다.',
    'required'             => ':속성 필드는 필수입니다.',
    'required_if'          => ':other가 :value인 경우 :속성 필드가 필요합니다.',
    'required_unless'      => ':other가 :values에 있지 않는 한 :속성 필드는 필수입니다.',
    'required_with'        => ':values가 있는 경우 :속성 필드가 필요합니다.',
    'required_with_all'    => ':values가 있는 경우 :속성 필드가 필요합니다.',
    'required_without'     => ':values가 없는 경우 :속성 필드가 필요합니다.',
    'required_without_all' => ':value가 하나도 없을 때 :속성 필드가 필요합니다.',
    'same'                 => ':속성과 :other가 일치해야 합니다.',
    'size'                 => [
        'numeric' => ':속성은 :size여야 합니다.',
        'file'    => ':속성은 size 킬로바이트 여야 합니다.',
        'string'  => ':속성은 :size 문자 여야 합니다.',
        'array'   => ':속성에는 :size 아이템이 포함되어야 합니다.',
    ],
    'string'               => '속성은 문자열이어야 합니다.',
    'timezone'             => ':속성은 유효한 영역이어야 합니다.',
    'unique'               => ':속성은 이미 사용되었습니다.',
    'uploaded'             => ':속성을 업로드하지 못했습니다.',
    'url'                  => ':속성 형식이 잘못되었습니다.',
    "account_not_confirmed" => "귀하의 계정이 확인되지 않았습니다. 이메일을 확인하세요.",
  	"user_suspended"        => "귀하의 계정이 정지되었습니다. 오류가 있으면 문의해 주세요.",
  	"letters"              => ":속성은 문자나 숫자를 하나 이상 포함해야 합니다.",
    'video_url'          => '잘못된 URL은 Youtube 및 Vimeo만 지원합니다.',
    'update_max_length' => '게시물은 최대 :max자를 초과할 수 없습니다.',
    'update_min_length' => '게시물은 최소 :min자 이상이어야 합니다.',
    'video_url_required'   => '추천 콘텐츠가 비디오인 경우 비디오 URL 필드가 필요합니다.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => '커스텀-메시지',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap attribute place-holders
    | with something more reader friendly such as E-Mail Address instead
    | of "email". This simply helps us make messages a little cleaner.
    |
    */

    'attributes' => [
  		'agree_gdpr' => '개인정보 처리에 동의합니다.',
      'agree_terms' => '이용약관에 동의합니다.',
      'agree_terms_privacy' => '이용약관 및 개인정보 보호정책에 동의합니다.',
  		'full_name' => '이름',
      'name' => '이름',
  		'username'  => '사용자 이름',
      'username_email' => '사용자 이름 또는 이메일',
  		'email'     => '이메일',
  		'password'  => '비밀번호',
  		'password_confirmation' => '비밀번호 확인',
  		'website'   => '웹사이트',
  		'location' => '위치',
  		'countries_id' => '국가',
  		'twitter'   => '트위터',
  		'facebook'   => '페이스북',
  		'google'   => '구글',
  		'instagram'   => '인스타그램',
  		'comment' => '댓글',
  		'title' => '제목',
  		'description' => '설명',
      'old_password' => '기존 비밀번호',
      'new_password' => '신규 비밀번호',
      'email_paypal' => '이메일 페이팔',
      'email_paypal_confirmation' => '이메일로 페이팔 확인',
      'bank_details' => '은행계좌 정보',
      'video_url' => '동영상 URL',
      'categories_id' => '카테고리',
      'story' => '스토리',
      'image' => '이미지',
      'avatar' => '아바타',
      'message' => '메시지',
      'profession' => '직업',
      'thumbnail' => '썸네일',
      'address' => '주소',
      'city' => '도시',
      'zip' => '우편/우편번호',
      'payment_gateway' => '결제 게이트웨이',
      'payment_gateway_tip' => '결제 게이트웨이',
      'MAIL_FROM_ADDRESS' => '이메일 no-reply',
      'FILESYSTEM_DRIVER' => '디스크',
      'price' => '가격',
      'amount' => '잔액',
      'birthdate' => '생년월일',
      'navbar_background_color' => '탐색바 배경색',
    	'navbar_text_color' => '탐색바 텍스트 색상',
    	'footer_background_color' => '바닥글 배경 색상',
    	'footer_text_color' => '바닥글 텍스트 색상',

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
