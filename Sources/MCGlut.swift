import Foundation
import Glibc
import OpenGL

public func glutInit() {
    let count = Process.argc
    let ptr = UnsafeMutablePointer<Int32>.alloc(1)
    ptr.memory = count
    glutInit(ptr, Process.unsafeArgv)
}

public class GLUT {
    /*
    * GLUT API macro definitions -- the special key codes:
    */
    public static let  KEY_F1             :GLint =           0x0001
    public static let  KEY_F2             :GLint =           0x0002
    public static let  KEY_F3             :GLint =           0x0003
    public static let  KEY_F4             :GLint =           0x0004
    public static let  KEY_F5             :GLint =           0x0005
    public static let  KEY_F6             :GLint =           0x0006
    public static let  KEY_F7             :GLint =           0x0007
    public static let  KEY_F8             :GLint =           0x0008
    public static let  KEY_F9             :GLint =           0x0009
    public static let  KEY_F10            :GLint =           0x000A
    public static let  KEY_F11            :GLint =           0x000B
    public static let  KEY_F12            :GLint =           0x000C
    public static let  KEY_LEFT           :GLint =           0x0064
    public static let  KEY_UP             :GLint =           0x0065
    public static let  KEY_RIGHT          :GLint =           0x0066
    public static let  KEY_DOWN           :GLint =           0x0067
    public static let  KEY_PAGE_UP        :GLint =           0x0068
    public static let  KEY_PAGE_DOWN      :GLint =           0x0069
    public static let  KEY_HOME           :GLint =           0x006A
    public static let  KEY_END            :GLint =           0x006B
    public static let  KEY_INSERT         :GLint =           0x006C
    
    /*
    * GLUT API macro definitions -- mouse state definitions
    */
    public static let  LEFT_BUTTON        :GLint =           0x0000
    public static let  MIDDLE_BUTTON      :GLint =           0x0001
    public static let  RIGHT_BUTTON       :GLint =           0x0002
    public static let  DOWN               :GLint =           0x0000
    public static let  UP                 :GLint =           0x0001
    public static let  LEFT               :GLint =           0x0000
    public static let  ENTERED            :GLint =           0x0001
    
    /*
    * GLUT API macro definitions -- the display mode definitions
    */
    public static let  RGB                :GLuint =           0x0000
    public static let  RGBA               :GLuint =           0x0000
    public static let  INDEX              :GLuint =           0x0001
    public static let  SINGLE             :GLuint =           0x0000
    public static let  DOUBLE             :GLuint =           0x0002
    public static let  ACCUM              :GLuint =           0x0004
    public static let  ALPHA              :GLuint =           0x0008
    public static let  DEPTH              :GLuint =           0x0010
    public static let  STENCIL            :GLuint =           0x0020
    public static let  MULTISAMPLE        :GLuint =           0x0080
    public static let  STEREO             :GLuint =           0x0100
    public static let  LUMINANCE          :GLuint =           0x0200
    
    /*
    * GLUT API macro definitions -- windows and menu related definitions
    */
    public static let  MENU_NOT_IN_USE     :GLint =          0x0000
    public static let  MENU_IN_USE         :GLint =          0x0001
    public static let  NOT_VISIBLE         :GLint =          0x0000
    public static let  VISIBLE             :GLint =          0x0001
    public static let  HIDDEN              :GLint =          0x0000
    public static let  FULLY_RETAINED      :GLint =          0x0001
    public static let  PARTIALLY_RETAINED  :GLint =          0x0002
    public static let  FULLY_COVERED       :GLint =          0x0003
    
    /*
    * GLUT API macro definitions -- fonts definitions
    */
    public static let  STROKE_ROMAN             = UnsafeMutablePointer<Void>(bitPattern: 0x0000)
    public static let  STROKE_MONO_ROMAN        = UnsafeMutablePointer<Void>(bitPattern: 0x0001)
    public static let  BITMAP_9_BY_15           = UnsafeMutablePointer<Void>(bitPattern: 0x0002)
    public static let  BITMAP_8_BY_13           = UnsafeMutablePointer<Void>(bitPattern: 0x0003)
    public static let  BITMAP_TIMES_ROMAN_10    = UnsafeMutablePointer<Void>(bitPattern: 0x0004)
    public static let  BITMAP_TIMES_ROMAN_24    = UnsafeMutablePointer<Void>(bitPattern: 0x0005)
    public static let  BITMAP_HELVETICA_10      = UnsafeMutablePointer<Void>(bitPattern: 0x0006)
    public static let  BITMAP_HELVETICA_12      = UnsafeMutablePointer<Void>(bitPattern: 0x0007)
    public static let  BITMAP_HELVETICA_18      = UnsafeMutablePointer<Void>(bitPattern: 0x0008)
    
    /*
    * GLUT API macro definitions -- the glutGet parameters
    */
    public static let  WINDOW_X                  :GLint =    0x0064
    public static let  WINDOW_Y                  :GLint =    0x0065
    public static let  WINDOW_WIDTH              :GLint =    0x0066
    public static let  WINDOW_HEIGHT             :GLint =    0x0067
    public static let  WINDOW_BUFFER_SIZE        :GLint =    0x0068
    public static let  WINDOW_STENCIL_SIZE       :GLint =    0x0069
    public static let  WINDOW_DEPTH_SIZE         :GLint =    0x006A
    public static let  WINDOW_RED_SIZE           :GLint =    0x006B
    public static let  WINDOW_GREEN_SIZE         :GLint =    0x006C
    public static let  WINDOW_BLUE_SIZE          :GLint =    0x006D
    public static let  WINDOW_ALPHA_SIZE         :GLint =    0x006E
    public static let  WINDOW_ACCUM_RED_SIZE     :GLint =    0x006F
    public static let  WINDOW_ACCUM_GREEN_SIZE   :GLint =    0x0070
    public static let  WINDOW_ACCUM_BLUE_SIZE    :GLint =    0x0071
    public static let  WINDOW_ACCUM_ALPHA_SIZE   :GLint =    0x0072
    public static let  WINDOW_DOUBLEBUFFER       :GLint =    0x0073
    public static let  WINDOW_RGBA               :GLint =    0x0074
    public static let  WINDOW_PARENT             :GLint =    0x0075
    public static let  WINDOW_NUM_CHILDREN       :GLint =    0x0076
    public static let  WINDOW_COLORMAP_SIZE      :GLint =    0x0077
    public static let  WINDOW_NUM_SAMPLES        :GLint =    0x0078
    public static let  WINDOW_STEREO             :GLint =    0x0079
    public static let  WINDOW_CURSOR             :GLint =    0x007A
    
    public static let  SCREEN_WIDTH              :GLint =    0x00C8
    public static let  SCREEN_HEIGHT             :GLint =    0x00C9
    public static let  SCREEN_WIDTH_MM           :GLint =    0x00CA
    public static let  SCREEN_HEIGHT_MM          :GLint =    0x00CB
    public static let  MENU_NUM_ITEMS            :GLint =    0x012C
    public static let  DISPLAY_MODE_POSSIBLE     :GLint =    0x0190
    public static let  INIT_WINDOW_X             :GLint =    0x01F4
    public static let  INIT_WINDOW_Y             :GLint =    0x01F5
    public static let  INIT_WINDOW_WIDTH         :GLint =    0x01F6
    public static let  INIT_WINDOW_HEIGHT        :GLint =    0x01F7
    public static let  INIT_DISPLAY_MODE         :GLint =    0x01F8
    public static let  ELAPSED_TIME              :GLint =    0x02BC
    public static let  WINDOW_FORMAT_ID          :GLint =    0x007B
    
    /*
    * GLUT API macro definitions -- the glutDeviceGet parameters
    */
    public static let  HAS_KEYBOARD              :GLint =    0x0258
    public static let  HAS_MOUSE                 :GLint =    0x0259
    public static let  HAS_SPACEBALL             :GLint =    0x025A
    public static let  HAS_DIAL_AND_BUTTON_BOX   :GLint =    0x025B
    public static let  HAS_TABLET                :GLint =    0x025C
    public static let  NUM_MOUSE_BUTTONS         :GLint =    0x025D
    public static let  NUM_SPACEBALL_BUTTONS     :GLint =    0x025E
    public static let  NUM_BUTTON_BOX_BUTTONS    :GLint =    0x025F
    public static let  NUM_DIALS                 :GLint =    0x0260
    public static let  NUM_TABLET_BUTTONS        :GLint =    0x0261
    public static let  DEVICE_IGNORE_KEY_REPEAT  :GLint =    0x0262
    public static let  DEVICE_KEY_REPEAT         :GLint =    0x0263
    public static let  HAS_JOYSTICK              :GLint =    0x0264
    public static let  OWNS_JOYSTICK             :GLint =    0x0265
    public static let  JOYSTICK_BUTTONS          :GLint =    0x0266
    public static let  JOYSTICK_AXES             :GLint =    0x0267
    public static let  JOYSTICK_POLL_RATE        :GLint =    0x0268
    
    /*
    * GLUT API macro definitions -- the glutLayerGet parameters
    */
    public static let  OVERLAY_POSSIBLE          :GLint =    0x0320
    public static let  LAYER_IN_USE              :GLint =    0x0321
    public static let  HAS_OVERLAY               :GLint =    0x0322
    public static let  TRANSPARENT_INDEX         :GLint =    0x0323
    public static let  NORMAL_DAMAGED            :GLint =    0x0324
    public static let  OVERLAY_DAMAGED           :GLint =    0x0325
    
    /*
    * GLUT API macro definitions -- the glutVideoResizeGet parameters
    */
    public static let  VIDEO_RESIZE_POSSIBLE     :GLint =    0x0384
    public static let  VIDEO_RESIZE_IN_USE       :GLint =    0x0385
    public static let  VIDEO_RESIZE_X_DELTA      :GLint =    0x0386
    public static let  VIDEO_RESIZE_Y_DELTA      :GLint =    0x0387
    public static let  VIDEO_RESIZE_WIDTH_DELTA  :GLint =    0x0388
    public static let  VIDEO_RESIZE_HEIGHT_DELTA :GLint =    0x0389
    public static let  VIDEO_RESIZE_X            :GLint =    0x038A
    public static let  VIDEO_RESIZE_Y            :GLint =    0x038B
    public static let  VIDEO_RESIZE_WIDTH        :GLint =    0x038C
    public static let  VIDEO_RESIZE_HEIGHT       :GLint =    0x038D
    
    /*
    * GLUT API macro definitions -- the glutUseLayer parameters
    */
    public static let  NORMAL                    :GLint =    0x0000
    public static let  OVERLAY                   :GLint =    0x0001
    
    /*
    * GLUT API macro definitions -- the glutGetModifiers parameters
    */
    public static let  ACTIVE_SHIFT              :GLint =    0x0001
    public static let  ACTIVE_CTRL               :GLint =    0x0002
    public static let  ACTIVE_ALT                :GLint =    0x0004
    
    /*
    * GLUT API macro definitions -- the glutSetCursor parameters
    */
    public static let  CURSOR_RIGHT_ARROW         :GLint =    0x0000
    public static let  CURSOR_LEFT_ARROW          :GLint =    0x0001
    public static let  CURSOR_INFO                :GLint =    0x0002
    public static let  CURSOR_DESTROY             :GLint =    0x0003
    public static let  CURSOR_HELP                :GLint =    0x0004
    public static let  CURSOR_CYCLE               :GLint =    0x0005
    public static let  CURSOR_SPRAY               :GLint =    0x0006
    public static let  CURSOR_WAIT                :GLint =    0x0007
    public static let  CURSOR_TEXT                :GLint =    0x0008
    public static let  CURSOR_CROSSHAIR           :GLint =    0x0009
    public static let  CURSOR_UP_DOWN             :GLint =    0x000A
    public static let  CURSOR_LEFT_RIGHT          :GLint =    0x000B
    public static let  CURSOR_TOP_SIDE            :GLint =    0x000C
    public static let  CURSOR_BOTTOM_SIDE         :GLint =    0x000D
    public static let  CURSOR_LEFT_SIDE           :GLint =    0x000E
    public static let  CURSOR_RIGHT_SIDE          :GLint =    0x000F
    public static let  CURSOR_TOP_LEFT_CORNER     :GLint =    0x0010
    public static let  CURSOR_TOP_RIGHT_CORNER    :GLint =    0x0011
    public static let  CURSOR_BOTTOM_RIGHT_CORNER :GLint =    0x0012
    public static let  CURSOR_BOTTOM_LEFT_CORNER  :GLint =    0x0013
    public static let  CURSOR_INHERIT             :GLint =    0x0064
    public static let  CURSOR_NONE                :GLint =    0x0065
    public static let  CURSOR_FULL_CROSSHAIR      :GLint =    0x0066
    
    /*
    * GLUT API macro definitions -- RGB color component specification definitions
    */
    public static let  RED                        :GLint =   0x0000
    public static let  GREEN                      :GLint =   0x0001
    public static let  BLUE                       :GLint =   0x0002
    
    /*
    * GLUT API macro definitions -- additional keyboard and joystick definitions
    */
    public static let  KEY_REPEAT_OFF             :GLint =   0x0000
    public static let  KEY_REPEAT_ON              :GLint =   0x0001
    public static let  KEY_REPEAT_DEFAULT         :GLint =   0x0002
    
    public static let  JOYSTICK_BUTTON_A          :GLint =   0x0001
    public static let  JOYSTICK_BUTTON_B          :GLint =   0x0002
    public static let  JOYSTICK_BUTTON_C          :GLint =   0x0004
    public static let  JOYSTICK_BUTTON_D          :GLint =   0x0008
    
    /*
    * GLUT API macro definitions -- game mode definitions
    */
    public static let  GAME_MODE_ACTIVE           :GLint =   0x0000
    public static let  GAME_MODE_POSSIBLE         :GLint =   0x0001
    public static let  GAME_MODE_WIDTH            :GLint =   0x0002
    public static let  GAME_MODE_HEIGHT           :GLint =   0x0003
    public static let  GAME_MODE_PIXEL_DEPTH      :GLint =   0x0004
    public static let  GAME_MODE_REFRESH_RATE     :GLint =   0x0005
    public static let  GAME_MODE_DISPLAY_CHANGED  :GLint =   0x0006
}