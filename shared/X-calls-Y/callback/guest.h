typedef void* closure_t;
typedef int function_t(char* buffer, const char* s, closure_t closure);

int guest(char* buffer, const char* guest, function_t f, closure_t closure);
