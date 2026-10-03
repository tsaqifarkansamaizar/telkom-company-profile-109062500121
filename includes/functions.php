<?php
// includes/functions.php

/**
 * Sanitisasi input form untuk mencegah XSS
 */
function sanitize($data) {
    return htmlspecialchars(trim($data), ENT_QUOTES, 'UTF-8');
}

/**
 * Format tanggal ke format Indonesia
 */
function format_tanggal($dateString) {
    $date = new DateTime($dateString);
    return $date->format('d M Y');
}
?>