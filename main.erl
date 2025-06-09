-module(main).
-export([start/0]).

start() ->
    application:start(inets),
    inets:start(httpd, [
        {port, 8080},
        {server_name, "erlang_server"},
        {server_root, "."},
        {document_root, "./public"},
        {modules, [mod_alias, mod_get]},
        {mime_types, [{"html", "text/html"}]},
        {default_type, "text/plain"},
        {bind_address, "0.0.0.0"},
        {directory_index, ["index.html"]}
    ]),
    timer:sleep(infinity).
