#pragma once
#include <utility>
#include <array>
#include <optional>
#include "kltools/klflags.h"
#include "commons.h"

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
  COLOR_MTRC_HITS,
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
};

/* Default Color Schemes */
typedef enum SCHEMES {
  NO_COLOR,
  MONOCHROME,
  STD_GREEN,
  MONOKAI,
} GShemes;

enum class CellAttributes { Bold, Underline, Standout, Blink };

struct GPColor {
  KLFlags<CellAttributes> attr;
  short fg;
  short bg;
};

struct GPColorDefinition {
  GPColor color;
  std::optional<GModule> module;
  std::optional<ColorRole> role;
};

class GPColorTheme {
  std::vector<GPColorDefinition> m_config_colors;

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
  GPColor get_color_by_item_module(ColorRole item, GModule module);
  GPColor get_color(ColorRole item) const;
};
