<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'chist765_mblog');

/** Имя пользователя MySQL */
define('DB_USER', 'chist765_mblog');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '1cUqWsQzF3tOq1IWkbVa');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'F7)67<|we8%L;2:!4G}ro.)_f?c:.!+jX+@w|90US5:7cQ74q7I +-fE1s}~lR9w');
define('SECURE_AUTH_KEY',  'M]om);X%<t=3[Xqz|YU|VBzDv@v6D`Nn70hp|.XA9Vl9I%I?T*J~G<|;ZM%]Z%i#');
define('LOGGED_IN_KEY',    'oN?-xC9bEe|4D6#fTWJ$}A=aDO/L:,kNQw=|jjt7kT0AoU(@$jw~MKm|Cgn0q>I3');
define('NONCE_KEY',        '=oy_Z]dCR2y(E=8+|f-1]X>N5NoRi7)O,/{N&KBKbD]ITb0/BY}EVfhA_u-Hs!4k');
define('AUTH_SALT',        '#zCp-X_@~9C~DtL-1uvioGoXGWUS*:)!])v/K%9Q9wBj^4-45;T&b$]1A-pvF!0p');
define('SECURE_AUTH_SALT', 'HTS}/E-dvGf9zJ*cRP0H[0aBv{%l[t{A}*~0W DW09b7Mo<d:hFpx(4z%mPjPX|8');
define('LOGGED_IN_SALT',   'yom@Ob>jA-B3`Ef%u?a^|;}K0HgQ#fayY5y&i>iX7l+2YBz..1]mSb[Kyq5|**bk');
define('NONCE_SALT',       '8+Q,s*u-d$J!%zT]~>#HXtfu*p.|y%V$8zYY|zuEbOLQLwDAtQf+l!O#$h[}:uJd');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
