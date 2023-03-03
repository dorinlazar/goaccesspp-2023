#pragma once
#include <utility>
#include <vector>
#include <optional>
#include "kltools/klflags.h"

enum class ColorRole {
  NORMAL,
  MTRC_HITS,
  MTRC_VISITORS,
  MTRC_DATA,
  MTRC_BW,
  MTRC_AVGTS,
  MTRC_CUMTS,
  MTRC_MAXTS,
  MTRC_PROT,
  MTRC_MTHD,
  MTRC_HITS_PERC,
  MTRC_HITS_PERC_MAX,
  MTRC_VISITORS_PERC,
  MTRC_VISITORS_PERC_MAX,
  PANEL_COLS,
  BARS,
  ERROR,
  SELECTED,
  PANEL_ACTIVE,
  PANEL_HEADER,
  PANEL_DESC,
  OVERALL_LBLS,
  OVERALL_VALS,
  OVERALL_PATH,
  ACTIVE_LABEL,
  BACKGROUND,
  DEFAULT,
  PROGRESS,
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
