#include <node_api.h>

#include "guest.hpp"

napi_value wrapper(napi_env env, napi_callback_info info) {
  size_t argc = 1;
  napi_value argv[1];
  napi_get_cb_info(env, info, &argc, argv, NULL, NULL);

  char host[100] = {};
  napi_get_value_string_utf8(env, argv[0], host, 100, NULL);

  napi_value greeting;
  napi_create_string_utf8(env, guest(host).c_str(), NAPI_AUTO_LENGTH, &greeting);
  return greeting;
}

napi_value init(napi_env env, napi_value exports) {
  napi_value fn;
  napi_create_function(env, nullptr, 0, wrapper, nullptr, &fn);
  napi_set_named_property(env, exports, "wrapper", fn);
  return exports;
}

NAPI_MODULE(NODE_GYP_MODULE_NAME, init)
