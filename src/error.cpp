#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <execinfo.h>
#include <inttypes.h>
#include <sys/types.h>
#include <unistd.h>

#include "error.h"
#include "labels.h"
#include "parser.h"

static FILE* access_log;
static FILE* log_file;
static FILE* log_invalid;
static FILE* log_unknowns;
static Logs* log_data;
static struct sigaction old_sigsegv_handler;

/* Open a debug file whose name is specified in the given path. */
void dbg_log_open(const char* path) {
  if (path != NULL) {
    log_file = fopen(path, "w");
    if (log_file == NULL)
      return;
  }
}

/* Close the debug file. */
void dbg_log_close(void) {
  if (log_file != NULL)
    fclose(log_file);
}

/* Open the invalid requests log file whose name is specified in the
 * given path. */
void invalid_log_open(const char* path) {
  if (path != NULL) {
    log_invalid = fopen(path, "w");
    if (log_invalid == NULL)
      return;
  }
}

/* Close the invalid requests log file. */
void invalid_log_close(void) {
  if (log_invalid != NULL)
    fclose(log_invalid);
}

/* Open the unknowns log file whose name is specified in the
 * given path. */
void unknowns_log_open(const char* path) {
  if (path != NULL) {
    log_unknowns = fopen(path, "w");
    if (log_unknowns == NULL)
      return;
  }
}

/* Close the unknowns log file. */
void unknowns_log_close(void) {
  if (log_unknowns != NULL)
    fclose(log_unknowns);
}

/* Set current overall parsed log data. */
void set_signal_data(void* p) { log_data = static_cast<Logs*>(p); }

/* Open the WebSocket access log file whose name is specified in the
 * given path. */
int access_log_open(const char* path) {
  if (path == NULL)
    return 0;

  access_log = fopen(path, "a");

  if (access_log == NULL)
    return 1;

  return 0;
}

/* Close the WebSocket access log file. */
void access_log_close(void) {
  if (access_log != NULL)
    fclose(access_log);
}

/* Set up sigsegv handler. */
void setup_sigsegv_handler(void) {
  struct sigaction act;

  sigemptyset(&act.sa_mask);
  act.sa_flags = (int)SA_RESETHAND;
  act.sa_handler = sigsegv_handler;

  sigaction(SIGSEGV, &act, &old_sigsegv_handler);
}

static void dump_struct_data(FILE* fp, GLog* glog, int pid) {
  fprintf(fp, "==%d== FILE: %s\n", pid, glog->filename);
  fprintf(fp, "==%d== Line number: %" PRIu64 "\n", pid, glog->processed);
  fprintf(fp, "==%d== Invalid data: %" PRIu64 "\n", pid, glog->invalid);
  fprintf(fp, "==%d== Piping: %d\n", pid, glog->piping);
  fprintf(fp, "==%d==\n", pid);
}

/* Dump to the standard output the values of the overall parsed log
 * data. */
static void dump_struct(FILE* fp) {
  int pid = getpid(), i;

  if (!log_data)
    return;

  fprintf(fp, "==%d== VALUES AT CRASH POINT\n", pid);
  fprintf(fp, "==%d==\n", pid);

  for (i = 0; i < log_data->size; ++i)
    dump_struct_data(fp, &log_data->glog[i], pid);
}

/* Custom SIGSEGV handler. */
void sigsegv_handler(int sig) {
  FILE* fp = stderr;
  int pid = getpid();

  char** messages;
  size_t size, i;
  void* trace_stack[TRACE_SIZE];

  (void)endwin();
  fprintf(fp, "\n");
  fprintf(fp, "==%d== GoAccess %s crashed by Sig %d\n", pid, GO_VERSION, sig);
  fprintf(fp, "==%d==\n", pid);

  dump_struct(fp);

  size = backtrace(trace_stack, TRACE_SIZE);
  messages = backtrace_symbols(trace_stack, size);

  fprintf(fp, "==%d== STACK TRACE:\n", pid);
  fprintf(fp, "==%d==\n", pid);

  for (i = 0; i < size; i++)
    fprintf(fp, "==%d== %zu %s\n", pid, i, messages[i]);

  fprintf(fp, "==%d==\n", pid);
  fprintf(fp, "==%d== %s:\n", pid, ERR_PLEASE_REPORT);
  fprintf(fp, "==%d== https://github.com/allinurl/goaccess/issues\n\n", pid);
  fflush(fp);

  /* Call old sigsegv handler; may be default exit or third party one (e.g. ASAN) */
  sigaction(SIGSEGV, &old_sigsegv_handler, NULL);
}

/* Write formatted debug log data to the logfile. */
void dbg_fprintf(const char* fmt, ...) {
  va_list args;

  if (!log_file)
    return;

  va_start(args, fmt);
  vfprintf(log_file, fmt, args);
  fflush(log_file);
  va_end(args);
}

/* Write formatted invalid requests log data to the logfile. */
void invalid_fprintf(const char* fmt, ...) {
  va_list args;

  if (!log_invalid)
    return;

  va_start(args, fmt);
  vfprintf(log_invalid, fmt, args);
  fflush(log_invalid);
  va_end(args);
}

/* Write formatted unknown browsers/OSs log data to the logfile. */
void unknowns_fprintf(const char* fmt, ...) {
  va_list args;

  if (!log_unknowns)
    return;

  va_start(args, fmt);
  vfprintf(log_unknowns, fmt, args);
  fflush(log_unknowns);
  va_end(args);
}

/* Debug otuput */
void dbg_printf(const char* fmt, ...) {
  va_list args;
  va_start(args, fmt);
  vfprintf(stderr, fmt, args);
  va_end(args);
}

/* Write formatted access log data to the logfile. */
void access_fprintf(const char* fmt, ...) {
  va_list args;

  if (!access_log)
    return;

  va_start(args, fmt);
  vfprintf(access_log, fmt, args);
  fflush(access_log);
  va_end(args);
}
