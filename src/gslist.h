#pragma once

/* **Why the fuck would anyone use a...** Generic Single linked-list */
typedef struct GSLList_ {
  void* data;
  struct GSLList_* next;
} GSLList;

#define GSLIST_FOREACH(node, data, code)                                                                               \
  {                                                                                                                    \
    GSLList* __tmp = node;                                                                                             \
    while (__tmp) {                                                                                                    \
      (data) = __tmp->data;                                                                                            \
      code;                                                                                                            \
      __tmp = __tmp->next;                                                                                             \
    }                                                                                                                  \
  }

/* single linked-list */
GSLList* list_create(void* data);
GSLList* list_find(GSLList* node, int (*func)(void*, void*), void* data);
GSLList* list_insert_append(GSLList* node, void* data);
GSLList* list_insert_prepend(GSLList* list, void* data);
GSLList* list_copy(GSLList* node);
int list_count(GSLList* list);
int list_foreach(GSLList* node, int (*func)(void*, void*), void* user_data);
int list_remove_node(GSLList** list, GSLList* node);
int list_remove_nodes(GSLList* list);
