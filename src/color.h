#pragma once
#include <utility>
#include <array>
#include "kltools/klflags.h"
#include "commons.h"

enum class PanelColorRole {
  COLOR_MTRC_HITS = 0,
  COLOR_MTRC_VISITORS,
  COLOR_MTRC_DATA,
  COLOR_MTRC_BW,
  COLOR_MTRC_AVGTS,
  COLOR_MTRC_CUMTS,
  COLOR_MTRC_MAXTS,
  COLOR_MTRC_PROT,
  COLOR_MTRC_MTHD,
  COLOR_MTRC_HITS_PERC,
  COLOR_MTRC_HITS_PERC_MAX,
  COLOR_MTRC_VISITORS_PERC,
  COLOR_MTRC_VISITORS_PERC_MAX,
  MAX_PANEL_COLOR_ROLES
};

/* Color Items/Fields */
enum class ColorRole {
  COLOR_NORMAL,
  COLOR_PANEL_COLS,
  COLOR_BARS,
  COLOR_ERROR,
  COLOR_SELECTED,
  COLOR_PANEL_ACTIVE,
  COLOR_PANEL_HEADER,
  COLOR_PANEL_DESC,
  COLOR_OVERALL_LBLS,
  COLOR_OVERALL_VALS,
  COLOR_OVERALL_PATH,
  COLOR_ACTIVE_LABEL,
  COLOR_BG,
  COLOR_DEFAULT,
  COLOR_PROGRESS,
  MAX_COLOR_ROLES
};

/* Default Color Schemes */
typedef enum SCHEMES {
  NO_COLOR,
  MONOCHROME,
  STD_GREEN,
  MONOKAI,
} GShemes;

// /* Each color properties */
// typedef struct GColorPair_ {
//   short idx; /* color pair index identifier */
//   short fg;  /* foreground color */
//   short bg;  /* background color */
// } GColorPair;

// /* Color */
// typedef struct GColors_ {
//   GColorItem item;  /* screen item */
//   GColorPair* pair; /* color pair */
//   int attr;         /* color attributes, e.g., bold */
//   short module;     /* panel */
// } GColors;

// void free_color_lists(void);
// void set_colors(int force);
// void set_normal_color(void);

enum class CellAttributes { Bold, Underline, Standout, Blink };

struct GPColor {
  KLFlags<CellAttributes> attr;
  short fg;
  short bg;
};

struct GPColorDefinition {
  GPColor color;
  GModule module;
}

class GPColorTheme {
  std::array<GPColor, std::to_underlying(ColorRole::MAX_COLOR_ROLES)> m_colors;
  std::array<GPColor, std::to_underlying(PanelColorRole::MAX_PANEL_COLOR_ROLES)> m_default_panel_colors;

public:
  GPColorTheme();
  GPColor color_default() const;
  GPColor color_error() const;
  GPColor color_overall_lbls() const;
  GPColor color_overall_path() const;
  GPColor color_overall_vals() const;
  GPColor color_panel_active() const;
  GPColor color_panel_desc() const;
  GPColor color_panel_header() const;
  GPColor color_progress() const;
  GPColor color_selected() const;
  // GPColors get_color_by_item_module(GPColorItem item, GModule module);
  // GPColors get_color(GPColorItem item);
};
