#include <stdio.h>
#include <lauxlib.h>
#include <lualib.h>
#include <emscripten/emscripten.h>
#include <unistd.h>
#include <dirent.h>

EMSCRIPTEN_KEEPALIVE
const char* run_lua(const char* script) {
    lua_State* lua = luaL_newstate();
    luaL_openlibs(lua);

    int res = luaL_dostring(lua, script);

    size_t len = 0;
    int luaTop = lua_gettop(lua);

    const char* value = lua_tolstring(lua, luaTop, &len);

    lua_close(lua);

    return value;
}
