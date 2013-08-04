/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@lighten: 15%;
@water:             #58a5e9;

@land:              lighten(#FCFBE7, @lighten);
@grass:             lighten(#E6F2C1, @lighten);
@beach:             lighten(#FFEEC7, @lighten);
@park:              lighten(#DAF2C1, @lighten);
@cemetery:          lighten(#D6DED2, @lighten);
@wooded:            lighten(#C3D9AD, @lighten);
@agriculture:       lighten(#F2E8B6, @lighten);

@building:          lighten(#E4E0E0, @lighten);
@hospital:          lighten(rgb(229,198,195), @lighten);
@school:            lighten(#FFF5CC, @lighten);
@sports:            lighten(#B8E6B8, @lighten);

@residential:       @land * 0.98;
@commercial:        @land * 0.97;
@industrial:        @land * 0.96;
@parking:           lighten(#EEE, @lighten);

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     lighten(#E65C5C, @lighten + 10%);
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        lighten(#E68A5C, @lighten);
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      lighten(#FFC859, @lighten);
@primary_fill:      lighten(@primary_line,10%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    lighten(#FFE873, @lighten);
@secondary_fill:    lighten(@secondary_line,10%);
@secondary_case:    @secondary_line * 0.9;

@standard_line:     @land * 0.85;
@standard_fill:     #fff;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #FAFAF5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         @land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@lighten-text: 20%;

@country_text:      lighten(#435, @lighten-text);
@country_halo:      @place_halo;

@state_text:        lighten(#546, @lighten-text);
@state_halo:        @place_halo;

@city_text:         lighten(#444, @lighten-text);
@city_halo:         @place_halo;

@town_text:         lighten(#666, @lighten-text);
@town_halo:         @place_halo;

@poi_text:          lighten(#888, @lighten-text);

@road_text:         lighten(#777, @lighten-text);
@road_halo:         #fff;

@other_text:        lighten(#888, @lighten-text);
@other_halo:        @place_halo;

@locality_text:     lighten(#aaa, @lighten-text);
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      lighten(#888, @lighten-text);
@village_halo:      @place_halo;

/* ****************************************************************** */
