#pragma once
#include <array>

#include <time.h>
#include <stdint.h>
#include "gslist.h"

/* Remove the __attribute__ stuff when the compiler is not GCC. */
#if !__GNUC__
#define __attribute__(x) /**/
#endif
#define GO_VERSION "1.7"
#define GO_WEBSITE "https://goaccess.io/"
extern struct tm now_tm;

/* common char array buffer size */
#define INIT_BUF_SIZE 1024

/* total number of modules */
#define TOTAL_MODULES 19

/* maximum number of items within a panel */
#define MAX_CHOICES 366
/* real-time */
#define MAX_CHOICES_RT 50
/* max default items when date-spec = min */
#define MAX_CHOICES_MINUTE 1440 /* 24hrs */

/* date and time length - e.g., 2016/12/12 12:12:12 -0600 */
#define DATE_TIME 25 + 1
/* date length -  e.g., 2016/12/12 */
#define DATE_LEN 10 + 1
/* date length -  e.g., 12:12:12 */
#define TIME_LEN 8 + 1
/* hour + ':' + min length - e.g., 12:12 */
#define HRMI_LEN 4 + 1 + 1

#define YR_FMT "%Y"
#define MO_FMT "%M"
#define DT_FMT "%d"

/* maximum protocol string length */
#define REQ_PROTO_LEN 9

#define IGNORE_LEVEL_PANEL 1
#define IGNORE_LEVEL_REQ 2

/* Type of IP */
enum GTypeIP { TYPE_IPINV, TYPE_IPV4, TYPE_IPV6 };

/* Type of Modules */
enum GModule {
  VISITORS,
  REQUESTS,
  REQUESTS_STATIC,
  NOT_FOUND,
  HOSTS,
  OS,
  BROWSERS,
  VISIT_TIMES,
  VIRTUAL_HOSTS,
  REFERRERS,
  REFERRING_SITES,
  KEYPHRASES,
  STATUS_CODES,
  REMOTE_USER,
  CACHE_STATUS,
  GEO_LOCATION,
  ASN,
  MIME_TYPE,
  TLS_TYPE,
};

/* Total number of storage metrics (GSMetric) */
#define GSMTRC_TOTAL 19

/* Enumerated Storage Metrics */
enum GSMetric {
  MTRC_KEYMAP,
  MTRC_ROOTMAP,
  MTRC_DATAMAP,
  MTRC_UNIQMAP,
  MTRC_ROOT,
  MTRC_HITS,
  MTRC_VISITORS,
  MTRC_BW,
  MTRC_CUMTS,
  MTRC_MAXTS,
  MTRC_METHODS,
  MTRC_PROTOCOLS,
  MTRC_AGENTS,
  MTRC_METADATA,
  MTRC_UNIQUE_KEYS,
  MTRC_AGENT_KEYS,
  MTRC_AGENT_VALS,
  MTRC_CNT_VALID,
  MTRC_CNT_BW,
};

/* Metric totals. These are metrics that have a percent value and are
 * calculated values. */
struct GPercTotals {
  uint32_t hits;     /* total valid hits */
  uint32_t visitors; /* total visitors */
  uint64_t bw;       /* total bandwidth */
};

/* Metrics within GHolder or GDashData */
struct GMetrics {
  /* metric id can be used to identify
   * a specific data field */
  uint8_t id;
  char* data;
  char* method;
  char* protocol;

  float hits_perc;
  float visitors_perc;
  float bw_perc;

  uint64_t hits;
  uint64_t visitors;

  /* holder has a numeric value, while
   * dashboard has a displayable string value */
  union {
    char* sbw;
    uint64_t nbw;
  } bw;

  /* holder has a numeric value, while
   * dashboard has a displayable string value */
  union {
    char* sts;
    uint64_t nts;
  } avgts;

  /* holder has a numeric value, while
   * dashboard has a displayable string value */
  union {
    char* sts;
    uint64_t nts;
  } cumts;

  /* holder has a numeric value, while
   * dashboard has a displayable string value */
  union {
    char* sts;
    uint64_t nts;
  } maxts;
};

/* Holder sub item */
struct GSubItem {
  GModule module;
  GMetrics* metrics;
  GSubItem* prev;
  GSubItem* next;
};

/* Double linked-list of sub items */
struct GSubList {
  int size;
  GSubItem* head;
  GSubItem* tail;
};

/* Holder item */
typedef struct GHolderItem_ {
  GSubList* sub_list;
  GMetrics* metrics;
} GHolderItem;

/* Holder of GRawData */
typedef struct GHolder_ {
  GHolderItem* items; /* holder items */
  GModule module;     /* current module  */
  int idx;            /* holder index  */
  int holder_size;    /* number of allocated items */
  uint32_t ht_size;   /* size of the hash table/store */
  int sub_items_size; /* number of sub items  */
} GHolder;

/* Enum-to-string */
typedef struct GEnum_ {
  const char* str;
  int idx;
} GEnum;

/* A metric can contain a root/data/uniq node id */
typedef struct GDataMap_ {
  int data;
  int root;
} GDataMap;

typedef struct GAgentItem_ {
  char* agent;
} GAgentItem;

typedef struct GAgents_ {
  int size;
  int idx;
  struct GAgentItem_* items;
} GAgents;

#define FOREACH_MODULE(item, array) for (; (item < ARRAY_SIZE(array)) && array[item] != -1; ++item)

/* Processing time */
extern time_t end_proc;
extern time_t timestamp;
extern time_t start_proc;

/* list of available modules/panels */
extern std::array<int, TOTAL_MODULES> module_list;

GAgents* new_gagents(uint32_t size);
void free_agents_array(GAgents* agents);

char* enum2str(const GEnum map[], int len, int idx);
char* get_module_str(GModule module);
float get_percentage(unsigned long long total, unsigned long long hit);
int get_max_choices(void);
int get_module_enum(const char* str);
int has_timestamp(const char* fmt);
int str2enum(const GEnum map[], int len, const char* str);

int enable_panel(GModule mod);
int get_module_index(int module);
int get_next_module(GModule module);
int get_prev_module(GModule module);
int ignore_panel(GModule mod);
int init_modules(void);
int remove_module(GModule module);
uint32_t get_num_modules(void);
void verify_panels(void);

char* get_log_source_str(int max_len);
intmax_t get_log_sizes(void);

void display_default_config_file(void);
void display_storage(void);
void display_version(void);
