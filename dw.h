/* $Id: dw.h 2754 2021-12-20 14:19:43Z bsmith $ */

/* Dynamic Windows version numbers */
#define DW_MAJOR_VERSION 3
#define DW_MINOR_VERSION 2
#define DW_SUB_VERSION 0

#define DW_HOME_URL "http://dwindows.netlabs.org"

/* These corespond to the entries in the color
 * arrays in the Win32 dw.c, they are also the
 * same as DOS ANSI colors.
 */
#define DW_CLR_BLACK             0
#define DW_CLR_DARKRED           1
#define DW_CLR_DARKGREEN         2
#define DW_CLR_BROWN             3
#define DW_CLR_DARKBLUE          4
#define DW_CLR_DARKPINK          5
#define DW_CLR_DARKCYAN          6
#define DW_CLR_PALEGRAY          7
#define DW_CLR_DARKGRAY          8
#define DW_CLR_RED               9
#define DW_CLR_GREEN             10
#define DW_CLR_YELLOW            11
#define DW_CLR_BLUE              12
#define DW_CLR_PINK              13
#define DW_CLR_CYAN              14
#define DW_CLR_WHITE             15
#define DW_CLR_DEFAULT           16

/* Signal handler defines */
#define DW_SIGNAL_CONFIGURE      "configure_event"
#define DW_SIGNAL_KEY_PRESS      "key_press_event"
#define DW_SIGNAL_BUTTON_PRESS   "button_press_event"
#define DW_SIGNAL_BUTTON_RELEASE "button_release_event"
#define DW_SIGNAL_MOTION_NOTIFY  "motion_notify_event"
#define DW_SIGNAL_DELETE         "delete_event"
#define DW_SIGNAL_EXPOSE         "expose_event"
#define DW_SIGNAL_CLICKED        "clicked"
#define DW_SIGNAL_ITEM_ENTER     "container-select"
#define DW_SIGNAL_ITEM_CONTEXT   "container-context"
#define DW_SIGNAL_ITEM_SELECT    "tree-select"
#define DW_SIGNAL_LIST_SELECT    "item-select"
#define DW_SIGNAL_SET_FOCUS      "set-focus"
#define DW_SIGNAL_VALUE_CHANGED  "value_changed"
#define DW_SIGNAL_SWITCH_PAGE    "switch-page"
#define DW_SIGNAL_COLUMN_CLICK   "click-column"
#define DW_SIGNAL_TREE_EXPAND    "tree-expand"
#define DW_SIGNAL_HTML_CHANGED   "html-changed"
#define DW_SIGNAL_HTML_RESULT    "html-result"

/* status of menu items */
#define DW_MIS_ENABLED           1
#define DW_MIS_DISABLED          (1 << 1)
#define DW_MIS_CHECKED           (1 << 2)
#define DW_MIS_UNCHECKED         (1 << 3)

/* Gravity */
#define DW_GRAV_TOP              0
#define DW_GRAV_LEFT             0
#define DW_GRAV_CENTER           1
#define DW_GRAV_RIGHT            2
#define DW_GRAV_BOTTOM           2
#define DW_GRAV_OBSTACLES        (1 << 10)

/* Control size constants */
#define DW_SIZE_AUTO    -1

/* Used internally */
#define _DW_TYPE_BOX  0
#define _DW_TYPE_ITEM 1

#define _DW_SPLITBAR_WIDTH 4

#define _DW_SIZE_STATIC 0
#define _DW_SIZE_EXPAND 1

typedef struct _user_data
{
   struct _user_data *next;
   void              *data;
   char              *varname;
} UserData;

/* Windows specific section */

#include <winsock2.h>
#include <windows.h>
#include <commctrl.h>

#define DW_DT_LEFT               SS_LEFTNOWORDWRAP
#define DW_DT_QUERYEXTENT        0
#define DW_DT_UNDERSCORE         0
#define DW_DT_STRIKEOUT          0
#define DW_DT_TEXTATTRS          0
#define DW_DT_EXTERNALLEADING    0
#define DW_DT_CENTER             SS_CENTER
#define DW_DT_RIGHT              SS_RIGHT
#define DW_DT_TOP                0
#define DW_DT_VCENTER            (1 << 29)
#define DW_DT_BOTTOM             0
#define DW_DT_HALFTONE           0
#define DW_DT_MNEMONIC           0
#define DW_DT_WORDBREAK          (1 << 28)
#define DW_DT_ERASERECT          0

#define DW_FCF_CLOSEBUTTON       0
#define DW_FCF_TITLEBAR          WS_CAPTION
#define DW_FCF_SYSMENU           WS_SYSMENU
#define DW_FCF_MENU              0
#define DW_FCF_SIZEBORDER        WS_THICKFRAME
#define DW_FCF_MINBUTTON         WS_MINIMIZEBOX
#define DW_FCF_MAXBUTTON         WS_MAXIMIZEBOX
#define DW_FCF_MINMAX            (WS_MINIMIZEBOX|WS_MAXIMIZEBOX)
#define DW_FCF_DLGBORDER         WS_DLGFRAME
#define DW_FCF_BORDER            WS_BORDER
#define DW_FCF_TASKLIST          (1 << 1)
#define DW_FCF_NOMOVEWITHOWNER   0
#define DW_FCF_SYSMODAL          0
#define DW_FCF_HIDEBUTTON        WS_MINIMIZEBOX
#define DW_FCF_HIDEMAX           (WS_MINIMIZEBOX|WS_MAXIMIZEBOX)
#define DW_FCF_AUTOICON          0
#define DW_FCF_MAXIMIZE          WS_MAXIMIZE
#define DW_FCF_MINIMIZE          WS_MINIMIZE
#define DW_FCF_COMPOSITED        1
#define DW_FCF_TEXTURED          0
#define DW_FCF_FULLSCREEN        (1 << 2)

#define DW_CFA_BITMAPORICON      1
#define DW_CFA_STRING            (1 << 1)
#define DW_CFA_ULONG             (1 << 2)
#define DW_CFA_TIME              (1 << 3)
#define DW_CFA_DATE              (1 << 4)
#define DW_CFA_CENTER            (1 << 5)
#define DW_CFA_LEFT              (1 << 6)
#define DW_CFA_RIGHT             (1 << 7)
#define DW_CFA_STRINGANDICON     (1 << 8)
#define DW_CFA_HORZSEPARATOR     0
#define DW_CFA_SEPARATOR         0

#define DW_CRA_SELECTED          LVNI_SELECTED
#define DW_CRA_CURSORED          LVNI_FOCUSED

#define DW_CR_RETDATA            (1 << 10)

#define DW_LS_MULTIPLESEL        LBS_MULTIPLESEL

#define DW_LIT_NONE              -1

#define DW_MLE_CASESENSITIVE     1

#define DW_BS_NOBORDER           BS_FLAT

#define DW_POINTER_DEFAULT       0
#define DW_POINTER_ARROW         32512
#define DW_POINTER_CLOCK         32514
#define DW_POINTER_QUESTION      32651

/* flag values for dw_messagebox() */
#define DW_MB_OK                 MB_OK
#define DW_MB_OKCANCEL           MB_OKCANCEL
#define DW_MB_YESNO              MB_YESNO
#define DW_MB_YESNOCANCEL        MB_YESNOCANCEL

#define DW_MB_WARNING            MB_ICONWARNING
#define DW_MB_ERROR              MB_ICONERROR
#define DW_MB_INFORMATION        MB_ICONINFORMATION
#define DW_MB_QUESTION           MB_ICONQUESTION

/* Key Modifiers */
#define KC_CTRL                  (1)
#define KC_SHIFT                 (1 << 1)
#define KC_ALT                   (1 << 2)

typedef struct _color {
   int fore;
   int back;
   HWND combo, buddy;
   ULONG style;
   RECT rect;
   HWND clickdefault;
   HBRUSH hbrush;
   HFONT hfont;
   HMENU hmenu;
   char fontname[128];
   WNDPROC pOldProc;
   UserData *root;
} ColorInfo;

typedef struct _notebookpage {
   ColorInfo cinfo;
   TC_ITEM item;
   HWND hwnd;
   int realid;
} NotebookPage;

typedef HANDLE HMTX;
typedef HANDLE HEV;
typedef HANDLE HMOD;
typedef HANDLE HSHM;
typedef HANDLE HICN;

typedef struct _container {
   ColorInfo cinfo;
   ULONG *flags;
   ULONG columns;
   COLORREF odd, even;
} ContainerInfo;

typedef struct _hpixmap {
   unsigned long width, height;
   HBITMAP hbm;
   HDC hdc;
   unsigned long transcolor;
   HWND handle;
   void *bits;
   unsigned long depth;
   HFONT font;
} *HPIXMAP;

typedef HWND HMENUI;

typedef struct _item {
   /* Item type - Box or Item */
   int type;
   /* Handle to Frame or Window */
   HWND hwnd;
   /* Width and Height of static size */
   int width, height, origwidth, origheight;
   /* Size Type - Static or Expand */
   int hsize, vsize;
   /* Padding */
   int pad;
} Item;

typedef struct _box {
   ColorInfo cinfo;
   int fullscreen;
   /* Number of items in the box */
   int count;
   /* Box type - horizontal or vertical */
   int type;
   /* Keep track of how box is packed */
   int hsize, vsize;
   /* Padding */
   int pad, grouppadx, grouppady;
   /* Groupbox */
   HWND grouphwnd;
   /* Default item */
   HWND defaultitem;
   /* Used as temporary storage in the calculation stage */
   int usedpadx, usedpady, minheight, minwidth;
   /* Used for calculating individual item ratios */
   int width, height;
   /* Any combinations of flags describing the box */
   unsigned long flags;
   /* Array of item structures */
   struct _item *items;
} Box;

typedef struct _CDATE
{
   UCHAR  day;
   UCHAR  month;
   USHORT year;
} CDATE;
//typedef CDATE *PCDATE;

typedef struct _CTIME
{
   UCHAR hours;
   UCHAR minutes;
   UCHAR seconds;
   UCHAR ucReserved;
} CTIME;
//typedef CTIME *PCTIME;

/* Define a few things missing on OS/2 and Windows */

typedef unsigned long DWTID;
#define DW_DIR_SEPARATOR '\\'

typedef int HTIMER;

/* Some dark mode constants for supported platforms */
#define DW_DARK_MODE_DISABLED 0
#define DW_DARK_MODE_BASIC    1
#define DW_DARK_MODE_FULL     2
#define DW_DARK_MODE_FORCED   3

/* Application ID support lengths */
#define _DW_APP_ID_SIZE 100

/* Use at least the linux utsname limit to avoid gcc fortify warnings */
#define _DW_ENV_STRING_SIZE 257

typedef struct _dwenv {
   /* Operating System Name and DW Build Date/Time */
   char osName[_DW_ENV_STRING_SIZE], buildDate[_DW_ENV_STRING_SIZE], buildTime[_DW_ENV_STRING_SIZE];
   /* Versions and builds */
   short MajorVersion, MinorVersion, MajorBuild, MinorBuild;
   /* Dynamic Window version */
   short DWMajorVersion, DWMinorVersion, DWSubVersion;
   /* Which HTML engine is compiled in */
   char htmlEngine[_DW_ENV_STRING_SIZE];
} DWEnv;


typedef struct _dwexpose {
   int x, y;
   int width, height;
} DWExpose;

typedef struct _dwdialog {
   HEV eve;
   int done;
   int method;
   void *data, *result;
} DWDialog;

typedef void *HPRINT;

#define DW_SIGNAL_FUNC(a) ((void *)a)

#define DW_DESKTOP               HWND_DESKTOP
#define DW_MINIMIZED 1

#define DW_BUTTON1_MASK 1
#define DW_BUTTON2_MASK (1 << 1)
#define DW_BUTTON3_MASK (1 << 2)

#define DW_EXEC_CON 0
#define DW_EXEC_GUI 1

#define DW_FILE_OPEN      0
#define DW_FILE_SAVE      1
#define DW_DIRECTORY_OPEN 2

#define DW_HORZ 0
#define DW_VERT 1

#define DW_TIMEOUT_INFINITE ((unsigned long)-1)

/* Obsolete, should disappear sometime */
#define BOXHORZ DW_HORZ
#define BOXVERT DW_VERT
#define DW_FCF_SHELLPOSITION     0
#define DW_FCF_NOBYTEALIGN       0
#define DW_FCF_VERTSCROLL        0
#define DW_FCF_HORZSCROLL        0

/* Scrolling constants */
#define DW_SCROLL_UP 0
#define DW_SCROLL_DOWN 1
#define DW_SCROLL_TOP 2
#define DW_SCROLL_BOTTOM 3

/* return values for dw_messagebox() */
#define DW_MB_RETURN_OK           0
#define DW_MB_RETURN_YES          1
#define DW_MB_RETURN_NO           0
#define DW_MB_RETURN_CANCEL       2

#define DW_PIXMAP_WIDTH(x) (x ? x->width : 0)
#define DW_PIXMAP_HEIGHT(x) (x ? x->height : 0)

#define DW_RGB_COLOR (0xF0000000)
#define DW_RGB_TRANSPARENT (0x0F000000)
#define DW_RGB_MASK (0x00FFFFFF)
#define DW_RED_MASK (0x000000FF)
#define DW_GREEN_MASK (0x0000FF00)
#define DW_BLUE_MASK (0x00FF0000)
#define DW_RED_VALUE(a) (a & DW_RED_MASK)
#define DW_GREEN_VALUE(a) ((a & DW_GREEN_MASK) >> 8)
#define DW_BLUE_VALUE(a) ((a & DW_BLUE_MASK) >> 16)
#define DW_RGB(a, b, c) (0xF0000000 | (a) | (b) << 8 | (c) << 16)

/* Menu convenience paramaters */
#define DW_MENU_SEPARATOR ""
#define DW_NOMENU 0
#define DW_MENU_AUTO 0
#define DW_MENU_POPUP (unsigned long)-1

/* Convenience parameters for various types */
#define DW_NOHWND 0
#define DW_NOHTIMER 0
#define DW_NOHPRINT 0
#define DW_NOHPIXMAP 0
#define DW_NOHICN 0

#define DW_PERCENT_INDETERMINATE ((unsigned int)-1)

/* Return value error codes */
#define DW_ERROR_NONE      0
#define DW_ERROR_GENERAL   1
#define DW_ERROR_TIMEOUT   2
#define DW_ERROR_NON_INIT  3
#define DW_ERROR_NO_MEM    4
#define DW_ERROR_INTERRUPT 5
#define DW_ERROR_UNKNOWN   -1

/* Embedded HTML actions */
#define DW_HTML_GOBACK     0
#define DW_HTML_GOFORWARD  1
#define DW_HTML_GOHOME     2
#define DW_HTML_SEARCH     3
#define DW_HTML_RELOAD     4
#define DW_HTML_STOP       5
#define DW_HTML_PRINT      6

/* Embedded HTML notifcations */
#define DW_HTML_CHANGE_STARTED  1
#define DW_HTML_CHANGE_REDIRECT 2
#define DW_HTML_CHANGE_LOADING  3
#define DW_HTML_CHANGE_COMPLETE 4

/* Drawing flags  */
#define DW_DRAW_DEFAULT    0
#define DW_DRAW_FILL       1
#define DW_DRAW_FULL       (1 << 1)
#define DW_DRAW_NOAA       (1 << 2)

/* MLE Completion flags */
#define DW_MLE_COMPLETE_TEXT      1
#define DW_MLE_COMPLETE_DASH      (1 << 1)
#define DW_MLE_COMPLETE_QUOTE     (1 << 2)

/* Library feature constants */
#define DW_FEATURE_UNSUPPORTED  -1
#define DW_FEATURE_DISABLED     0
#define DW_FEATURE_ENABLED      1

typedef enum 
{
    DW_FEATURE_HTML = 0,                /* Supports the HTML Widget */
    DW_FEATURE_HTML_RESULT,             /* Supports the DW_SIGNAL_HTML_RESULT callback */
    DW_FEATURE_WINDOW_BORDER,           /* Supports custom window border sizes */
    DW_FEATURE_WINDOW_TRANSPARENCY,     /* Supports window frame transparency */
    DW_FEATURE_DARK_MODE,               /* Supports Dark Mode user interface */
    DW_FEATURE_MLE_AUTO_COMPLETE,       /* Supports auto completion in Multi-line Edit boxes */
    DW_FEATURE_MLE_WORD_WRAP,           /* Supports word wrapping in Multi-line Edit boxes */
    DW_FEATURE_CONTAINER_STRIPE,        /* Supports striped line display in container widgets */ 
    DW_FEATURE_MDI,                     /* Supports Multiple Document Interface window frame */
    DW_FEATURE_NOTEBOOK_STATUS_TEXT,    /* Supports status text area on notebook/tabbed controls */
    DW_FEATURE_NOTIFICATION,            /* Supports sending system notifications */
    DW_FEATURE_UTF8_UNICODE,            /* Supports UTF8 encoded Unicode text */
    DW_FEATURE_MLE_RICH_EDIT,           /* Supports Rich Edit based MLE control (Windows) */
    DW_FEATURE_TASK_BAR,                /* Supports icons in the taskbar or similar system widget */
    DW_FEATURE_TREE,                    /* Supports the Tree Widget */
    DW_FEATURE_WINDOW_PLACEMENT,        /* Supports arbitrary window placement */
    DW_FEATURE_MAX
} DWFEATURE;

/* Macro for casting resource IDs to HICN */
#define DW_RESOURCE(a) (a < 65536 ? (HICN)a : (HICN)0)

/* Constants for sizing scrolled widgets */
#define _DW_SCROLLED_MIN_WIDTH   100
#define _DW_SCROLLED_MIN_HEIGHT  75
#define _DW_SCROLLED_MAX_WIDTH   500
#define _DW_SCROLLED_MAX_HEIGHT  400

/* Use the dbsoft.org application domain by default if not specified */
#define DW_APP_DOMAIN_DEFAULT "org.dbsoft.dwindows"

/* Forwarder macros to the future names of these functions */
#define dw_pointer_get_pos(a, b) dw_pointer_query_pos(a, b)
#define dw_environment_get(a) dw_environment_query(a)
#define dw_container_get_start(a, b) dw_container_query_start(a, b)
#define dw_container_get_next(a, b) dw_container_query_next(a, b)

/* Public function prototypes */
void dw_box_pack_start(HWND box, HWND item, int width, int height, int hsize, int vsize, int pad);
void dw_box_pack_end(HWND box, HWND item, int width, int height, int hsize, int vsize, int pad);
void dw_box_pack_at_index(HWND box, HWND item, int index, int width, int height, int hsize, int vsize, int pad);
HWND dw_box_unpack_at_index(HWND box, int index);
int dw_box_unpack(HWND handle);
int dw_init(int newthread, int argc, char *argv[]);
void dw_main(void);
void dw_main_quit(void);
void dw_main_sleep(int seconds);
void dw_main_iteration(void);
void dw_free(void *ptr);
int dw_window_show(HWND handle);
int dw_window_hide(HWND handle);
int dw_window_minimize(HWND handle);
int dw_window_raise(HWND handle);
int dw_window_lower(HWND handle);
int dw_window_destroy(HWND handle);
void dw_window_redraw(HWND handle);
int dw_window_set_font(HWND handle, const char *fontname);
char * dw_window_get_font(HWND handle);
int dw_window_set_color(HWND handle, unsigned long fore, unsigned long back);
HWND dw_window_new(HWND hwndOwner, const char *title, unsigned long flStyle);
HWND dw_box_new(int type, int pad);
HWND dw_scrollbox_new(int type, int pad);
int dw_scrollbox_get_pos( HWND handle, int orient );
int dw_scrollbox_get_range( HWND handle, int orient );
HWND dw_groupbox_new(int type, int pad, const char *title);
HWND dw_mdi_new(unsigned long id);
HWND dw_bitmap_new(unsigned long id);
HWND dw_bitmapbutton_new(const char *text, unsigned long id);
HWND dw_bitmapbutton_new_from_file(const char *text, unsigned long id, const char *filename);
HWND dw_bitmapbutton_new_from_data(const char *text, unsigned long id, const char *str, int len);
HWND dw_container_new(unsigned long id, int multi);
HWND dw_tree_new(unsigned long id);
HWND dw_text_new(const char *text, unsigned long id);
HWND dw_status_text_new(const char *text, unsigned long id);
HWND dw_mle_new(unsigned long id);
HWND dw_entryfield_new(const char *text, unsigned long id);
HWND dw_entryfield_password_new(const char *text, ULONG id);
HWND dw_combobox_new(const char *text, unsigned long id);
HWND dw_button_new(const char *text, unsigned long id);
HWND dw_spinbutton_new(const char *text, unsigned long id);
HWND dw_radiobutton_new(const char *text, ULONG id);
HWND dw_percent_new(unsigned long id);
HWND dw_slider_new(int vertical, int increments, ULONG id);
HWND dw_scrollbar_new(int vertical, ULONG id);
HWND dw_checkbox_new(const char *text, unsigned long id);
HWND dw_listbox_new(unsigned long id, int multi);
void dw_listbox_append(HWND handle, const char *text);
void dw_listbox_insert(HWND handle, const char *text, int pos);
void dw_listbox_list_append(HWND handle, char **text, int count);
void dw_listbox_clear(HWND handle);
int dw_listbox_count(HWND handle);
void dw_listbox_set_top(HWND handle, int top);
void dw_listbox_select(HWND handle, int index, int state);
void dw_listbox_delete(HWND handle, int index);
void dw_listbox_get_text(HWND handle, unsigned int index, char *buffer, unsigned int length);
void dw_listbox_set_text(HWND handle, unsigned int index, const char *buffer);
int dw_listbox_selected(HWND handle);
int dw_listbox_selected_multi(HWND handle, int where);
void dw_percent_set_pos(HWND handle, unsigned int position);
unsigned int dw_slider_get_pos(HWND handle);
void dw_slider_set_pos(HWND handle, unsigned int position);
unsigned int dw_scrollbar_get_pos(HWND handle);
void dw_scrollbar_set_pos(HWND handle, unsigned int position);
void dw_scrollbar_set_range(HWND handle, unsigned int range, unsigned int visible);
void dw_window_set_pos(HWND handle, long x, long y);
void dw_window_set_size(HWND handle, unsigned long width, unsigned long height);
void dw_window_set_pos_size(HWND handle, long x, long y, unsigned long width, unsigned long height);
void dw_window_get_pos_size(HWND handle, long *x, long *y, unsigned long *width, unsigned long *height);
void dw_window_get_preferred_size(HWND handle, int *width, int *height);
void dw_window_set_gravity(HWND handle, int horz, int vert);
void dw_window_set_style(HWND handle, unsigned long style, unsigned long mask);
void dw_window_set_icon(HWND handle, HICN icon);
void dw_window_set_bitmap(HWND handle, unsigned long id, const char *filename);
void dw_window_set_bitmap_from_data(HWND handle, unsigned long id, const char *data, int len);
char * dw_window_get_text(HWND handle);
void dw_window_set_text(HWND handle, const char *text);
void dw_window_set_tooltip(HWND handle, const char *bubbletext);
int dw_window_set_border(HWND handle, int border);
void dw_window_disable(HWND handle);
void dw_window_enable(HWND handle);
void dw_window_capture(HWND handle);
void dw_window_release(void);
void dw_window_reparent(HWND handle, HWND newparent);
void dw_window_set_pointer(HWND handle, int pointertype);
void dw_window_set_focus(HWND handle);
void dw_window_default(HWND window, HWND defaultitem);
void dw_window_click_default(HWND window, HWND next);
unsigned int dw_mle_import(HWND handle, const char *buffer, int startpoint);
void dw_mle_export(HWND handle, char *buffer, int startpoint, int length);
void dw_mle_get_size(HWND handle, unsigned long *bytes, unsigned long *lines);
void dw_mle_delete(HWND handle, int startpoint, int length);
void dw_mle_clear(HWND handle);
void dw_mle_freeze(HWND handle);
void dw_mle_thaw(HWND handle);
void dw_mle_set_cursor(HWND handle, int point);
void dw_mle_set_visible(HWND handle, int line);
void dw_mle_set_editable(HWND handle, int state);
void dw_mle_set_word_wrap(HWND handle, int state);
void dw_mle_set_auto_complete(HWND handle, int state);
int dw_mle_search(HWND handle, const char *text, int point, unsigned long flags);
void dw_spinbutton_set_pos(HWND handle, long position);
void dw_spinbutton_set_limits(HWND handle, long upper, long lower);
void dw_entryfield_set_limit(HWND handle, ULONG limit);
long dw_spinbutton_get_pos(HWND handle);
int dw_checkbox_get(HWND handle);
void dw_checkbox_set(HWND handle, int value);
HTREEITEM dw_tree_insert(HWND handle, const char *title, HICN icon, HTREEITEM parent, void *itemdata);
HTREEITEM dw_tree_insert_after(HWND handle, HTREEITEM item, const char *title, HICN icon, HTREEITEM parent, void *itemdata);
void dw_tree_clear(HWND handle);
void dw_tree_item_delete(HWND handle, HTREEITEM item);
void dw_tree_item_change(HWND handle, HTREEITEM item, const char *title, HICN icon);
void dw_tree_item_expand(HWND handle, HTREEITEM item);
void dw_tree_item_collapse(HWND handle, HTREEITEM item);
void dw_tree_item_select(HWND handle, HTREEITEM item);
void dw_tree_item_set_data(HWND handle, HTREEITEM item, void *itemdata);
void * dw_tree_item_get_data(HWND handle, HTREEITEM item);
char * dw_tree_get_title(HWND handle, HTREEITEM item);
HTREEITEM dw_tree_get_parent(HWND handle, HTREEITEM item);
int dw_container_setup(HWND handle, unsigned long *flags, char **titles, int count, int separator);
HICN dw_icon_load(unsigned long module, unsigned long id);
HICN dw_icon_load_from_file(const char *filename);
HICN dw_icon_load_from_data(const char *data, int len);
void dw_icon_free(HICN handle);
void * dw_container_alloc(HWND handle, int rowcount);
void dw_container_set_item(HWND handle, void *pointer, int column, int row, void *data);
void dw_container_change_item(HWND handle, int column, int row, void *data);
void dw_container_set_column_width(HWND handle, int column, int width);
void dw_container_set_row_title(void *pointer, int row, const char *title);
void dw_container_change_row_title(HWND handle, int row, const char *title);
void dw_container_set_row_data(void *pointer, int row, void *data);
void dw_container_change_row_data(HWND handle, int row, void *data);
void dw_container_insert(HWND handle, void *pointer, int rowcount);
void dw_container_clear(HWND handle, int redraw);
void dw_container_delete(HWND handle, int rowcount);
char * dw_container_query_start(HWND handle, unsigned long flags);
char * dw_container_query_next(HWND handle, unsigned long flags);
void dw_container_scroll(HWND handle, int direction, long rows);
void dw_container_cursor(HWND handle, const char *text);
void dw_container_cursor_by_data(HWND handle, void *data);
void dw_container_delete_row(HWND handle, const char *text);
void dw_container_delete_row_by_data(HWND handle, void *data);
void dw_container_optimize(HWND handle);
void dw_container_set_stripe(HWND handle, unsigned long oddcolor, unsigned long evencolor);
void dw_filesystem_set_column_title(HWND handle, const char *title);
int dw_filesystem_setup(HWND handle, unsigned long *flags, char **titles, int count);
void dw_filesystem_set_item(HWND handle, void *pointer, int column, int row, void *data);
void dw_filesystem_set_file(HWND handle, void *pointer, int row, const char *filename, HICN icon);
void dw_filesystem_change_item(HWND handle, int column, int row, void *data);
void dw_filesystem_change_file(HWND handle, int row, const char *filename, HICN icon);
int dw_container_get_column_type(HWND handle, int column);
int dw_filesystem_get_column_type(HWND handle, int column);
void dw_taskbar_insert(HWND handle, HICN icon, const char *bubbletext);
void dw_taskbar_delete(HWND handle, HICN icon);
int dw_screen_width(void);
int dw_screen_height(void);
unsigned long dw_color_depth_get(void);
HWND dw_notebook_new(unsigned long id, int top);
unsigned long dw_notebook_page_new(HWND handle, unsigned long flags, int front);
void dw_notebook_page_destroy(HWND handle, unsigned int pageid);
void dw_notebook_page_set_text(HWND handle, unsigned long pageid, const char *text);
void dw_notebook_page_set_status_text(HWND handle, unsigned long pageid, const char *text);
void dw_notebook_page_set(HWND handle, unsigned int pageid);
unsigned long dw_notebook_page_get(HWND handle);
void dw_notebook_pack(HWND handle, unsigned long pageid, HWND page);
HWND dw_splitbar_new(int type, HWND topleft, HWND bottomright, unsigned long id);
void dw_splitbar_set(HWND handle, float percent);
float dw_splitbar_get(HWND handle);
HMENUI dw_menu_new(unsigned long id);
HMENUI dw_menubar_new(HWND location);
HWND dw_menu_append_item(HMENUI menu, const char *title, unsigned long id, unsigned long flags, int end, int check, HMENUI submenu);
int dw_menu_delete_item(HMENUI menu, unsigned long id);
void dw_menu_item_set_check(HMENUI menu, unsigned long id, int check);
void dw_menu_item_set_state( HMENUI menux, unsigned long id, unsigned long state);
void dw_menu_popup(HMENUI *menu, HWND parent, int x, int y);
void dw_menu_destroy(HMENUI *menu);
void dw_pointer_query_pos(long *x, long *y);
void dw_pointer_set_pos(long x, long y);
void dw_window_function(HWND handle, void *function, void *data);
HWND dw_window_from_id(HWND handle, int id);
HMTX dw_mutex_new(void);
void dw_mutex_close(HMTX mutex);
void dw_mutex_lock(HMTX mutex);
int dw_mutex_trylock(HMTX mutex);
void dw_mutex_unlock(HMTX mutex);
HEV dw_event_new(void);
int dw_event_reset(HEV eve);
int dw_event_post(HEV eve);
int dw_event_wait(HEV eve, unsigned long timeout);
int dw_event_close (HEV *eve);
DWTID dw_thread_new(void *func, void *data, int stack);
void dw_thread_end(void);
DWTID dw_thread_id(void);
void dw_exit(int exitcode);
void dw_shutdown(void);
HWND dw_render_new(unsigned long id);
void dw_render_redraw(HWND handle);
void dw_color_foreground_set(unsigned long value);
void dw_color_background_set(unsigned long value);
unsigned long dw_color_choose(unsigned long value);
char * dw_font_choose(const char *currfont);
void dw_draw_point(HWND handle, HPIXMAP pixmap, int x, int y);
void dw_draw_line(HWND handle, HPIXMAP pixmap, int x1, int y1, int x2, int y2);
void dw_draw_rect(HWND handle, HPIXMAP pixmap, int fill, int x, int y, int width, int height);
void dw_draw_polygon(HWND handle, HPIXMAP pixmap, int fill, int npoints, int *x, int *y);
void dw_draw_arc(HWND handle, HPIXMAP pixmap, int flags, int xorigin, int yorigin, int x1, int y1, int x2, int y2);
void dw_draw_text(HWND handle, HPIXMAP pixmap, int x, int y, const char *text);
void dw_font_text_extents_get(HWND handle, HPIXMAP pixmap, const char *text, int *width, int *height);
void dw_font_set_default(const char *fontname);
void dw_flush(void);
void dw_pixmap_bitblt(HWND dest, HPIXMAP destp, int xdest, int ydest, int width, int height, HWND src, HPIXMAP srcp, int xsrc, int ysrc);
int dw_pixmap_stretch_bitblt(HWND dest, HPIXMAP destp, int xdest, int ydest, int width, int height, HWND src, HPIXMAP srcp, int xsrc, int ysrc, int srcwidth, int srcheight);
HPIXMAP dw_pixmap_new(HWND handle, unsigned long width, unsigned long height, int depth);
HPIXMAP dw_pixmap_new_from_file(HWND handle, const char *filename);
HPIXMAP dw_pixmap_new_from_data(HWND handle, const char *data, int len);
HPIXMAP dw_pixmap_grab(HWND handle, ULONG id);
void dw_pixmap_set_transparent_color( HPIXMAP pixmap, ULONG color );
int dw_pixmap_set_font(HPIXMAP pixmap, const char *fontname);
void dw_pixmap_destroy(HPIXMAP pixmap);
void dw_beep(int freq, int dur);
void dw_debug(const char *format, ...);
int dw_messagebox(const char *title, int flags, const char *format, ...);
void dw_environment_query(DWEnv *env);
int dw_exec(const char *program, int type, char **params);
int dw_browse(const char *url);
char * dw_file_browse(const char *title, const char *defpath, const char *ext, int flags);
char * dw_user_dir(void);
char * dw_app_dir(void);
int dw_app_id_set(const char *appid, const char *appname);
DWDialog * dw_dialog_new(void *data);
int dw_dialog_dismiss(DWDialog *dialog, void *result);
void * dw_dialog_wait(DWDialog *dialog);
void dw_window_set_data(HWND window, const char *dataname, void *data);
void * dw_window_get_data(HWND window, const char *dataname);
int dw_window_compare(HWND window1, HWND window2);
int dw_module_load(const char *name, HMOD *handle);
int dw_module_symbol(HMOD handle, const char *name, void**func);
int dw_module_close(HMOD handle);
HTIMER dw_timer_connect(int interval, void *sigfunc, void *data);
void dw_timer_disconnect(HTIMER timerid);
void dw_signal_connect(HWND window, const char *signame, void *sigfunc, void *data);
void dw_signal_connect_data(HWND window, const char *signame, void *sigfunc, void *discfunc, void *data);
void dw_signal_disconnect_by_window(HWND window);
void dw_signal_disconnect_by_data(HWND window, void *data);
void dw_signal_disconnect_by_name(HWND window, const char *signame);
HEV dw_named_event_new(const char *name);
HEV dw_named_event_get(const char *name);
int dw_named_event_reset(HEV eve);
int dw_named_event_post(HEV eve);
int dw_named_event_wait(HEV eve, unsigned long timeout);
int dw_named_event_close(HEV eve);
HSHM dw_named_memory_new(void **dest, int size, const char *name);
HSHM dw_named_memory_get(void **dest, int size, const char *name);
int dw_named_memory_free(HSHM handle, void *ptr);
void dw_html_action(HWND hwnd, int action);
int dw_html_raw(HWND hwnd, const char *string);
int dw_html_url(HWND hwnd, const char *url);
int dw_html_javascript_run(HWND hwnd, const char *script, void *scriptdata);
HWND dw_html_new(unsigned long id);
char * dw_clipboard_get_text(void);
void dw_clipboard_set_text(const char *str, int len);
HWND dw_calendar_new(unsigned long id);
void dw_calendar_set_date(HWND window, unsigned int year, unsigned int month, unsigned int day);
void dw_calendar_get_date(HWND window, unsigned int *year, unsigned int *month, unsigned int *day);
HPRINT dw_print_new(const char *jobname, unsigned long flags, unsigned int pages, void *drawfunc, void *drawdata);
int dw_print_run(HPRINT print, unsigned long flags);
void dw_print_cancel(HPRINT print);
HWND dw_notification_new(const char *title, const char *imagepath, const char *description, ...);
int dw_notification_send(HWND notification);
wchar_t * dw_utf8_to_wchar(const char *utf8string);
char * dw_wchar_to_utf8(const wchar_t *wstring);
int dw_feature_get(DWFEATURE feature);
int dw_feature_set(DWFEATURE feature, int state);
/* Exported for language bindings */
void _dw_init_thread(void);
void _dw_deinit_thread(void);
char ** _dw_convertargs(int *count, char *start, HINSTANCE hInstance);
