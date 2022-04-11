unit dw;
interface

{$mode objfpc}

{$MACRO ON} 

uses Windows;

const
  DW_MAJOR_VERSION = 3;  
  DW_MINOR_VERSION = 2;  
  DW_SUB_VERSION = 0;  
  DW_HOME_URL = 'http://dwindows.netlabs.org';  

  DW_CLR_BLACK = 0;  
  DW_CLR_DARKRED = 1;  
  DW_CLR_DARKGREEN = 2;  
  DW_CLR_BROWN = 3;  
  DW_CLR_DARKBLUE = 4;  
  DW_CLR_DARKPINK = 5;  
  DW_CLR_DARKCYAN = 6;  
  DW_CLR_PALEGRAY = 7;  
  DW_CLR_DARKGRAY = 8;  
  DW_CLR_RED = 9;  
  DW_CLR_GREEN = 10;  
  DW_CLR_YELLOW = 11;  
  DW_CLR_BLUE = 12;  
  DW_CLR_PINK = 13;  
  DW_CLR_CYAN = 14;  
  DW_CLR_WHITE = 15;  
  DW_CLR_DEFAULT = 16;  

  DW_SIGNAL_CONFIGURE = 'configure_event';  
  DW_SIGNAL_KEY_PRESS = 'key_press_event';  
  DW_SIGNAL_BUTTON_PRESS = 'button_press_event';  
  DW_SIGNAL_BUTTON_RELEASE = 'button_release_event';  
  DW_SIGNAL_MOTION_NOTIFY = 'motion_notify_event';  
  DW_SIGNAL_DELETE = 'delete_event';  
  DW_SIGNAL_EXPOSE = 'expose_event';  
  DW_SIGNAL_CLICKED = 'clicked';  
  DW_SIGNAL_ITEM_ENTER = 'container-select';  
  DW_SIGNAL_ITEM_CONTEXT = 'container-context';  
  DW_SIGNAL_ITEM_SELECT = 'tree-select';  
  DW_SIGNAL_LIST_SELECT = 'item-select';  
  DW_SIGNAL_SET_FOCUS = 'set-focus';  
  DW_SIGNAL_VALUE_CHANGED = 'value_changed';  
  DW_SIGNAL_SWITCH_PAGE = 'switch-page';  
  DW_SIGNAL_COLUMN_CLICK = 'click-column';  
  DW_SIGNAL_TREE_EXPAND = 'tree-expand';  
  DW_SIGNAL_HTML_CHANGED = 'html-changed';  
  DW_SIGNAL_HTML_RESULT = 'html-result';  

  DW_MIS_ENABLED = 1;  
  DW_MIS_DISABLED = 1 shl 1;  
  DW_MIS_CHECKED = 1 shl 2;  
  DW_MIS_UNCHECKED = 1 shl 3;  

  DW_GRAV_TOP = 0;  
  DW_GRAV_LEFT = 0;  
  DW_GRAV_CENTER = 1;  
  DW_GRAV_RIGHT = 2;  
  DW_GRAV_BOTTOM = 2;  
  DW_GRAV_OBSTACLES = 1 shl 10;  

  DW_SIZE_AUTO = -1;  

  _DW_TYPE_BOX = 0;  
  _DW_TYPE_ITEM = 1;  
  _DW_SPLITBAR_WIDTH = 4;  
  _DW_SIZE_STATIC = 0;  
  _DW_SIZE_EXPAND = 1;
  
  DW_DT_LEFT = SS_LEFTNOWORDWRAP;  
  DW_DT_QUERYEXTENT = 0;  
  DW_DT_UNDERSCORE = 0;  
  DW_DT_STRIKEOUT = 0;  
  DW_DT_TEXTATTRS = 0;  
  DW_DT_EXTERNALLEADING = 0;  
  DW_DT_CENTER = SS_CENTER;  
  DW_DT_RIGHT = SS_RIGHT;  
  DW_DT_TOP = 0;  
  DW_DT_VCENTER = 1 shl 29;  
  DW_DT_BOTTOM = 0;  
  DW_DT_HALFTONE = 0;  
  DW_DT_MNEMONIC = 0;  
  DW_DT_WORDBREAK = 1 shl 28;  
  DW_DT_ERASERECT = 0;  
  DW_FCF_CLOSEBUTTON = 0;  
  DW_FCF_TITLEBAR = WS_CAPTION;  
  DW_FCF_SYSMENU = WS_SYSMENU;  
  DW_FCF_MENU = 0;  
  DW_FCF_SIZEBORDER = WS_THICKFRAME;  
  DW_FCF_MINBUTTON = WS_MINIMIZEBOX;  
  DW_FCF_MAXBUTTON = WS_MAXIMIZEBOX;  
  DW_FCF_MINMAX = WS_MINIMIZEBOX or WS_MAXIMIZEBOX;  
  DW_FCF_DLGBORDER = WS_DLGFRAME;  
  DW_FCF_BORDER = WS_BORDER;  
  DW_FCF_TASKLIST = 1 shl 1;  
  DW_FCF_NOMOVEWITHOWNER = 0;  
  DW_FCF_SYSMODAL = 0;  
  DW_FCF_HIDEBUTTON = WS_MINIMIZEBOX;  
  DW_FCF_HIDEMAX = WS_MINIMIZEBOX or WS_MAXIMIZEBOX;  
  DW_FCF_AUTOICON = 0;  
  DW_FCF_MAXIMIZE = WS_MAXIMIZE;  
  DW_FCF_MINIMIZE = WS_MINIMIZE;  
  DW_FCF_COMPOSITED = 1;  
  DW_FCF_TEXTURED = 0;  
  DW_FCF_FULLSCREEN = 1 shl 2;  
  DW_CFA_BITMAPORICON = 1;  
  DW_CFA_STRING = 1 shl 1;  
  DW_CFA_ULONG = 1 shl 2;  
  DW_CFA_TIME = 1 shl 3;  
  DW_CFA_DATE = 1 shl 4;  
  DW_CFA_CENTER = 1 shl 5;  
  DW_CFA_LEFT = 1 shl 6;  
  DW_CFA_RIGHT = 1 shl 7;  
  DW_CFA_STRINGANDICON = 1 shl 8;  
  DW_CFA_HORZSEPARATOR = 0;  
  DW_CFA_SEPARATOR = 0;  
  DW_CRA_SELECTED = LVNI_SELECTED;  
  DW_CRA_CURSORED = LVNI_FOCUSED;  
  DW_CR_RETDATA = 1 shl 10;  
  DW_LS_MULTIPLESEL = LBS_MULTIPLESEL;  
  DW_LIT_NONE = -(1);  
  DW_MLE_CASESENSITIVE = 1;  
  DW_BS_NOBORDER = BS_FLAT;  
  DW_POINTER_DEFAULT = 0;  
  DW_POINTER_ARROW = 32512;  
  DW_POINTER_CLOCK = 32514;  
  DW_POINTER_QUESTION = 32651;  

  DW_MB_OK = MB_OK;  
  DW_MB_OKCANCEL = MB_OKCANCEL;  
  DW_MB_YESNO = MB_YESNO;  
  DW_MB_YESNOCANCEL = MB_YESNOCANCEL;  
  DW_MB_WARNING = MB_ICONWARNING;  
  DW_MB_ERROR = MB_ICONERROR;  
  DW_MB_INFORMATION = MB_ICONINFORMATION;  
  DW_MB_QUESTION = MB_ICONQUESTION;  

  KC_CTRL = 1;  
  KC_SHIFT = 1 shl 1;  
  KC_ALT = 1 shl 2;
  
  DW_DIR_SEPARATOR = '\\';
  
  DW_DARK_MODE_DISABLED = 0;  
  DW_DARK_MODE_BASIC = 1;  
  DW_DARK_MODE_FULL = 2;  
  DW_DARK_MODE_FORCED = 3;  

  _DW_APP_ID_SIZE = 100;  

  _DW_ENV_STRING_SIZE = 257;    
  
  DW_DESKTOP = HWND_DESKTOP;  
  DW_MINIMIZED = 1;  
  DW_BUTTON1_MASK = 1;  
  DW_BUTTON2_MASK = 1 shl 1;  
  DW_BUTTON3_MASK = 1 shl 2;  
  DW_EXEC_CON = 0;  
  DW_EXEC_GUI = 1;  
  DW_FILE_OPEN = 0;  
  DW_FILE_SAVE = 1;  
  DW_DIRECTORY_OPEN = 2;  
  DW_HORZ = 0;  
  DW_VERT = 1;  
  
  BOXHORZ = DW_HORZ;  
  BOXVERT = DW_VERT;  
  DW_FCF_SHELLPOSITION = 0;  
  DW_FCF_NOBYTEALIGN = 0;  
  DW_FCF_VERTSCROLL = 0;  
  DW_FCF_HORZSCROLL = 0;  

  DW_SCROLL_UP = 0;  
  DW_SCROLL_DOWN = 1;  
  DW_SCROLL_TOP = 2;  
  DW_SCROLL_BOTTOM = 3;  

  DW_MB_RETURN_OK = 0;  
  DW_MB_RETURN_YES = 1;  
  DW_MB_RETURN_NO = 0;  
  DW_MB_RETURN_CANCEL = 2;  
  
  DW_RGB_COLOR = $F0000000;  
  DW_RGB_TRANSPARENT = $0F000000;  
  DW_RGB_MASK = $00FFFFFF;  
  DW_RED_MASK = $000000FF;  
  DW_GREEN_MASK = $0000FF00;  
  DW_BLUE_MASK = $00FF0000;  
  
  DW_MENU_SEPARATOR = '';  
  DW_NOMENU = 0;  
  DW_MENU_AUTO = 0;  
  
  DW_NOHWND = 0;  
  DW_NOHTIMER = 0;  
  DW_NOHPRINT = 0;  
  DW_NOHPIXMAP = 0;  
  DW_NOHICN = 0;  
  
  DW_ERROR_NONE = 0;  
  DW_ERROR_GENERAL = 1;  
  DW_ERROR_TIMEOUT = 2;  
  DW_ERROR_NON_INIT = 3;  
  DW_ERROR_NO_MEM = 4;  
  DW_ERROR_INTERRUPT = 5;  
  DW_ERROR_UNKNOWN = -1;  

  DW_HTML_GOBACK = 0;  
  DW_HTML_GOFORWARD = 1;  
  DW_HTML_GOHOME = 2;  
  DW_HTML_SEARCH = 3;  
  DW_HTML_RELOAD = 4;  
  DW_HTML_STOP = 5;  
  DW_HTML_PRINT = 6;  

  DW_HTML_CHANGE_STARTED = 1;  
  DW_HTML_CHANGE_REDIRECT = 2;  
  DW_HTML_CHANGE_LOADING = 3;  
  DW_HTML_CHANGE_COMPLETE = 4;  

  DW_DRAW_DEFAULT = 0;  
  DW_DRAW_FILL = 1;  
  DW_DRAW_FULL = 1 shl 1;  
  DW_DRAW_NOAA = 1 shl 2;  

  DW_MLE_COMPLETE_TEXT = 1;  
  DW_MLE_COMPLETE_DASH = 1 shl 1;  
  DW_MLE_COMPLETE_QUOTE = 1 shl 2;  

  DW_FEATURE_UNSUPPORTED = -1;  
  DW_FEATURE_DISABLED = 0;  
  DW_FEATURE_ENABLED = 1;  
  
  _DW_SCROLLED_MIN_WIDTH = 100;  
  _DW_SCROLLED_MIN_HEIGHT = 75;  
  _DW_SCROLLED_MAX_WIDTH = 500;  
  _DW_SCROLLED_MAX_HEIGHT = 400;  

  DW_APP_DOMAIN_DEFAULT = 'org.dbsoft.dwindows';  
  
  DW_TIMEOUT_INFINITE = high(dword);
  DW_MENU_POPUP_ = high(dword);
  DW_PERCENT_INDETERMINATE = high(dword);

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

type  
  HMTX = HANDLE;

  HEV = HANDLE;
  
  PHEV  = ^HEV;

  HMOD = HANDLE;
  
  PHMOD  = ^HMOD;

  HSHM = HANDLE;

  HICN = HANDLE;
  
  HMENUI = HWND;
  
  PHMENUI  = ^HMENUI;
  
  DWTID = dword;
  
  HTIMER = longint;
  
  HPRINT = pointer;

  UserData = record
      next : ^UserData;
      data : pointer;
      varname : Pchar;
  end;

  ColorInfo = record
      fore : longint;
      back : longint;
      combo : HWND;
      buddy : HWND;
      style : ULONG;
      rect : RECT;
      clickdefault : HWND;
      hbrush : HBRUSH;
      hfont : HFONT;
      hmenu : HMENU;
      fontname : array[0..127] of char;
      pOldProc : WNDPROC;
      root : ^UserData;
  end;

  NotebookPage = record
      cinfo : ColorInfo;
      item : TC_ITEM;
      hwnd : HWND;
      realid : longint;
  end;

  ContainerInfo = record
      cinfo : ColorInfo;
      flags : ^ULONG;
      columns : ULONG;
      odd : COLORREF;
      even : COLORREF;
  end;

  _hpixmap = record
      width : dword;
      height : dword;
      hbm : HBITMAP;
      hdc : HDC;
      transcolor : dword;
      handle : HWND;
      bits : pointer;
      depth : dword;
      font : HFONT;
  end;

  HPIXMAP = ^_hpixmap;

  Item = record
      _type : longint;
      hwnd : HWND;
      width : longint;
      height : longint;
      origwidth : longint;
      origheight : longint;
      hsize : longint;
      vsize : longint;
      pad : longint;
  end;

  Box = record
      cinfo : ColorInfo;
      fullscreen : longint;
      count : longint;
      _type : longint;
      hsize : longint;
      vsize : longint;
      pad : longint;
      grouppadx : longint;
      grouppady : longint;
      grouphwnd : HWND;
      defaultitem : HWND;
      usedpadx : longint;
      usedpady : longint;
      minheight : longint;
      minwidth : longint;
      width : longint;
      height : longint;
      flags : dword;
      items : ^Item;
  end;

  CDATE = record
      day : UCHAR;
      month : UCHAR;
      year : USHORT;
  end;

  CTIME = record
      hours : UCHAR;
      minutes : UCHAR;
      seconds : UCHAR;
      ucReserved : UCHAR;
  end;

  DWEnv = record
      osName : array[0..(_DW_ENV_STRING_SIZE)-1] of char;
      buildDate : array[0..(_DW_ENV_STRING_SIZE)-1] of char;
      buildTime : array[0..(_DW_ENV_STRING_SIZE)-1] of char;
      MajorVersion : smallint;
      MinorVersion : smallint;
      MajorBuild : smallint;
      MinorBuild : smallint;
      DWMajorVersion : smallint;
      DWMinorVersion : smallint;
      DWSubVersion : smallint;
      htmlEngine : array[0..(_DW_ENV_STRING_SIZE)-1] of char;
  end;
  
  PDWEnv  = ^DWEnv;

  DWExpose = record
      x : longint;
      y : longint;
      width : longint;
      height : longint;
  end;

  DWDialog = record
      eve : HEV;
      done : longint;
      method : longint;
      data : pointer;
      result : pointer;
  end;
  
  PDWDialog  = ^DWDialog;
  
  DWFEATURE = (DW_FEATURE_HTML := 0,DW_FEATURE_HTML_RESULT,
    DW_FEATURE_WINDOW_BORDER,DW_FEATURE_WINDOW_TRANSPARENCY,
    DW_FEATURE_DARK_MODE,DW_FEATURE_MLE_AUTO_COMPLETE,
    DW_FEATURE_MLE_WORD_WRAP,DW_FEATURE_CONTAINER_STRIPE,
    DW_FEATURE_MDI,DW_FEATURE_NOTEBOOK_STATUS_TEXT,
    DW_FEATURE_NOTIFICATION,DW_FEATURE_UTF8_UNICODE,
    DW_FEATURE_MLE_RICH_EDIT,DW_FEATURE_TASK_BAR,
    DW_FEATURE_TREE,DW_FEATURE_WINDOW_PLACEMENT,
    DW_FEATURE_MAX);

{$define DW_SIGNAL_FUNC(a):= pointer(a)}

function DW_PIXMAP_WIDTH(x : HPIXMAP) : dword;

function DW_PIXMAP_HEIGHT(x : HPIXMAP) : dword;

{$define DW_RED_VALUE(a):= a and DW_RED_MASK}

{$define DW_GREEN_VALUE(a):= a and DW_GREEN_MASK}

{$define DW_BLUE_VALUE(a):= a and DW_BLUE_MASK}

{$define DW_RGB(a, b, c):=(($F0000000 or a) or (b shl 8)) or (c shl 16)}

function DW_RESOURCE(a : dword) : HICN;

{$define dw_pointer_get_pos(a, b):= dw_pointer_query_pos(a, b)}

{$define dw_environment_get(a):= dw_environment_query(a)}

{$define dw_container_get_start(a, b):= dw_container_query_start(a, b)}

{$define dw_container_get_next(a, b):= dw_container_query_next(a, b)}

  procedure dw_box_pack_start(box:HWND; item:HWND; width:longint; height:longint; hsize:longint; 
              vsize:longint; pad:longint);cdecl;external 'dw.dll' name 'dw_box_pack_start';
  procedure dw_box_pack_end(box:HWND; item:HWND; width:longint; height:longint; hsize:longint; 
              vsize:longint; pad:longint);cdecl;external 'dw.dll' name 'dw_box_pack_end';
  procedure dw_box_pack_at_index(box:HWND; item:HWND; index:longint; width:longint; height:longint; 
              hsize:longint; vsize:longint; pad:longint);cdecl;external 'dw.dll' name 'dw_box_pack_at_index';
  function dw_box_unpack_at_index(box:HWND; index:longint):HWND;cdecl;external 'dw.dll' name 'dw_box_unpack_at_index';
  function dw_box_unpack(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_box_unpack';
  function dw_init(newthread:longint; argc:longint; argv:PPchar):longint;cdecl;external 'dw.dll' name 'dw_init';
  procedure dw_main;cdecl;external 'dw.dll' name 'dw_main';
  procedure dw_main_quit;cdecl;external 'dw.dll' name 'dw_main_quit';
  procedure dw_main_sleep(seconds:longint);cdecl;external 'dw.dll' name 'dw_main_sleep';
  procedure dw_main_iteration;cdecl;external 'dw.dll' name 'dw_main_iteration';
  procedure dw_free(ptr:pointer);cdecl;external 'dw.dll' name 'dw_free';
  function dw_window_show(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_window_show';
  function dw_window_hide(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_window_hide';
  function dw_window_minimize(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_window_minimize';
  function dw_window_raise(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_window_raise';
  function dw_window_lower(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_window_lower';
  function dw_window_destroy(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_window_destroy';
  procedure dw_window_redraw(handle:HWND);cdecl;external 'dw.dll' name 'dw_window_redraw';
  function dw_window_set_font(handle:HWND; fontname:Pchar):longint;cdecl;external 'dw.dll' name 'dw_window_set_font';
  function dw_window_get_font(handle:HWND):Pchar;cdecl;external 'dw.dll' name 'dw_window_get_font';
  function dw_window_set_color(handle:HWND; fore:dword; back:dword):longint;cdecl;external 'dw.dll' name 'dw_window_set_color';
  function dw_window_new(hwndOwner:HWND; title:Pchar; flStyle:dword):HWND;cdecl;external 'dw.dll' name 'dw_window_new';
  function dw_box_new(_type:longint; pad:longint):HWND;cdecl;external 'dw.dll' name 'dw_box_new';
  function dw_scrollbox_new(_type:longint; pad:longint):HWND;cdecl;external 'dw.dll' name 'dw_scrollbox_new';
  function dw_scrollbox_get_pos(handle:HWND; orient:longint):longint;cdecl;external 'dw.dll' name 'dw_scrollbox_get_pos';
  function dw_scrollbox_get_range(handle:HWND; orient:longint):longint;cdecl;external 'dw.dll' name 'dw_scrollbox_get_range';
  function dw_groupbox_new(_type:longint; pad:longint; title:Pchar):HWND;cdecl;external 'dw.dll' name 'dw_groupbox_new';
  function dw_mdi_new(id:dword):HWND;cdecl;external 'dw.dll' name 'dw_mdi_new';
  function dw_bitmap_new(id:dword):HWND;cdecl;external 'dw.dll' name 'dw_bitmap_new';
  function dw_bitmapbutton_new(text:Pchar; id:dword):HWND;cdecl;external 'dw.dll' name 'dw_bitmapbutton_new';
  function dw_bitmapbutton_new_from_file(text:Pchar; id:dword; filename:Pchar):HWND;cdecl;external 'dw.dll' name 'dw_bitmapbutton_new_from_file';
  function dw_bitmapbutton_new_from_data(text:Pchar; id:dword; str:Pchar; len:longint):HWND;cdecl;external 'dw.dll' name 'dw_bitmapbutton_new_from_data';
  function dw_container_new(id:dword; multi:longint):HWND;cdecl;external 'dw.dll' name 'dw_container_new';
  function dw_tree_new(id:dword):HWND;cdecl;external 'dw.dll' name 'dw_tree_new';
  function dw_text_new(text:Pchar; id:dword):HWND;cdecl;external 'dw.dll' name 'dw_text_new';
  function dw_status_text_new(text:Pchar; id:dword):HWND;cdecl;external 'dw.dll' name 'dw_status_text_new';
  function dw_mle_new(id:dword):HWND;cdecl;external 'dw.dll' name 'dw_mle_new';
  function dw_entryfield_new(text:Pchar; id:dword):HWND;cdecl;external 'dw.dll' name 'dw_entryfield_new';
  function dw_entryfield_password_new(text:Pchar; id:ULONG):HWND;cdecl;external 'dw.dll' name 'dw_entryfield_password_new';
  function dw_combobox_new(text:Pchar; id:dword):HWND;cdecl;external 'dw.dll' name 'dw_combobox_new';
  function dw_button_new(text:Pchar; id:dword):HWND;cdecl;external 'dw.dll' name 'dw_button_new';
  function dw_spinbutton_new(text:Pchar; id:dword):HWND;cdecl;external 'dw.dll' name 'dw_spinbutton_new';
  function dw_radiobutton_new(text:Pchar; id:ULONG):HWND;cdecl;external 'dw.dll' name 'dw_radiobutton_new';
  function dw_percent_new(id:dword):HWND;cdecl;external 'dw.dll' name 'dw_percent_new';
  function dw_slider_new(vertical:longint; increments:longint; id:ULONG):HWND;cdecl;external 'dw.dll' name 'dw_slider_new';
  function dw_scrollbar_new(vertical:longint; id:ULONG):HWND;cdecl;external 'dw.dll' name 'dw_scrollbar_new';
  function dw_checkbox_new(text:Pchar; id:dword):HWND;cdecl;external 'dw.dll' name 'dw_checkbox_new';
  function dw_listbox_new(id:dword; multi:longint):HWND;cdecl;external 'dw.dll' name 'dw_listbox_new';
  procedure dw_listbox_append(handle:HWND; text:Pchar);cdecl;external 'dw.dll' name 'dw_listbox_append';
  procedure dw_listbox_insert(handle:HWND; text:Pchar; pos:longint);cdecl;external 'dw.dll' name 'dw_listbox_insert';
  procedure dw_listbox_list_append(handle:HWND; text:PPchar; count:longint);cdecl;external 'dw.dll' name 'dw_listbox_list_append';
  procedure dw_listbox_clear(handle:HWND);cdecl;external 'dw.dll' name 'dw_listbox_clear';
  function dw_listbox_count(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_listbox_count';
  procedure dw_listbox_set_top(handle:HWND; top:longint);cdecl;external 'dw.dll' name 'dw_listbox_set_top';
  procedure dw_listbox_select(handle:HWND; index:longint; state:longint);cdecl;external 'dw.dll' name 'dw_listbox_select';
  procedure dw_listbox_delete(handle:HWND; index:longint);cdecl;external 'dw.dll' name 'dw_listbox_delete';
  procedure dw_listbox_get_text(handle:HWND; index:dword; buffer:Pchar; length:dword);cdecl;external 'dw.dll' name 'dw_listbox_get_text';
  procedure dw_listbox_set_text(handle:HWND; index:dword; buffer:Pchar);cdecl;external 'dw.dll' name 'dw_listbox_set_text';
  function dw_listbox_selected(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_listbox_selected';
  function dw_listbox_selected_multi(handle:HWND; where:longint):longint;cdecl;external 'dw.dll' name 'dw_listbox_selected_multi';
  procedure dw_percent_set_pos(handle:HWND; position:dword);cdecl;external 'dw.dll' name 'dw_percent_set_pos';
  function dw_slider_get_pos(handle:HWND):dword;cdecl;external 'dw.dll' name 'dw_slider_get_pos';
  procedure dw_slider_set_pos(handle:HWND; position:dword);cdecl;external 'dw.dll' name 'dw_slider_set_pos';
  function dw_scrollbar_get_pos(handle:HWND):dword;cdecl;external 'dw.dll' name 'dw_scrollbar_get_pos';
  procedure dw_scrollbar_set_pos(handle:HWND; position:dword);cdecl;external 'dw.dll' name 'dw_scrollbar_set_pos';
  procedure dw_scrollbar_set_range(handle:HWND; range:dword; visible:dword);cdecl;external 'dw.dll' name 'dw_scrollbar_set_range';
  procedure dw_window_set_pos(handle:HWND; x:longint; y:longint);cdecl;external 'dw.dll' name 'dw_window_set_pos';
  procedure dw_window_set_size(handle:HWND; width:dword; height:dword);cdecl;external 'dw.dll' name 'dw_window_set_size';
  procedure dw_window_set_pos_size(handle:HWND; x:longint; y:longint; width:dword; height:dword);cdecl;external 'dw.dll' name 'dw_window_set_pos_size';
  procedure dw_window_get_pos_size(handle:HWND; x:Plongint; y:Plongint; width:Pdword; height:Pdword);cdecl;external 'dw.dll' name 'dw_window_get_pos_size';
  procedure dw_window_get_preferred_size(handle:HWND; width:Plongint; height:Plongint);cdecl;external 'dw.dll' name 'dw_window_get_preferred_size';
  procedure dw_window_set_gravity(handle:HWND; horz:longint; vert:longint);cdecl;external 'dw.dll' name 'dw_window_set_gravity';
  procedure dw_window_set_style(handle:HWND; style:dword; mask:dword);cdecl;external 'dw.dll' name 'dw_window_set_style';
  procedure dw_window_set_icon(handle:HWND; icon:HICN);cdecl;external 'dw.dll' name 'dw_window_set_icon';
  procedure dw_window_set_bitmap(handle:HWND; id:dword; filename:Pchar);cdecl;external 'dw.dll' name 'dw_window_set_bitmap';
  procedure dw_window_set_bitmap_from_data(handle:HWND; id:dword; data:Pchar; len:longint);cdecl;external 'dw.dll' name 'dw_window_set_bitmap_from_data';
  function dw_window_get_text(handle:HWND):Pchar;cdecl;external 'dw.dll' name 'dw_window_get_text';
  procedure dw_window_set_text(handle:HWND; text:Pchar);cdecl;external 'dw.dll' name 'dw_window_set_text';
  procedure dw_window_set_tooltip(handle:HWND; bubbletext:Pchar);cdecl;external 'dw.dll' name 'dw_window_set_tooltip';
  function dw_window_set_border(handle:HWND; border:longint):longint;cdecl;external 'dw.dll' name 'dw_window_set_border';
  procedure dw_window_disable(handle:HWND);cdecl;external 'dw.dll' name 'dw_window_disable';
  procedure dw_window_enable(handle:HWND);cdecl;external 'dw.dll' name 'dw_window_enable';
  procedure dw_window_capture(handle:HWND);cdecl;external 'dw.dll' name 'dw_window_capture';
  procedure dw_window_release;cdecl;external 'dw.dll' name 'dw_window_release';
  procedure dw_window_reparent(handle:HWND; newparent:HWND);cdecl;external 'dw.dll' name 'dw_window_reparent';
  procedure dw_window_set_pointer(handle:HWND; pointertype:longint);cdecl;external 'dw.dll' name 'dw_window_set_pointer';
  procedure dw_window_set_focus(handle:HWND);cdecl;external 'dw.dll' name 'dw_window_set_focus';
  procedure dw_window_default(window:HWND; defaultitem:HWND);cdecl;external 'dw.dll' name 'dw_window_default';
  procedure dw_window_click_default(window:HWND; next:HWND);cdecl;external 'dw.dll' name 'dw_window_click_default';
  function dw_mle_import(handle:HWND; buffer:Pchar; startpoint:longint):dword;cdecl;external 'dw.dll' name 'dw_mle_import';
  procedure dw_mle_export(handle:HWND; buffer:Pchar; startpoint:longint; length:longint);cdecl;external 'dw.dll' name 'dw_mle_export';
  procedure dw_mle_get_size(handle:HWND; bytes:Pdword; lines:Pdword);cdecl;external 'dw.dll' name 'dw_mle_get_size';
  procedure dw_mle_delete(handle:HWND; startpoint:longint; length:longint);cdecl;external 'dw.dll' name 'dw_mle_delete';
  procedure dw_mle_clear(handle:HWND);cdecl;external 'dw.dll' name 'dw_mle_clear';
  procedure dw_mle_freeze(handle:HWND);cdecl;external 'dw.dll' name 'dw_mle_freeze';
  procedure dw_mle_thaw(handle:HWND);cdecl;external 'dw.dll' name 'dw_mle_thaw';
  procedure dw_mle_set_cursor(handle:HWND; point:longint);cdecl;external 'dw.dll' name 'dw_mle_set_cursor';
  procedure dw_mle_set_visible(handle:HWND; line:longint);cdecl;external 'dw.dll' name 'dw_mle_set_visible';
  procedure dw_mle_set_editable(handle:HWND; state:longint);cdecl;external 'dw.dll' name 'dw_mle_set_editable';
  procedure dw_mle_set_word_wrap(handle:HWND; state:longint);cdecl;external 'dw.dll' name 'dw_mle_set_word_wrap';
  procedure dw_mle_set_auto_complete(handle:HWND; state:longint);cdecl;external 'dw.dll' name 'dw_mle_set_auto_complete';
  function dw_mle_search(handle:HWND; text:Pchar; point:longint; flags:dword):longint;cdecl;external 'dw.dll' name 'dw_mle_search';
  procedure dw_spinbutton_set_pos(handle:HWND; position:longint);cdecl;external 'dw.dll' name 'dw_spinbutton_set_pos';
  procedure dw_spinbutton_set_limits(handle:HWND; upper:longint; lower:longint);cdecl;external 'dw.dll' name 'dw_spinbutton_set_limits';
  procedure dw_entryfield_set_limit(handle:HWND; limit:ULONG);cdecl;external 'dw.dll' name 'dw_entryfield_set_limit';
  function dw_spinbutton_get_pos(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_spinbutton_get_pos';
  function dw_checkbox_get(handle:HWND):longint;cdecl;external 'dw.dll' name 'dw_checkbox_get';
  procedure dw_checkbox_set(handle:HWND; value:longint);cdecl;external 'dw.dll' name 'dw_checkbox_set';
  function dw_tree_insert(handle:HWND; title:Pchar; icon:HICN; parent:HTREEITEM; itemdata:pointer):HTREEITEM;cdecl;external 'dw.dll' name 'dw_tree_insert';
  function dw_tree_insert_after(handle:HWND; item:HTREEITEM; title:Pchar; icon:HICN; parent:HTREEITEM; 
             itemdata:pointer):HTREEITEM;cdecl;external 'dw.dll' name 'dw_tree_insert_after';
  procedure dw_tree_clear(handle:HWND);cdecl;external 'dw.dll' name 'dw_tree_clear';
  procedure dw_tree_item_delete(handle:HWND; item:HTREEITEM);cdecl;external 'dw.dll' name 'dw_tree_item_delete';
  procedure dw_tree_item_change(handle:HWND; item:HTREEITEM; title:Pchar; icon:HICN);cdecl;external 'dw.dll' name 'dw_tree_item_change';
  procedure dw_tree_item_expand(handle:HWND; item:HTREEITEM);cdecl;external 'dw.dll' name 'dw_tree_item_expand';
  procedure dw_tree_item_collapse(handle:HWND; item:HTREEITEM);cdecl;external 'dw.dll' name 'dw_tree_item_collapse';
  procedure dw_tree_item_select(handle:HWND; item:HTREEITEM);cdecl;external 'dw.dll' name 'dw_tree_item_select';
  procedure dw_tree_item_set_data(handle:HWND; item:HTREEITEM; itemdata:pointer);cdecl;external 'dw.dll' name 'dw_tree_item_set_data';
  function dw_tree_item_get_data(handle:HWND; item:HTREEITEM):pointer;cdecl;external 'dw.dll' name 'dw_tree_item_get_data';
  function dw_tree_get_title(handle:HWND; item:HTREEITEM):Pchar;cdecl;external 'dw.dll' name 'dw_tree_get_title';
  function dw_tree_get_parent(handle:HWND; item:HTREEITEM):HTREEITEM;cdecl;external 'dw.dll' name 'dw_tree_get_parent';
  function dw_container_setup(handle:HWND; flags:Pdword; titles:PPchar; count:longint; separator:longint):longint;cdecl;external 'dw.dll' name 'dw_container_setup';
  function dw_icon_load(module:dword; id:dword):HICN;cdecl;external 'dw.dll' name 'dw_icon_load';
  function dw_icon_load_from_file(filename:Pchar):HICN;cdecl;external 'dw.dll' name 'dw_icon_load_from_file';
  function dw_icon_load_from_data(data:Pchar; len:longint):HICN;cdecl;external 'dw.dll' name 'dw_icon_load_from_data';
  procedure dw_icon_free(handle:HICN);cdecl;external 'dw.dll' name 'dw_icon_free';
  function dw_container_alloc(handle:HWND; rowcount:longint):pointer;cdecl;external 'dw.dll' name 'dw_container_alloc';
  procedure dw_container_set_item(handle:HWND; pointer:pointer; column:longint; row:longint; data:pointer);cdecl;external 'dw.dll' name 'dw_container_set_item';
  procedure dw_container_change_item(handle:HWND; column:longint; row:longint; data:pointer);cdecl;external 'dw.dll' name 'dw_container_change_item';
  procedure dw_container_set_column_width(handle:HWND; column:longint; width:longint);cdecl;external 'dw.dll' name 'dw_container_set_column_width';
  procedure dw_container_set_row_title(pointer:pointer; row:longint; title:Pchar);cdecl;external 'dw.dll' name 'dw_container_set_row_title';
  procedure dw_container_change_row_title(handle:HWND; row:longint; title:Pchar);cdecl;external 'dw.dll' name 'dw_container_change_row_title';
  procedure dw_container_set_row_data(pointer:pointer; row:longint; data:pointer);cdecl;external 'dw.dll' name 'dw_container_set_row_data';
  procedure dw_container_change_row_data(handle:HWND; row:longint; data:pointer);cdecl;external 'dw.dll' name 'dw_container_change_row_data';
  procedure dw_container_insert(handle:HWND; pointer:pointer; rowcount:longint);cdecl;external 'dw.dll' name 'dw_container_insert';
  procedure dw_container_clear(handle:HWND; redraw:longint);cdecl;external 'dw.dll' name 'dw_container_clear';
  procedure dw_container_delete(handle:HWND; rowcount:longint);cdecl;external 'dw.dll' name 'dw_container_delete';
  function dw_container_query_start(handle:HWND; flags:dword):Pchar;cdecl;external 'dw.dll' name 'dw_container_query_start';
  function dw_container_query_next(handle:HWND; flags:dword):Pchar;cdecl;external 'dw.dll' name 'dw_container_query_next';
  procedure dw_container_scroll(handle:HWND; direction:longint; rows:longint);cdecl;external 'dw.dll' name 'dw_container_scroll';
  procedure dw_container_cursor(handle:HWND; text:Pchar);cdecl;external 'dw.dll' name 'dw_container_cursor';
  procedure dw_container_cursor_by_data(handle:HWND; data:pointer);cdecl;external 'dw.dll' name 'dw_container_cursor_by_data';
  procedure dw_container_delete_row(handle:HWND; text:Pchar);cdecl;external 'dw.dll' name 'dw_container_delete_row';
  procedure dw_container_delete_row_by_data(handle:HWND; data:pointer);cdecl;external 'dw.dll' name 'dw_container_delete_row_by_data';
  procedure dw_container_optimize(handle:HWND);cdecl;external 'dw.dll' name 'dw_container_optimize';
  procedure dw_container_set_stripe(handle:HWND; oddcolor:dword; evencolor:dword);cdecl;external 'dw.dll' name 'dw_container_set_stripe';
  procedure dw_filesystem_set_column_title(handle:HWND; title:Pchar);cdecl;external 'dw.dll' name 'dw_filesystem_set_column_title';
  function dw_filesystem_setup(handle:HWND; flags:Pdword; titles:PPchar; count:longint):longint;cdecl;external 'dw.dll' name 'dw_filesystem_setup';
  procedure dw_filesystem_set_item(handle:HWND; pointer:pointer; column:longint; row:longint; data:pointer);cdecl;external 'dw.dll' name 'dw_filesystem_set_item';
  procedure dw_filesystem_set_file(handle:HWND; pointer:pointer; row:longint; filename:Pchar; icon:HICN);cdecl;external 'dw.dll' name 'dw_filesystem_set_file';
  procedure dw_filesystem_change_item(handle:HWND; column:longint; row:longint; data:pointer);cdecl;external 'dw.dll' name 'dw_filesystem_change_item';
  procedure dw_filesystem_change_file(handle:HWND; row:longint; filename:Pchar; icon:HICN);cdecl;external 'dw.dll' name 'dw_filesystem_change_file';
  function dw_container_get_column_type(handle:HWND; column:longint):longint;cdecl;external 'dw.dll' name 'dw_container_get_column_type';
  function dw_filesystem_get_column_type(handle:HWND; column:longint):longint;cdecl;external 'dw.dll' name 'dw_filesystem_get_column_type';
  procedure dw_taskbar_insert(handle:HWND; icon:HICN; bubbletext:Pchar);cdecl;external 'dw.dll' name 'dw_taskbar_insert';
  procedure dw_taskbar_delete(handle:HWND; icon:HICN);cdecl;external 'dw.dll' name 'dw_taskbar_delete';
  function dw_screen_width:longint;cdecl;external 'dw.dll' name 'dw_screen_width';
  function dw_screen_height:longint;cdecl;external 'dw.dll' name 'dw_screen_height';
  function dw_color_depth_get:dword;cdecl;external 'dw.dll' name 'dw_color_depth_get';
  function dw_notebook_new(id:dword; top:longint):HWND;cdecl;external 'dw.dll' name 'dw_notebook_new';
  function dw_notebook_page_new(handle:HWND; flags:dword; front:longint):dword;cdecl;external 'dw.dll' name 'dw_notebook_page_new';
  procedure dw_notebook_page_destroy(handle:HWND; pageid:dword);cdecl;external 'dw.dll' name 'dw_notebook_page_destroy';
  procedure dw_notebook_page_set_text(handle:HWND; pageid:dword; text:Pchar);cdecl;external 'dw.dll' name 'dw_notebook_page_set_text';
  procedure dw_notebook_page_set_status_text(handle:HWND; pageid:dword; text:Pchar);cdecl;external 'dw.dll' name 'dw_notebook_page_set_status_text';
  procedure dw_notebook_page_set(handle:HWND; pageid:dword);cdecl;external 'dw.dll' name 'dw_notebook_page_set';
  function dw_notebook_page_get(handle:HWND):dword;cdecl;external 'dw.dll' name 'dw_notebook_page_get';
  procedure dw_notebook_pack(handle:HWND; pageid:dword; page:HWND);cdecl;external 'dw.dll' name 'dw_notebook_pack';
  function dw_splitbar_new(_type:longint; topleft:HWND; bottomright:HWND; id:dword):HWND;cdecl;external 'dw.dll' name 'dw_splitbar_new';
  procedure dw_splitbar_set(handle:HWND; percent:single);cdecl;external 'dw.dll' name 'dw_splitbar_set';
  function dw_splitbar_get(handle:HWND):single;cdecl;external 'dw.dll' name 'dw_splitbar_get';
  function dw_menu_new(id:dword):HMENUI;cdecl;external 'dw.dll' name 'dw_menu_new';
  function dw_menubar_new(location:HWND):HMENUI;cdecl;external 'dw.dll' name 'dw_menubar_new';
  function dw_menu_append_item(menu:HMENUI; title:Pchar; id:dword; flags:dword; end_:longint; 
             check:longint; submenu:HMENUI):HWND;cdecl;external 'dw.dll' name 'dw_menu_append_item';
  function dw_menu_delete_item(menu:HMENUI; id:dword):longint;cdecl;external 'dw.dll' name 'dw_menu_delete_item';
  procedure dw_menu_item_set_check(menu:HMENUI; id:dword; check:longint);cdecl;external 'dw.dll' name 'dw_menu_item_set_check';
  procedure dw_menu_item_set_state(menux:HMENUI; id:dword; state:dword);cdecl;external 'dw.dll' name 'dw_menu_item_set_state';
  procedure dw_menu_popup(menu:PHMENUI; parent:HWND; x:longint; y:longint);cdecl;external 'dw.dll' name 'dw_menu_popup';
  procedure dw_menu_destroy(menu:PHMENUI);cdecl;external 'dw.dll' name 'dw_menu_destroy';
  procedure dw_pointer_query_pos(x:Plongint; y:Plongint);cdecl;external 'dw.dll' name 'dw_pointer_query_pos';
  procedure dw_pointer_set_pos(x:longint; y:longint);cdecl;external 'dw.dll' name 'dw_pointer_set_pos';
  procedure dw_window_function(handle:HWND; _function:pointer; data:pointer);cdecl;external 'dw.dll' name 'dw_window_function';
  function dw_window_from_id(handle:HWND; id:longint):HWND;cdecl;external 'dw.dll' name 'dw_window_from_id';
  function dw_mutex_new:HMTX;cdecl;external 'dw.dll' name 'dw_mutex_new';
  procedure dw_mutex_close(mutex:HMTX);cdecl;external 'dw.dll' name 'dw_mutex_close';
  procedure dw_mutex_lock(mutex:HMTX);cdecl;external 'dw.dll' name 'dw_mutex_lock';
  function dw_mutex_trylock(mutex:HMTX):longint;cdecl;external 'dw.dll' name 'dw_mutex_trylock';
  procedure dw_mutex_unlock(mutex:HMTX);cdecl;external 'dw.dll' name 'dw_mutex_unlock';
  function dw_event_new:HEV;cdecl;external 'dw.dll' name 'dw_event_new';
  function dw_event_reset(eve:HEV):longint;cdecl;external 'dw.dll' name 'dw_event_reset';
  function dw_event_post(eve:HEV):longint;cdecl;external 'dw.dll' name 'dw_event_post';
  function dw_event_wait(eve:HEV; timeout:dword):longint;cdecl;external 'dw.dll' name 'dw_event_wait';
  function dw_event_close(eve:PHEV):longint;cdecl;external 'dw.dll' name 'dw_event_close';
  function dw_thread_new(func:pointer; data:pointer; stack:longint):DWTID;cdecl;external 'dw.dll' name 'dw_thread_new';
  procedure dw_thread_end;cdecl;external 'dw.dll' name 'dw_thread_end';
  function dw_thread_id:DWTID;cdecl;external 'dw.dll' name 'dw_thread_id';
  procedure dw_exit(exitcode:longint);cdecl;external 'dw.dll' name 'dw_exit';
  procedure dw_shutdown;cdecl;external 'dw.dll' name 'dw_shutdown';
  function dw_render_new(id:dword):HWND;cdecl;external 'dw.dll' name 'dw_render_new';
  procedure dw_render_redraw(handle:HWND);cdecl;external 'dw.dll' name 'dw_render_redraw';
  procedure dw_color_foreground_set(value:dword);cdecl;external 'dw.dll' name 'dw_color_foreground_set';
  procedure dw_color_background_set(value:dword);cdecl;external 'dw.dll' name 'dw_color_background_set';
  function dw_color_choose(value:dword):dword;cdecl;external 'dw.dll' name 'dw_color_choose';
  function dw_font_choose(currfont:Pchar):Pchar;cdecl;external 'dw.dll' name 'dw_font_choose';
  procedure dw_draw_point(handle:HWND; pixmap:HPIXMAP; x:longint; y:longint);cdecl;external 'dw.dll' name 'dw_draw_point';
  procedure dw_draw_line(handle:HWND; pixmap:HPIXMAP; x1:longint; y1:longint; x2:longint; 
              y2:longint);cdecl;external 'dw.dll' name 'dw_draw_line';
  procedure dw_draw_rect(handle:HWND; pixmap:HPIXMAP; fill:longint; x:longint; y:longint; 
              width:longint; height:longint);cdecl;external 'dw.dll' name 'dw_draw_rect';
  procedure dw_draw_polygon(handle:HWND; pixmap:HPIXMAP; fill:longint; npoints:longint; x:Plongint; 
              y:Plongint);cdecl;external 'dw.dll' name 'dw_draw_polygon';
  procedure dw_draw_arc(handle:HWND; pixmap:HPIXMAP; flags:longint; xorigin:longint; yorigin:longint; 
              x1:longint; y1:longint; x2:longint; y2:longint);cdecl;external 'dw.dll' name 'dw_draw_arc';
  procedure dw_draw_text(handle:HWND; pixmap:HPIXMAP; x:longint; y:longint; text:Pchar);cdecl;external 'dw.dll' name 'dw_draw_text';
  procedure dw_font_text_extents_get(handle:HWND; pixmap:HPIXMAP; text:Pchar; width:Plongint; height:Plongint);cdecl;external 'dw.dll' name 'dw_font_text_extents_get';
  procedure dw_font_set_default(fontname:Pchar);cdecl;external 'dw.dll' name 'dw_font_set_default';
  procedure dw_flush;cdecl;external 'dw.dll' name 'dw_flush';
  procedure dw_pixmap_bitblt(dest:HWND; destp:HPIXMAP; xdest:longint; ydest:longint; width:longint; 
              height:longint; src:HWND; srcp:HPIXMAP; xsrc:longint; ysrc:longint);cdecl;external 'dw.dll' name 'dw_pixmap_bitblt';
  function dw_pixmap_stretch_bitblt(dest:HWND; destp:HPIXMAP; xdest:longint; ydest:longint; width:longint; 
             height:longint; src:HWND; srcp:HPIXMAP; xsrc:longint; ysrc:longint; 
             srcwidth:longint; srcheight:longint):longint;cdecl;external 'dw.dll' name 'dw_pixmap_stretch_bitblt';
  function dw_pixmap_new(handle:HWND; width:dword; height:dword; depth:longint):HPIXMAP;cdecl;external 'dw.dll' name 'dw_pixmap_new';
  function dw_pixmap_new_from_file(handle:HWND; filename:Pchar):HPIXMAP;cdecl;external 'dw.dll' name 'dw_pixmap_new_from_file';
  function dw_pixmap_new_from_data(handle:HWND; data:Pchar; len:longint):HPIXMAP;cdecl;external 'dw.dll' name 'dw_pixmap_new_from_data';
  function dw_pixmap_grab(handle:HWND; id:ULONG):HPIXMAP;cdecl;external 'dw.dll' name 'dw_pixmap_grab';
  procedure dw_pixmap_set_transparent_color(pixmap:HPIXMAP; color:ULONG);cdecl;external 'dw.dll' name 'dw_pixmap_set_transparent_color';
  function dw_pixmap_set_font(pixmap:HPIXMAP; fontname:Pchar):longint;cdecl;external 'dw.dll' name 'dw_pixmap_set_font';
  procedure dw_pixmap_destroy(pixmap:HPIXMAP);cdecl;external 'dw.dll' name 'dw_pixmap_destroy';
  procedure dw_beep(freq:longint; dur:longint);cdecl;external 'dw.dll' name 'dw_beep';
  procedure dw_debug(format:Pchar; args:array of const);cdecl;external 'dw.dll' name 'dw_debug';
  procedure dw_debug(format:Pchar);cdecl;external 'dw.dll' name 'dw_debug';
  function dw_messagebox(title:Pchar; flags:longint; format:Pchar; args:array of const):longint;cdecl;external 'dw.dll' name 'dw_messagebox';
  function dw_messagebox(title:Pchar; flags:longint; format:Pchar):longint;cdecl;external 'dw.dll' name 'dw_messagebox';
  procedure dw_environment_query(env:PDWEnv);cdecl;external 'dw.dll' name 'dw_environment_query';
  function dw_exec(program_:Pchar; _type:longint; params:PPchar):longint;cdecl;external 'dw.dll' name 'dw_exec';
  function dw_browse(url:Pchar):longint;cdecl;external 'dw.dll' name 'dw_browse';
  function dw_file_browse(title:Pchar; defpath:Pchar; ext:Pchar; flags:longint):Pchar;cdecl;external 'dw.dll' name 'dw_file_browse';
  function dw_user_dir:Pchar;cdecl;external 'dw.dll' name 'dw_user_dir';
  function dw_app_dir:Pchar;cdecl;external 'dw.dll' name 'dw_app_dir';
  function dw_app_id_set(appid:Pchar; appname:Pchar):longint;cdecl;external 'dw.dll' name 'dw_app_id_set';
  function dw_dialog_new(data:pointer):PDWDialog;cdecl;external 'dw.dll' name 'dw_dialog_new';
  function dw_dialog_dismiss(dialog:PDWDialog; result:pointer):longint;cdecl;external 'dw.dll' name 'dw_dialog_dismiss';
  function dw_dialog_wait(dialog:PDWDialog):pointer;cdecl;external 'dw.dll' name 'dw_dialog_wait';
  procedure dw_window_set_data(window:HWND; dataname:Pchar; data:pointer);cdecl;external 'dw.dll' name 'dw_window_set_data';
  function dw_window_get_data(window:HWND; dataname:Pchar):pointer;cdecl;external 'dw.dll' name 'dw_window_get_data';
  function dw_window_compare(window1:HWND; window2:HWND):longint;cdecl;external 'dw.dll' name 'dw_window_compare';
  function dw_module_load(name:Pchar; handle:PHMOD):longint;cdecl;external 'dw.dll' name 'dw_module_load';
  function dw_module_symbol(handle:HMOD; name:Pchar; func:Ppointer):longint;cdecl;external 'dw.dll' name 'dw_module_symbol';
  function dw_module_close(handle:HMOD):longint;cdecl;external 'dw.dll' name 'dw_module_close';
  function dw_timer_connect(interval:longint; sigfunc:pointer; data:pointer):HTIMER;cdecl;external 'dw.dll' name 'dw_timer_connect';
  procedure dw_timer_disconnect(timerid:HTIMER);cdecl;external 'dw.dll' name 'dw_timer_disconnect';
  procedure dw_signal_connect(window:HWND; signame:Pchar; sigfunc:pointer; data:pointer);cdecl;external 'dw.dll' name 'dw_signal_connect';
  procedure dw_signal_connect_data(window:HWND; signame:Pchar; sigfunc:pointer; discfunc:pointer; data:pointer);cdecl;external 'dw.dll' name 'dw_signal_connect_data';
  procedure dw_signal_disconnect_by_window(window:HWND);cdecl;external 'dw.dll' name 'dw_signal_disconnect_by_window';
  procedure dw_signal_disconnect_by_data(window:HWND; data:pointer);cdecl;external 'dw.dll' name 'dw_signal_disconnect_by_data';
  procedure dw_signal_disconnect_by_name(window:HWND; signame:Pchar);cdecl;external 'dw.dll' name 'dw_signal_disconnect_by_name';
  function dw_named_event_new(name:Pchar):HEV;cdecl;external 'dw.dll' name 'dw_named_event_new';
  function dw_named_event_get(name:Pchar):HEV;cdecl;external 'dw.dll' name 'dw_named_event_get';
  function dw_named_event_reset(eve:HEV):longint;cdecl;external 'dw.dll' name 'dw_named_event_reset';
  function dw_named_event_post(eve:HEV):longint;cdecl;external 'dw.dll' name 'dw_named_event_post';
  function dw_named_event_wait(eve:HEV; timeout:dword):longint;cdecl;external 'dw.dll' name 'dw_named_event_wait';
  function dw_named_event_close(eve:HEV):longint;cdecl;external 'dw.dll' name 'dw_named_event_close';
  function dw_named_memory_new(dest:Ppointer; size:longint; name:Pchar):HSHM;cdecl;external 'dw.dll' name 'dw_named_memory_new';
  function dw_named_memory_get(dest:Ppointer; size:longint; name:Pchar):HSHM;cdecl;external 'dw.dll' name 'dw_named_memory_get';
  function dw_named_memory_free(handle:HSHM; ptr:pointer):longint;cdecl;external 'dw.dll' name 'dw_named_memory_free';
  procedure dw_html_action(hwnd:HWND; action:longint);cdecl;external 'dw.dll' name 'dw_html_action';
  function dw_html_raw(hwnd:HWND; _string:Pchar):longint;cdecl;external 'dw.dll' name 'dw_html_raw';
  function dw_html_url(hwnd:HWND; url:Pchar):longint;cdecl;external 'dw.dll' name 'dw_html_url';
  function dw_html_javascript_run(hwnd:HWND; script:Pchar; scriptdata:pointer):longint;cdecl;external 'dw.dll' name 'dw_html_javascript_run';
  function dw_html_new(id:dword):HWND;cdecl;external 'dw.dll' name 'dw_html_new';
  function dw_clipboard_get_text:Pchar;cdecl;external 'dw.dll' name 'dw_clipboard_get_text';
  procedure dw_clipboard_set_text(str:Pchar; len:longint);cdecl;external 'dw.dll' name 'dw_clipboard_set_text';
  function dw_calendar_new(id:dword):HWND;cdecl;external 'dw.dll' name 'dw_calendar_new';
  procedure dw_calendar_set_date(window:HWND; year:dword; month:dword; day:dword);cdecl;external 'dw.dll' name 'dw_calendar_set_date';
  procedure dw_calendar_get_date(window:HWND; year:Pdword; month:Pdword; day:Pdword);cdecl;external 'dw.dll' name 'dw_calendar_get_date';
  function dw_print_new(jobname:Pchar; flags:dword; pages:dword; drawfunc:pointer; drawdata:pointer):HPRINT;cdecl;external 'dw.dll' name 'dw_print_new';
  function dw_print_run(print:HPRINT; flags:dword):longint;cdecl;external 'dw.dll' name 'dw_print_run';
  procedure dw_print_cancel(print:HPRINT);cdecl;external 'dw.dll' name 'dw_print_cancel';
  function dw_notification_new(title:Pchar; imagepath:Pchar; description:Pchar; args:array of const):HWND;cdecl;external 'dw.dll' name 'dw_notification_new';
  function dw_notification_new(title:Pchar; imagepath:Pchar; description:Pchar):HWND;cdecl;external 'dw.dll' name 'dw_notification_new';
  function dw_notification_send(notification:HWND):longint;cdecl;external 'dw.dll' name 'dw_notification_send';
  function dw_utf8_to_wchar(utf8string:Pchar):Pwidechar;cdecl;external 'dw.dll' name 'dw_utf8_to_wchar';
  function dw_wchar_to_utf8(wstring:Pwidechar):Pchar;cdecl;external 'dw.dll' name 'dw_wchar_to_utf8';
  function dw_feature_get(feature:DWFEATURE):longint;cdecl;external 'dw.dll' name 'dw_feature_get';
  function dw_feature_set(feature:DWFEATURE; state:longint):longint;cdecl;external 'dw.dll' name 'dw_feature_set';
  procedure _dw_init_thread;cdecl;external 'dw.dll' name '_dw_init_thread';
  procedure _dw_deinit_thread;cdecl;external 'dw.dll' name '_dw_deinit_thread';
  function _dw_convertargs(count:Plongint; start:Pchar; hInstance:HMODULE):PPchar;cdecl;external 'dw.dll' name '_dw_convertargs';

implementation

function DW_PIXMAP_WIDTH(x : HPIXMAP) : dword;
begin
  If Assigned(x) Then Result:=x^.width Else Result:=0;
end;

function DW_PIXMAP_HEIGHT(x : HPIXMAP) : dword;
begin
  If Assigned(x) Then Result:=x^.height Else Result:=0;
end;

function DW_RESOURCE(a : dword) : HICN;
begin
  If a<65536 Then Result:=HICN(a) Else Result:=HICN(0);
end;

end.
