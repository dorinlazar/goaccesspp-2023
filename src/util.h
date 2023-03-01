#pragma once

#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))

#define REGEX_ERROR 100

#define KIB(n) (n << 10)
#define MIB(n) (n << 20)
#define GIB(n) (n << 30)
#define TIB(n) (n << 40)
#define PIB(n) (n << 50)

#define MILS 1000ULL
#define SECS 1000000ULL
#define MINS 60000000ULL
#define HOUR 3600000000ULL
#define DAY 86400000000ULL
#define TZ_NAME_LEN 48

#include <stdint.h>
#include <sys/types.h>
#include <time.h>

char* alloc_string(const char* str);
char* char_repeat(int n, char c);
char* char_replace(char* str, char o, char n);
char* deblank(char* str);
char* escape_str(const char* src);
char* filesize_str(unsigned long long log_size);
char* float2str(float d, int width);
char* get_global_config(void);
char* get_user_config(void);
char* get_visitors_date(const char* odate, const char* from, const char* to);
char* int2str(int d, int width);
char* left_pad_str(const char* s, int indent);
char* ltrim(char* s);
char* regex_extract_string(const char* str, const char* regex, int max_groups, char const** err);
char* replace_str(const char* str, const char* old, const char* n);
char* rtrim(char* s);
char* secs_to_str(int secs);
char* strtoupper(char* str);
char* substring(const char* str, int begin, int len);
char* trim_str(char* str);
char* u322str(uint32_t d, int width);
char* u642str(uint64_t d, int width);
char* unescape_str(const char* src);
char* usecs_to_str(unsigned long long usec);
const char* verify_status_code(char* str);
const char* verify_status_code_type(const char* str);
int convert_date(char* res, const char* data, const char* from, const char* to, int size);
int count_matches(const char* s1, char c);
int find_output_type(char** filename, const char* ext, int alloc);
int hide_referer(const char* ref);
int ignore_referer(const char* ref);
int intlen(uint64_t num);
int invalid_ipaddr(char* str, int* ipvx);
int ip_in_range(const char* ip);
int ptr2int(char* ptr);
int str2int(const char* date);
int str_inarray(const char* s, const char* arr[], int size);
int str_to_time(const char* str, const char* fmt, struct tm* tm, int tz);
int valid_output_type(const char* filename);
off_t file_size(const char* filename);
size_t append_str(char** dest, const char* src);
uint32_t djb2(const unsigned char* str);
uint32_t ip_to_binary(const char* ip);
void genstr(char* dest, size_t len);
void set_tz(void);
void strip_newlines(char* str);
void xstrncpy(char* dest, const char* source, const size_t dest_size);
