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

'accepted' => ':คุณสมบัติคือ ต้องได้รับการยอมรับ',
'active_url' => ':คุณสมบัติคือ ไม่ใช่ URL ที่ถูกต้อง',
'after' => ':คุณสมบัติคือ ต้องเป็นวันที่หลังจาก :date',
'after_or_equal' => ':คุณสมบัติคือ ต้องเป็นวันที่หลังหรือเท่ากับ :date',
'alpha' => ':คุณสมบัติคือ สามารถมีตัวอักษรเท่านั้น',
'alpha_dash' => ':คุณสมบัติคือ สามารถมีตัวอักษรเพียงแค่ตัวอักษร ตัวเลข และเครื่องหมายขีดล่างเท่านั้น',
'ascii_only' => ':คุณสมบัติคือs สามารถมีตัวอักษรเพียงแค่ตัวอักษร ตัวเลข และเครื่องหมายขีดล่างเท่านั้น',
'alpha_num' => ':คุณสมบัติคือ สามารถมีตัวอักษรและตัวเลขเท่านั้น',
'array' => ':คุณสมบัติคือ ต้องเป็นอาร์เรย์',
'before' => ':คุณสมบัติคือ ต้องเป็นวันที่ก่อน :date',
'before_or_equal' => ':คุณสมบัติคือ ต้องเป็นวันที่ก่อนหรือเท่ากับ :date',
'between' => [
    'numeric' => ':คุณสมบัติคือ ต้องอยู่ระหว่าง :min และ :max',
    'file' => ':คุณสมบัติคือ ต้องอยู่ระหว่าง :min และ :max กิโลไบต์',
    'string' => ':คุณสมบัติคือ ต้องมีความยาวระหว่าง :min และ :max ตัวอักษร',
    'array' => ':คุณสมบัติคือ ต้องมีรายการระหว่าง :min และ :max รายการ',
],
'boolean' => ':คุณสมบัติคือ ต้องเป็นค่า true หรือ false เท่านั้น',
'confirmed' => 'การยืนยัน :คุณสมบัติคือ ไม่ตรงกัน',
'date' => ':คุณสมบัติคือ ไม่ใช่วันที่ที่ถูกต้อง',
'date_format' => ':คุณสมบัติคือ ไม่ตรงกับรูปแบบ :format',
'different' => ':คุณสมบัติคือ และ :other ต้องต่างกัน',
'digits' => ':คุณสมบัติคือ ต้องเป็นตัวเลข :digits หลัก',
'digits_between' => ':คุณสมบัติคือ ต้องเป็นตัวเลขที่มีจำนวนหลักระหว่าง :min และ :max หลัก',
'dimensions' => ':คุณสมบัติคือ มีขนาดรูปภาพที่ไม่ถูกต้อง (:min_width x :min_height พิกเซล)',
'distinct' => 'ฟิลด์ :คุณสมบัติคือ มีค่าที่ซ้ำกัน',
'email' => ':คุณสมบัติคือ ต้องเป็นที่อยู่อีเมลที่ถูกต้อง',
'exists' => ':คุณสมบัติคือ ที่เลือกไม่ถูกต้อง',
'file' => ':คุณสมบัติคือ ต้องเป็นไฟล์',
'filled' => 'ฟิลด์ :คุณสมบัติคือ ต้องมีค่า',
'gt' => [
    'numeric' => ':คุณสมบัติคือ ต้องมีค่ามากกว่า :value',
    'file' => ':คุณสมบัติคือ ต้องมีขนาดใหญ่กว่า :value กิโลไบต์',
    'string' => ':คุณสมบัติคือ ต้องมีความยาวมากกว่า :value ตัวอักษร',
    'array' => ':คุณสมบัติคือ ต้องมีรายการมากกว่า :value รายการ',
    ],
    'gte'                  => [
'numeric' => ':คุณสมบัติคือ ต้องมีค่ามากกว่าหรือเท่ากับ :value',
'file' => ':คุณสมบัติคือ ต้องมีขนาดมากกว่าหรือเท่ากับ :value กิโลไบต์',
'string' => ':คุณสมบัติคือ ต้องมีความยาวมากกว่าหรือเท่ากับ :value ตัวอักษร',
'array' => ':คุณสมบัติคือ ต้องมีรายการมากกว่า :value รายการ',
'image' => ':คุณสมบัติคือ ต้องเป็นรูปภาพ',
'in' => ':คุณสมบัติคือ ที่เลือกไม่ถูกต้อง',
'in_array' => 'ฟิลด์ :คุณสมบัติคือ ไม่มีอยู่ใน :other',
'integer' => ':คุณสมบัติคือ ต้องเป็นจำนวนเต็ม',
'ip' => ':คุณสมบัติคือ ต้องเป็นที่อยู่ IP ที่ถูกต้อง',
'ipv4' => ':คุณสมบัติคือ ต้องเป็นที่อยู่ IPv4 ที่ถูกต้อง',
'ipv6' => ':คุณสมบัติคือ ต้องเป็นที่อยู่ IPv6 ที่ถูกต้อง',
'json' => ':คุณสมบัติคือ ต้องเป็นสตริง JSON ที่ถูกต้อง',
'lt' => [
    'numeric' => ':คุณสมบัติคือ ต้องมีค่าน้อยกว่า :value',
    'file' => ':คุณสมบัติคือ ต้องมีขนาดน้อยกว่า :value กิโลไบต์',
    'string' => ':คุณสมบัติคือ ต้องมีความยาวน้อยกว่า :value ตัวอักษร',
    'array' => ':คุณสมบัติคือ ต้องมีรายการน้อยกว่า :value รายการ',
],
'lte' => [
    'numeric' => ':คุณสมบัติคือ ต้องมีค่าน้อยกว่าหรือเท่ากับ :value',
    'file' => ':คุณสมบัติคือ ต้องมีขนาดน้อยกว่าหรือเท่ากับ :value กิโลไบต์',
    'string' => ':คุณสมบัติคือ ต้องมีความยาวน้อยกว่าหรือเท่ากับ :value ตัวอักษร',
    'array' => ':คุณสมบัติคือ ไม่สามารถมีรายการเกิน :value รายการ',
],
'max' => [
    'numeric' => ':คุณสมบัติคือ ต้องไม่มีขนาดใหญ่กว่า :max',
    'file' => ':คุณสมบัติคือ ต้องไม่มีขนาดใหญ่กว่า :max กิโลไบต์',
    'string' => ':คุณสมบัติคือ ต้องไม่เกิน :max ตัวอักษร',
    'array' => ':คุณสมบัติคือ ต้องไม่มีรายการเกิน :max รายการ',
],
'mimes' => ':คุณสมบัติคือ ต้องเป็นไฟล์ประเภท :values',
'mimetypes' => ':คุณสมบัติคือ ต้องเป็นไฟล์ประเภท :values',
'min' => [
    'numeric' => ':คุณสมบัติคือ ต้องมีค่าอย่างน้อย :min',
    'file' => ':คุณสมบัติคือ ต้องมีขนาดอย่างน้อย :min กิโลไบต์',
    'string' => ':คุณสมบัติคือ ต้องมีความยาวอย่างน้อย :min ตัวอักษร',
    'array' => ':คุณสมบัติคือ ต้องมีรายการอย่างน้อย :min รายการ',
    ],
'not_in' => ':คุณสมบัติคือ ที่เลือกไม่ถูกต้อง',
'not_regex' => 'รูปแบบ :คุณสมบัติคือ ไม่ถูกต้อง',
'numeric' => ':คุณสมบัติคือ ต้องเป็นตัวเลข',
'present' => 'ฟิลด์ :คุณสมบัติคือ ต้องมีอยู่',
'regex' => 'รูปแบบ :คุณสมบัติคือ ไม่ถูกต้อง',
'required' => 'ฟิลด์ :คุณสมบัติคือ จำเป็น',
'required_if' => 'ถ้า :other เป็น :value, ฟิลด์ :คุณสมบัติคือ จำเป็น',
'required_unless' => 'ฟิลด์ :คุณสมบัติคือ จำเป็นนอกเหนือจาก :other อยู่ใน :values',
'required_with' => 'ฟิลด์ :คุณสมบัติคือ จำเป็นเมื่อ :values มีอยู่',
'required_with_all' => 'ฟิลด์ :คุณสมบัติคือ จำเป็นเมื่อ :values มีอยู่',
'required_without' => 'ถ้า :values ไม่มีอยู่, ฟิลด์ :คุณสมบัติคือ จำเป็น',
'required_without_all' => 'ฟิลด์ :คุณสมบัติคือ จำเป็นเมื่อไม่มี :value อยู่',
'same' => ':คุณสมบัติคือ และ :other ต้องตรงกัน',
'size' => [
    'numeric' => ':คุณสมบัติคือ ต้องเป็น :size',
    'file' => ':คุณสมบัติคือ ต้องมีขนาด :size กิโลไบต์',
    'string' => ':คุณสมบัติคือ ต้องมี :size ตัวอักษร',
    'array' => ':คุณสมบัติคือ ต้องมี :size รายการ',
],
'string' => ':คุณสมบัติคือ ต้องเป็นสตริง',
'timezone' => ':คุณสมบัติคือ ต้องเป็นโซนที่ถูกต้อง',
'unique' => ':คุณสมบัติคือ ถูกใช้ไปแล้ว',
'uploaded' => 'ไม่สามารถอัปโหลด :คุณสมบัติคือ ได้',
'url' => 'รูปแบบ :คุณสมบัติคือ ไม่ถูกต้อง',
'account_not_confirmed' => 'บัญชีของคุณยังไม่ได้รับการยืนยัน กรุณาตรวจสอบอีเมลของคุณ',
'user_suspended' => 'บัญชีของคุณได้รับการระงับ กรุณาติดต่อเราหากมีข้อผิดพลาด',
'letters' => ':คุณสมบัติคือ ต้องมีอักขระอย่างน้อยหนึ่งตัว',
'video_url' => 'URL ไม่ถูกต้อง รองรับเฉพาะ Youtube และ Vimeo เท่านั้น',
'update_max_length' => 'โพสต์ต้องไม่เกิน :max ตัวอักษร',
'update_min_length' => 'โพสต์ต้องมีความยาวอย่างน้อย :min ตัวอักษร',
'video_url_required' => 'หากเนื้อหาที่แนะนำเป็นวิดีโอ จำเป็นต้องมี URL วิดีโอ',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for คุณสมบัติคือs using the
    | convention "คุณสมบัติคือ.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given คุณสมบัติคือ rule.
    |
    */

    'custom' => [
        'คุณสมบัติคือ-name' => [
            'rule-name' => 'กำหนดเอง-ข้อความ',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation คุณสมบัติคือs
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap คุณสมบัติคือ place-holders
    | with something more reader friendly such as E-Mail Address instead
    | of "email". This simply helps us make messages a little cleaner.
    |
    */

    'คุณสมบัติคือs' => [
'agree_gdpr' => 'ฉันยอมรับการประมวลผลข้อมูลส่วนบุคคล',
'agree_terms' => 'ฉันยอมรับเงื่อนไข',
'agree_terms_privacy' => 'ฉันยอมรับข้อกำหนดการใช้งานและนโยบายความเป็นส่วนตัว',
'full_name' => 'ชื่อเต็ม',
'name' => 'ชื่อ',
'username' => 'ชื่อผู้ใช้',
'username_email' => 'ชื่อผู้ใช้หรืออีเมล',
'email' => 'อีเมล',
'password' => 'รหัสผ่าน',
'password_confirmation' => 'ยืนยันรหัสผ่าน',
'website' => 'เว็บไซต์',
'location' => 'ที่ตั้ง',
'countries_id' => 'ประเทศ',
'twitter' => 'Twitter',
'facebook' => 'Facebook',
'google' => 'Google',
'instagram' => 'Instagram',
'comment' => 'ความคิดเห็น',
'title' => 'หัวข้อ',
'description' => 'คำอธิบาย',
'old_password' => 'รหัสผ่านเดิม',
'new_password' => 'รหัสผ่านใหม่',
'email_paypal' => 'อีเมล PayPal',
'email_paypal_confirmation' => 'ยืนยัน PayPal ทางอีเมล',
'bank_details' => 'ข้อมูลบัญชีธนาคาร',
'video_url' => 'URL วิดีโอ',
'categories_id' => 'หมวดหมู่',
'story' => 'เรื่องราว',
'image' => 'รูปภาพ',
'avatar' => 'อวาตาร์',
'message' => 'ข้อความ',
'profession' => 'อาชีพ',
'thumbnail' => 'ภาพขนาดย่อ',
'address' => 'ที่อยู่',
'city' => 'เมือง',
'zip' => 'รหัสไปรษณีย์',
'payment_gateway' => 'เกตเวย์การชำระเงิน',
'payment_gateway_tip' => 'เกตเวย์การชำระเงิน',
'MAIL_FROM_ADDRESS' => 'อีเมล no-reply',
'FILESYSTEM_DRIVER' => 'ดิสก์',
'price' => 'ราคา',
'amount' => 'ยอดเงิน',
'birthdate' => 'วันเกิด',
'navbar_background_color' => 'สีพื้นหลังแถบนำทาง',
'navbar_text_color' => 'สีข้อความแถบนำทาง',
'footer_background_color' => 'สีพื้นหลังส่วนท้าย',
'footer_text_color' => 'สีข้อความส่วนท้าย',
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
