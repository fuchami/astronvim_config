;; extends
(
    ((string_content)(interpolation)*)+ @injection.content
    (#any-match? @injection.content "--\\s*sql")
    (#set! injection.language "sql")
)
