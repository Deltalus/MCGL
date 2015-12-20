import Foundation
import Glibc
import OpenGL

public class GL {
    
    /* Boolean values */
    public static let FALSE                         : GLbyte = 0
    public static let TRUE                          : GLbyte = 1
    
    /* Data types */
    public static let TYPE_BYTE                     : GLenum = 0x1400
    public static let TYPE_UNSIGNED_BYTE            : GLenum = 0x1401
    public static let TYPE_SHORT                    : GLenum = 0x1402
    public static let TYPE_UNSIGNED_SHORT           : GLenum = 0x1403
    public static let TYPE_INT                      : GLenum = 0x1404
    public static let TYPE_UNSIGNED_INT             : GLenum = 0x1405
    public static let TYPE_FLOAT                    : GLenum = 0x1406
    public static let TYPE_2_BYTES                  : GLenum = 0x1407
    public static let TYPE_3_BYTES                  : GLenum = 0x1408
    public static let TYPE_4_BYTES                  : GLenum = 0x1409
    public static let TYPE_DOUBLE                   : GLenum = 0x140A

    /* Primitives */
    public static let POINTS                        : GLenum = 0x0000
    public static let LINES                         : GLenum = 0x0001
    public static let LINE_LOOP                     : GLenum = 0x0002
    public static let LINE_STRIP                    : GLenum = 0x0003
    public static let TRIANGLES                     : GLenum = 0x0004
    public static let TRIANGLE_STRIP                : GLenum = 0x0005
    public static let TRIANGLE_FAN                  : GLenum = 0x0006
    public static let QUADS                         : GLenum = 0x0007
    public static let QUAD_STRIP                    : GLenum = 0x0008
    public static let POLYGON                       : GLenum = 0x0009

    /* Vertex Arrays */
    public static let VERTEX_ARRAY                  : GLenum = 0x8074
    public static let NORMAL_ARRAY                  : GLenum = 0x8075
    public static let COLOR_ARRAY                   : GLenum = 0x8076
    public static let INDEX_ARRAY                   : GLenum = 0x8077
    public static let TEXTURE_COORD_ARRAY           : GLenum = 0x8078
    public static let EDGE_FLAG_ARRAY               : GLenum = 0x8079
    public static let VERTEX_ARRAY_SIZE             : GLenum = 0x807A
    public static let VERTEX_ARRAY_TYPE             : GLenum = 0x807B
    public static let VERTEX_ARRAY_STRIDE			: GLenum = 0x807C
    public static let NORMAL_ARRAY_TYPE             : GLenum = 0x807E
    public static let NORMAL_ARRAY_STRIDE			: GLenum = 0x807F
    public static let COLOR_ARRAY_SIZE              : GLenum = 0x8081
    public static let COLOR_ARRAY_TYPE              : GLenum = 0x8082
    public static let COLOR_ARRAY_STRIDE            : GLenum = 0x8083
    public static let INDEX_ARRAY_TYPE              : GLenum = 0x8085
    public static let INDEX_ARRAY_STRIDE            : GLenum = 0x8086
    public static let TEXTURE_COORD_ARRAY_SIZE		: GLenum = 0x8088
    public static let TEXTURE_COORD_ARRAY_TYPE		: GLenum = 0x8089
    public static let TEXTURE_COORD_ARRAY_STRIDE	: GLenum = 0x808A
    public static let EDGE_FLAG_ARRAY_STRIDE        : GLenum = 0x808C
    public static let VERTEX_ARRAY_POINTER			: GLenum = 0x808E
    public static let NORMAL_ARRAY_POINTER			: GLenum = 0x808F
    public static let COLOR_ARRAY_POINTER			: GLenum = 0x8090
    public static let INDEX_ARRAY_POINTER			: GLenum = 0x8091
    public static let TEXTURE_COORD_ARRAY_POINTER	: GLenum = 0x8092
    public static let EDGE_FLAG_ARRAY_POINTER		: GLenum = 0x8093
    public static let V2F                           : GLenum = 0x2A20
    public static let V3F                           : GLenum = 0x2A21
    public static let C4UB_V2F                      : GLenum = 0x2A22
    public static let C4UB_V3F                      : GLenum = 0x2A23
    public static let C3F_V3F                       : GLenum = 0x2A24
    public static let N3F_V3F                       : GLenum = 0x2A25
    public static let C4F_N3F_V3F                   : GLenum = 0x2A26
    public static let T2F_V3F                       : GLenum = 0x2A27
    public static let T4F_V4F                       : GLenum = 0x2A28
    public static let T2F_C4UB_V3F                  : GLenum = 0x2A29
    public static let T2F_C3F_V3F                   : GLenum = 0x2A2A
    public static let T2F_N3F_V3F                   : GLenum = 0x2A2B
    public static let T2F_C4F_N3F_V3F               : GLenum = 0x2A2C
    public static let T4F_C4F_N3F_V4F               : GLenum = 0x2A2D

    /* Matrix Mode */
    public static let MATRIX_MODE                   : GLenum = 0x0BA0
    public static let MODELVIEW                     : GLenum = 0x1700
    public static let PROJECTION                    : GLenum = 0x1701
    public static let TEXTURE                       : GLenum = 0x1702

    /* Points */
    public static let POINT_SMOOTH                  : GLenum = 0x0B10
    public static let POINT_SIZE                    : GLenum = 0x0B11
    public static let POINT_SIZE_GRANULARITY 		: GLenum = 0x0B13
    public static let POINT_SIZE_RANGE              : GLenum = 0x0B12

    /* Lines */
    public static let LINE_SMOOTH                   : GLenum = 0x0B20
    public static let LINE_STIPPLE                  : GLenum = 0x0B24
    public static let LINE_STIPPLE_PATTERN			: GLenum = 0x0B25
    public static let LINE_STIPPLE_REPEAT			: GLenum = 0x0B26
    public static let LINE_WIDTH                    : GLenum = 0x0B21
    public static let LINE_WIDTH_GRANULARITY        : GLenum = 0x0B23
    public static let LINE_WIDTH_RANGE              : GLenum = 0x0B22

    /* Polygons */
    public static let POINT                         : GLenum = 0x1B00
    public static let LINE                          : GLenum = 0x1B01
    public static let FILL                          : GLenum = 0x1B02
    public static let CW                            : GLenum = 0x0900
    public static let CCW                           : GLenum = 0x0901
    public static let FRONT                         : GLenum = 0x0404
    public static let BACK                          : GLenum = 0x0405
    public static let POLYGON_MODE                  : GLenum = 0x0B40
    public static let POLYGON_SMOOTH                : GLenum = 0x0B41
    public static let POLYGON_STIPPLE               : GLenum = 0x0B42
    public static let EDGE_FLAG                     : GLenum = 0x0B43
    public static let CULL_FACE                     : GLenum = 0x0B44
    public static let CULL_FACE_MODE                : GLenum = 0x0B45
    public static let FRONT_FACE                    : GLenum = 0x0B46
    public static let POLYGON_OFFSET_FACTOR         : GLenum = 0x8038
    public static let POLYGON_OFFSET_UNITS			: GLenum = 0x2A00
    public static let POLYGON_OFFSET_POINT			: GLenum = 0x2A01
    public static let POLYGON_OFFSET_LINE			: GLenum = 0x2A02
    public static let POLYGON_OFFSET_FILL			: GLenum = 0x8037

    /* Display Lists */
    public static let COMPILE                       : GLenum = 0x1300
    public static let COMPILE_AND_EXECUTE			: GLenum = 0x1301
    public static let LIST_BASE                     : GLenum = 0x0B32
    public static let LIST_INDEX                    : GLenum = 0x0B33
    public static let LIST_MODE                     : GLenum = 0x0B30

    /* Depth buffer */
    public static let NEVER                         : GLenum = 0x0200
    public static let LESS                          : GLenum = 0x0201
    public static let EQUAL                         : GLenum = 0x0202
    public static let LEQUAL                        : GLenum = 0x0203
    public static let GREATER                       : GLenum = 0x0204
    public static let NOTEQUAL                      : GLenum = 0x0205
    public static let GEQUAL                        : GLenum = 0x0206
    public static let ALWAYS                        : GLenum = 0x0207
    public static let DEPTH_TEST                    : GLenum = 0x0B71
    public static let DEPTH_BITS                    : GLenum = 0x0D56
    public static let DEPTH_CLEAR_VALUE             : GLenum = 0x0B73
    public static let DEPTH_FUNC                    : GLenum = 0x0B74
    public static let DEPTH_RANGE                   : GLenum = 0x0B70
    public static let DEPTH_WRITEMASK               : GLenum = 0x0B72
    public static let DEPTH_COMPONENT               : GLenum = 0x1902

    /* Lighting */
    public static let LIGHTING                      : GLenum = 0x0B50
    public static let LIGHT0                        : GLenum = 0x4000
    public static let LIGHT1                        : GLenum = 0x4001
    public static let LIGHT2                        : GLenum = 0x4002
    public static let LIGHT3                        : GLenum = 0x4003
    public static let LIGHT4                        : GLenum = 0x4004
    public static let LIGHT5                        : GLenum = 0x4005
    public static let LIGHT6                        : GLenum = 0x4006
    public static let LIGHT7                        : GLenum = 0x4007
    public static let SPOT_EXPONENT                 : GLenum = 0x1205
    public static let SPOT_CUTOFF                   : GLenum = 0x1206
    public static let CONSTANT_ATTENUATION          : GLenum = 0x1207
    public static let LINEAR_ATTENUATION            : GLenum = 0x1208
    public static let QUADRATIC_ATTENUATION         : GLenum = 0x1209
    public static let AMBIENT                       : GLenum = 0x1200
    public static let DIFFUSE                       : GLenum = 0x1201
    public static let SPECULAR                      : GLenum = 0x1202
    public static let SHININESS                     : GLenum = 0x1601
    public static let EMISSION                      : GLenum = 0x1600
    public static let POSITION                      : GLenum = 0x1203
    public static let SPOT_DIRECTION                : GLenum = 0x1204
    public static let AMBIENT_AND_DIFFUSE           : GLenum = 0x1602
    public static let COLOR_INDEXES                 : GLenum = 0x1603
    public static let LIGHT_MODEL_TWO_SIDE			: GLenum = 0x0B52
    public static let LIGHT_MODEL_LOCAL_VIEWER		: GLenum = 0x0B51
    public static let LIGHT_MODEL_AMBIENT			: GLenum = 0x0B53
    public static let FRONT_AND_BACK                : GLenum = 0x0408
    public static let SHADE_MODEL                   : GLenum = 0x0B54
    public static let FLAT                          : GLenum = 0x1D00
    public static let SMOOTH                        : GLenum = 0x1D01
    public static let COLOR_MATERIAL                : GLenum = 0x0B57
    public static let COLOR_MATERIAL_FACE			: GLenum = 0x0B55
    public static let COLOR_MATERIAL_PARAMETER		: GLenum = 0x0B56
    public static let NORMALIZE                     : GLenum = 0x0BA1

    /* User clipping planes */
    public static let CLIP_PLANE0                   : GLenum = 0x3000
    public static let CLIP_PLANE1                   : GLenum = 0x3001
    public static let CLIP_PLANE2                   : GLenum = 0x3002
    public static let CLIP_PLANE3                   : GLenum = 0x3003
    public static let CLIP_PLANE4                   : GLenum = 0x3004
    public static let CLIP_PLANE5                   : GLenum = 0x3005

    /* Accumulation buffer */
    public static let ACCUM_RED_BITS                : GLenum = 0x0D58
    public static let ACCUM_GREEN_BITS              : GLenum = 0x0D59
    public static let ACCUM_BLUE_BITS               : GLenum = 0x0D5A
    public static let ACCUM_ALPHA_BITS              : GLenum = 0x0D5B
    public static let ACCUM_CLEAR_VALUE             : GLenum = 0x0B80
    public static let ACCUM                         : GLenum = 0x0100
    public static let ADD                           : GLenum = 0x0104
    public static let LOAD                          : GLenum = 0x0101
    public static let MULT                          : GLenum = 0x0103
    public static let RETURN                        : GLenum = 0x0102

    /* Alpha testing */
    public static let ALPHA_TEST                    : GLenum = 0x0BC0
    public static let ALPHA_TEST_REF                : GLenum = 0x0BC2
    public static let ALPHA_TEST_FUNC               : GLenum = 0x0BC1

    /* Blending */
    public static let BLEND                         : GLenum = 0x0BE2
    public static let BLEND_SRC                     : GLenum = 0x0BE1
    public static let BLEND_DST                     : GLenum = 0x0BE0
    public static let ZERO                          : GLenum = 0
    public static let ONE                           : GLenum = 1
    public static let SRC_COLOR                     : GLenum = 0x0300
    public static let ONE_MINUS_SRC_COLOR			: GLenum = 0x0301
    public static let SRC_ALPHA                     : GLenum = 0x0302
    public static let ONE_MINUS_SRC_ALPHA			: GLenum = 0x0303
    public static let DST_ALPHA                     : GLenum = 0x0304
    public static let ONE_MINUS_DST_ALPHA			: GLenum = 0x0305
    public static let DST_COLOR                     : GLenum = 0x0306
    public static let ONE_MINUS_DST_COLOR			: GLenum = 0x0307
    public static let SRC_ALPHA_SATURATE            : GLenum = 0x0308

    /* Render Mode */
    public static let FEEDBACK                      : GLenum = 0x1C01
    public static let RENDER                        : GLenum = 0x1C00
    public static let SELECT                        : GLenum = 0x1C02
    
    /* Feedback */
    public static let FB_2D                         : GLenum = 0x0600
    public static let FB_3D                         : GLenum = 0x0601
    public static let FB_3D_COLOR                   : GLenum = 0x0602
    public static let FB_3D_COLOR_TEXTURE           : GLenum = 0x0603
    public static let FB_4D_COLOR_TEXTURE           : GLenum = 0x0604
    public static let POINT_TOKEN                   : GLenum = 0x0701
    public static let LINE_TOKEN                    : GLenum = 0x0702
    public static let LINE_RESET_TOKEN              : GLenum = 0x0707
    public static let POLYGON_TOKEN                 : GLenum = 0x0703
    public static let BITMAP_TOKEN                  : GLenum = 0x0704
    public static let DRAW_PIXEL_TOKEN              : GLenum = 0x0705
    public static let COPY_PIXEL_TOKEN              : GLenum = 0x0706
    public static let PASS_THROUGH_TOKEN            : GLenum = 0x0700
    public static let FEEDBACK_BUFFER_POINTER		: GLenum = 0x0DF0
    public static let FEEDBACK_BUFFER_SIZE			: GLenum = 0x0DF1
    public static let FEEDBACK_BUFFER_TYPE			: GLenum = 0x0DF2

    /* Selection */
    public static let SELECTION_BUFFER_POINTER		: GLenum = 0x0DF3
    public static let SELECTION_BUFFER_SIZE         : GLenum = 0x0DF4

    /* Fog */
    public static let FOG                           : GLenum = 0x0B60
    public static let FOG_MODE                      : GLenum = 0x0B65
    public static let FOG_DENSITY                   : GLenum = 0x0B62
    public static let FOG_COLOR                     : GLenum = 0x0B66
    public static let FOG_INDEX                     : GLenum = 0x0B61
    public static let FOG_START                     : GLenum = 0x0B63
    public static let FOG_END                       : GLenum = 0x0B64
    public static let LINEAR                        : GLenum = 0x2601
    public static let EXP                           : GLenum = 0x0800
    public static let EXP2                          : GLenum = 0x0801

    /* Logic Ops */
    public static let LOGIC_OP                      : GLenum = 0x0BF1
    public static let INDEX_LOGIC_OP                : GLenum = 0x0BF1
    public static let COLOR_LOGIC_OP                : GLenum = 0x0BF2
    public static let LOGIC_OP_MODE                 : GLenum = 0x0BF0
    public static let CLEAR                         : GLenum = 0x1500
    public static let SET                           : GLenum = 0x150F
    public static let COPY                          : GLenum = 0x1503
    public static let COPY_INVERTED                 : GLenum = 0x150C
    public static let NOOP                          : GLenum = 0x1505
    public static let INVERT                        : GLenum = 0x150A
    public static let AND                           : GLenum = 0x1501
    public static let NAND                          : GLenum = 0x150E
    public static let OR                            : GLenum = 0x1507
    public static let NOR                           : GLenum = 0x1508
    public static let XOR                           : GLenum = 0x1506
    public static let EQUIV                         : GLenum = 0x1509
    public static let AND_REVERSE                   : GLenum = 0x1502
    public static let AND_INVERTED                  : GLenum = 0x1504
    public static let OR_REVERSE                    : GLenum = 0x150B
    public static let OR_INVERTED                   : GLenum = 0x150D

    /* Stencil */
    public static let STENCIL_BITS                  : GLenum = 0x0D57
    public static let STENCIL_TEST                  : GLenum = 0x0B90
    public static let STENCIL_CLEAR_VALUE			: GLenum = 0x0B91
    public static let STENCIL_FUNC                  : GLenum = 0x0B92
    public static let STENCIL_VALUE_MASK            : GLenum = 0x0B93
    public static let STENCIL_FAIL                  : GLenum = 0x0B94
    public static let STENCIL_PASS_DEPTH_FAIL		: GLenum = 0x0B95
    public static let STENCIL_PASS_DEPTH_PASS		: GLenum = 0x0B96
    public static let STENCIL_REF                   : GLenum = 0x0B97
    public static let STENCIL_WRITEMASK             : GLenum = 0x0B98
    public static let STENCIL_INDEX                 : GLenum = 0x1901
    public static let KEEP                          : GLenum = 0x1E00
    public static let REPLACE                       : GLenum = 0x1E01
    public static let INCR                          : GLenum = 0x1E02
    public static let DECR                          : GLenum = 0x1E03

    /* Buffers, Pixel Drawing/Reading */
    public static let NONE                          : GLenum = 0
    public static let LEFT                          : GLenum = 0x0406
    public static let RIGHT                         : GLenum = 0x0407
    /*FRONT                                         : GLenum = 0x0404 */
    /*BACK                                          : GLenum = 0x0405 */
    /*FRONT_AND_BACK                                : GLenum = 0x0408 */
    public static let FRONT_LEFT                    : GLenum = 0x0400
    public static let FRONT_RIGHT                   : GLenum = 0x0401
    public static let BACK_LEFT                     : GLenum = 0x0402
    public static let BACK_RIGHT                    : GLenum = 0x0403
    public static let AUX0                          : GLenum = 0x0409
    public static let AUX1                          : GLenum = 0x040A
    public static let AUX2                          : GLenum = 0x040B
    public static let AUX3                          : GLenum = 0x040C
    public static let COLOR_INDEX                   : GLenum = 0x1900
    public static let RED                           : GLenum = 0x1903
    public static let GREEN                         : GLenum = 0x1904
    public static let BLUE                          : GLenum = 0x1905
    public static let ALPHA                         : GLenum = 0x1906
    public static let LUMINANCE                     : GLenum = 0x1909
    public static let LUMINANCE_ALPHA               : GLenum = 0x190A
    public static let ALPHA_BITS                    : GLenum = 0x0D55
    public static let RED_BITS                      : GLenum = 0x0D52
    public static let GREEN_BITS                    : GLenum = 0x0D53
    public static let BLUE_BITS                     : GLenum = 0x0D54
    public static let INDEX_BITS                    : GLenum = 0x0D51
    public static let SUBPIXEL_BITS                 : GLenum = 0x0D50
    public static let AUX_BUFFERS                   : GLenum = 0x0C00
    public static let READ_BUFFER                   : GLenum = 0x0C02
    public static let DRAW_BUFFER                   : GLenum = 0x0C01
    public static let DOUBLEBUFFER                  : GLenum = 0x0C32
    public static let STEREO                        : GLenum = 0x0C33
    public static let BITMAP                        : GLenum = 0x1A00
    public static let COLOR                         : GLenum = 0x1800
    public static let DEPTH                         : GLenum = 0x1801
    public static let STENCIL                       : GLenum = 0x1802
    public static let DITHER                        : GLenum = 0x0BD0
    public static let RGB                           : GLenum = 0x1907
    public static let RGBA                          : GLenum = 0x1908

    /* Implementation limits */
    public static let MAX_LIST_NESTING              : GLenum = 0x0B31
    public static let MAX_EVAL_ORDER                : GLenum = 0x0D30
    public static let MAX_LIGHTS                    : GLenum = 0x0D31
    public static let MAX_CLIP_PLANES               : GLenum = 0x0D32
    public static let MAX_TEXTURE_SIZE              : GLenum = 0x0D33
    public static let MAX_PIXEL_MAP_TABLE			: GLenum = 0x0D34
    public static let MAX_ATTRIB_STACK_DEPTH        : GLenum = 0x0D35
    public static let MAX_MODELVIEW_STACK_DEPTH		: GLenum = 0x0D36
    public static let MAX_NAME_STACK_DEPTH			: GLenum = 0x0D37
    public static let MAX_PROJECTION_STACK_DEPTH	: GLenum = 0x0D38
    public static let MAX_TEXTURE_STACK_DEPTH		: GLenum = 0x0D39
    public static let MAX_VIEWPORT_DIMS             : GLenum = 0x0D3A
    public static let MAX_CLIENT_ATTRIB_STACK_DEPTH	: GLenum = 0x0D3B

    /* Gets */
    public static let ATTRIB_STACK_DEPTH            : GLenum = 0x0BB0
    public static let CLIENT_ATTRIB_STACK_DEPTH		: GLenum = 0x0BB1
    public static let COLOR_CLEAR_VALUE             : GLenum = 0x0C22
    public static let COLOR_WRITEMASK               : GLenum = 0x0C23
    public static let CURRENT_INDEX                 : GLenum = 0x0B01
    public static let CURRENT_COLOR                 : GLenum = 0x0B00
    public static let CURRENT_NORMAL                : GLenum = 0x0B02
    public static let CURRENT_RASTER_COLOR			: GLenum = 0x0B04
    public static let CURRENT_RASTER_DISTANCE		: GLenum = 0x0B09
    public static let CURRENT_RASTER_INDEX			: GLenum = 0x0B05
    public static let CURRENT_RASTER_POSITION		: GLenum = 0x0B07
    public static let CURRENT_RASTER_TEXTURE_COORDS	: GLenum = 0x0B06
    public static let CURRENT_RASTER_POSITION_VALID	: GLenum = 0x0B08
    public static let CURRENT_TEXTURE_COORDS        : GLenum = 0x0B03
    public static let INDEX_CLEAR_VALUE             : GLenum = 0x0C20
    public static let INDEX_MODE                    : GLenum = 0x0C30
    public static let INDEX_WRITEMASK               : GLenum = 0x0C21
    public static let MODELVIEW_MATRIX              : GLenum = 0x0BA6
    public static let MODELVIEW_STACK_DEPTH         : GLenum = 0x0BA3
    public static let NAME_STACK_DEPTH              : GLenum = 0x0D70
    public static let PROJECTION_MATRIX             : GLenum = 0x0BA7
    public static let PROJECTION_STACK_DEPTH        : GLenum = 0x0BA4
    public static let RENDER_MODE                   : GLenum = 0x0C40
    public static let RGBA_MODE                     : GLenum = 0x0C31
    public static let TEXTURE_MATRIX                : GLenum = 0x0BA8
    public static let TEXTURE_STACK_DEPTH			: GLenum = 0x0BA5
    public static let VIEWPORT                      : GLenum = 0x0BA2

    /* Evaluators */
    public static let AUTO_NORMAL                   : GLenum = 0x0D80
    public static let MAP1_COLOR_4                  : GLenum = 0x0D90
    public static let MAP1_INDEX                    : GLenum = 0x0D91
    public static let MAP1_NORMAL                   : GLenum = 0x0D92
    public static let MAP1_TEXTURE_COORD_1			: GLenum = 0x0D93
    public static let MAP1_TEXTURE_COORD_2			: GLenum = 0x0D94
    public static let MAP1_TEXTURE_COORD_3			: GLenum = 0x0D95
    public static let MAP1_TEXTURE_COORD_4			: GLenum = 0x0D96
    public static let MAP1_VERTEX_3                 : GLenum = 0x0D97
    public static let MAP1_VERTEX_4                 : GLenum = 0x0D98
    public static let MAP2_COLOR_4                  : GLenum = 0x0DB0
    public static let MAP2_INDEX                    : GLenum = 0x0DB1
    public static let MAP2_NORMAL                   : GLenum = 0x0DB2
    public static let MAP2_TEXTURE_COORD_1			: GLenum = 0x0DB3
    public static let MAP2_TEXTURE_COORD_2			: GLenum = 0x0DB4
    public static let MAP2_TEXTURE_COORD_3			: GLenum = 0x0DB5
    public static let MAP2_TEXTURE_COORD_4			: GLenum = 0x0DB6
    public static let MAP2_VERTEX_3                 : GLenum = 0x0DB7
    public static let MAP2_VERTEX_4                 : GLenum = 0x0DB8
    public static let MAP1_GRID_DOMAIN              : GLenum = 0x0DD0
    public static let MAP1_GRID_SEGMENTS            : GLenum = 0x0DD1
    public static let MAP2_GRID_DOMAIN              : GLenum = 0x0DD2
    public static let MAP2_GRID_SEGMENTS            : GLenum = 0x0DD3
    public static let COEFF                         : GLenum = 0x0A00
    public static let ORDER                         : GLenum = 0x0A01
    public static let DOMAIN                        : GLenum = 0x0A02

    /* Hints */
    public static let PERSPECTIVE_CORRECTION_HINT   : GLenum = 0x0C50
    public static let POINT_SMOOTH_HINT             : GLenum = 0x0C51
    public static let LINE_SMOOTH_HINT              : GLenum = 0x0C52
    public static let POLYGON_SMOOTH_HINT			: GLenum = 0x0C53
    public static let FOG_HINT                      : GLenum = 0x0C54
    public static let DONT_CARE                     : GLenum = 0x1100
    public static let FASTEST                       : GLenum = 0x1101
    public static let NICEST                        : GLenum = 0x1102

    /* Scissor box */
    public static let SCISSOR_BOX                   : GLenum = 0x0C10
    public static let SCISSOR_TEST                  : GLenum = 0x0C11

    /* Pixel Mode / Transfer */
    public static let MAP_COLOR                     : GLenum = 0x0D10
    public static let MAP_STENCIL                   : GLenum = 0x0D11
    public static let INDEX_SHIFT                   : GLenum = 0x0D12
    public static let INDEX_OFFSET                  : GLenum = 0x0D13
    public static let RED_SCALE                     : GLenum = 0x0D14
    public static let RED_BIAS                      : GLenum = 0x0D15
    public static let GREEN_SCALE                   : GLenum = 0x0D18
    public static let GREEN_BIAS                    : GLenum = 0x0D19
    public static let BLUE_SCALE                    : GLenum = 0x0D1A
    public static let BLUE_BIAS                     : GLenum = 0x0D1B
    public static let ALPHA_SCALE                   : GLenum = 0x0D1C
    public static let ALPHA_BIAS                    : GLenum = 0x0D1D
    public static let DEPTH_SCALE                   : GLenum = 0x0D1E
    public static let DEPTH_BIAS                    : GLenum = 0x0D1F
    public static let PIXEL_MAP_S_TO_S_SIZE         : GLenum = 0x0CB1
    public static let PIXEL_MAP_I_TO_I_SIZE         : GLenum = 0x0CB0
    public static let PIXEL_MAP_I_TO_R_SIZE         : GLenum = 0x0CB2
    public static let PIXEL_MAP_I_TO_G_SIZE         : GLenum = 0x0CB3
    public static let PIXEL_MAP_I_TO_B_SIZE         : GLenum = 0x0CB4
    public static let PIXEL_MAP_I_TO_A_SIZE         : GLenum = 0x0CB5
    public static let PIXEL_MAP_R_TO_R_SIZE         : GLenum = 0x0CB6
    public static let PIXEL_MAP_G_TO_G_SIZE         : GLenum = 0x0CB7
    public static let PIXEL_MAP_B_TO_B_SIZE         : GLenum = 0x0CB8
    public static let PIXEL_MAP_A_TO_A_SIZE         : GLenum = 0x0CB9
    public static let PIXEL_MAP_S_TO_S              : GLenum = 0x0C71
    public static let PIXEL_MAP_I_TO_I              : GLenum = 0x0C70
    public static let PIXEL_MAP_I_TO_R              : GLenum = 0x0C72
    public static let PIXEL_MAP_I_TO_G              : GLenum = 0x0C73
    public static let PIXEL_MAP_I_TO_B              : GLenum = 0x0C74
    public static let PIXEL_MAP_I_TO_A              : GLenum = 0x0C75
    public static let PIXEL_MAP_R_TO_R              : GLenum = 0x0C76
    public static let PIXEL_MAP_G_TO_G              : GLenum = 0x0C77
    public static let PIXEL_MAP_B_TO_B              : GLenum = 0x0C78
    public static let PIXEL_MAP_A_TO_A              : GLenum = 0x0C79
    public static let PACK_ALIGNMENT                : GLenum = 0x0D05
    public static let PACK_LSB_FIRST                : GLenum = 0x0D01
    public static let PACK_ROW_LENGTH               : GLenum = 0x0D02
    public static let PACK_SKIP_PIXELS              : GLenum = 0x0D04
    public static let PACK_SKIP_ROWS                : GLenum = 0x0D03
    public static let PACK_SWAP_BYTES               : GLenum = 0x0D00
    public static let UNPACK_ALIGNMENT              : GLenum = 0x0CF5
    public static let UNPACK_LSB_FIRST              : GLenum = 0x0CF1
    public static let UNPACK_ROW_LENGTH             : GLenum = 0x0CF2
    public static let UNPACK_SKIP_PIXELS            : GLenum = 0x0CF4
    public static let UNPACK_SKIP_ROWS              : GLenum = 0x0CF3
    public static let UNPACK_SWAP_BYTES             : GLenum = 0x0CF0
    public static let ZOOM_X                        : GLenum = 0x0D16
    public static let ZOOM_Y                        : GLenum = 0x0D17

    /* Texture mapping */
    public static let TEXTURE_ENV                   : GLenum = 0x2300
    public static let TEXTURE_ENV_MODE              : GLenum = 0x2200
    public static let TEXTURE_1D                    : GLenum = 0x0DE0
    public static let TEXTURE_2D                    : GLenum = 0x0DE1
    public static let TEXTURE_WRAP_S                : GLenum = 0x2802
    public static let TEXTURE_WRAP_T                : GLenum = 0x2803
    public static let TEXTURE_MAG_FILTER            : GLenum = 0x2800
    public static let TEXTURE_MIN_FILTER            : GLenum = 0x2801
    public static let TEXTURE_ENV_COLOR             : GLenum = 0x2201
    public static let TEXTURE_GEN_S                 : GLenum = 0x0C60
    public static let TEXTURE_GEN_T                 : GLenum = 0x0C61
    public static let TEXTURE_GEN_R                 : GLenum = 0x0C62
    public static let TEXTURE_GEN_Q                 : GLenum = 0x0C63
    public static let TEXTURE_GEN_MODE              : GLenum = 0x2500
    public static let TEXTURE_BORDER_COLOR			: GLenum = 0x1004
    public static let TEXTURE_WIDTH                 : GLenum = 0x1000
    public static let TEXTURE_HEIGHT                : GLenum = 0x1001
    public static let TEXTURE_BORDER                : GLenum = 0x1005
    public static let TEXTURE_COMPONENTS            : GLenum = 0x1003
    public static let TEXTURE_RED_SIZE              : GLenum = 0x805C
    public static let TEXTURE_GREEN_SIZE            : GLenum = 0x805D
    public static let TEXTURE_BLUE_SIZE             : GLenum = 0x805E
    public static let TEXTURE_ALPHA_SIZE            : GLenum = 0x805F
    public static let TEXTURE_LUMINANCE_SIZE        : GLenum = 0x8060
    public static let TEXTURE_INTENSITY_SIZE        : GLenum = 0x8061
    public static let NEAREST_MIPMAP_NEAREST        : GLenum = 0x2700
    public static let NEAREST_MIPMAP_LINEAR         : GLenum = 0x2702
    public static let LINEAR_MIPMAP_NEAREST         : GLenum = 0x2701
    public static let LINEAR_MIPMAP_LINEAR			: GLenum = 0x2703
    public static let OBJECT_LINEAR                 : GLenum = 0x2401
    public static let OBJECT_PLANE                  : GLenum = 0x2501
    public static let EYE_LINEAR                    : GLenum = 0x2400
    public static let EYE_PLANE                     : GLenum = 0x2502
    public static let SPHERE_MAP                    : GLenum = 0x2402
    public static let DECAL                         : GLenum = 0x2101
    public static let MODULATE                      : GLenum = 0x2100
    public static let NEAREST                       : GLenum = 0x2600
    public static let REPEAT                        : GLenum = 0x2901
    public static let CLAMP                         : GLenum = 0x2900
    public static let S                             : GLenum = 0x2000
    public static let T                             : GLenum = 0x2001
    public static let R                             : GLenum = 0x2002
    public static let Q                             : GLenum = 0x2003

    /* Utility */
    public static let VENDOR                        : GLenum = 0x1F00
    public static let RENDERER                      : GLenum = 0x1F01
    public static let VERSION                       : GLenum = 0x1F02
    public static let EXTENSIONS                    : GLenum = 0x1F03

    /* Errors */
    public static let NO_ERROR                      : GLenum = 0
    public static let INVALID_ENUM                  : GLenum = 0x0500
    public static let INVALID_VALUE                 : GLenum = 0x0501
    public static let INVALID_OPERATION             : GLenum = 0x0502
    public static let STACK_OVERFLOW                : GLenum = 0x0503
    public static let STACK_UNDERFLOW               : GLenum = 0x0504
    public static let OUT_OF_MEMORY                 : GLenum = 0x0505

    /* glPush/PopAttrib bits */
    public static let CURRENT_BIT                   : GLenum = 0x00000001
    public static let POINT_BIT                     : GLenum = 0x00000002
    public static let LINE_BIT                      : GLenum = 0x00000004
    public static let POLYGON_BIT                   : GLenum = 0x00000008
    public static let POLYGON_STIPPLE_BIT			: GLenum = 0x00000010
    public static let PIXEL_MODE_BIT                : GLenum = 0x00000020
    public static let LIGHTING_BIT                  : GLenum = 0x00000040
    public static let FOG_BIT                       : GLenum = 0x00000080
    public static let DEPTH_BUFFER_BIT              : GLenum = 0x00000100
    public static let ACCUM_BUFFER_BIT              : GLenum = 0x00000200
    public static let STENCIL_BUFFER_BIT            : GLenum = 0x00000400
    public static let VIEWPORT_BIT                  : GLenum = 0x00000800
    public static let TRANSFORM_BIT                 : GLenum = 0x00001000
    public static let ENABLE_BIT                    : GLenum = 0x00002000
    public static let COLOR_BUFFER_BIT              : GLenum = 0x00004000
    public static let HINT_BIT                      : GLenum = 0x00008000
    public static let EVAL_BIT                      : GLenum = 0x00010000
    public static let LIST_BIT                      : GLenum = 0x00020000
    public static let TEXTURE_BIT                   : GLenum = 0x00040000
    public static let SCISSOR_BIT                   : GLenum = 0x00080000
    public static let ALL_ATTRIB_BITS               : GLenum = 0xFFFFFFFF


    /* OpenGL 1.1 */
    public static let PROXY_TEXTURE_1D              : GLenum = 0x8063
    public static let PROXY_TEXTURE_2D              : GLenum = 0x8064
    public static let TEXTURE_PRIORITY              : GLenum = 0x8066
    public static let TEXTURE_RESIDENT              : GLenum = 0x8067
    public static let TEXTURE_BINDING_1D            : GLenum = 0x8068
    public static let TEXTURE_BINDING_2D            : GLenum = 0x8069
    public static let TEXTURE_INTERNAL_FORMAT		: GLenum = 0x1003
    public static let ALPHA4                        : GLenum = 0x803B
    public static let ALPHA8                        : GLenum = 0x803C
    public static let ALPHA12                       : GLenum = 0x803D
    public static let ALPHA16                       : GLenum = 0x803E
    public static let LUMINANCE4                    : GLenum = 0x803F
    public static let LUMINANCE8                    : GLenum = 0x8040
    public static let LUMINANCE12                   : GLenum = 0x8041
    public static let LUMINANCE16                   : GLenum = 0x8042
    public static let LUMINANCE4_ALPHA4             : GLenum = 0x8043
    public static let LUMINANCE6_ALPHA2             : GLenum = 0x8044
    public static let LUMINANCE8_ALPHA8             : GLenum = 0x8045
    public static let LUMINANCE12_ALPHA4            : GLenum = 0x8046
    public static let LUMINANCE12_ALPHA12			: GLenum = 0x8047
    public static let LUMINANCE16_ALPHA16			: GLenum = 0x8048
    public static let INTENSITY                     : GLenum = 0x8049
    public static let INTENSITY4                    : GLenum = 0x804A
    public static let INTENSITY8                    : GLenum = 0x804B
    public static let INTENSITY12                   : GLenum = 0x804C
    public static let INTENSITY16                   : GLenum = 0x804D
    public static let R3_G3_B2                      : GLenum = 0x2A10
    public static let RGB4                          : GLenum = 0x804F
    public static let RGB5                          : GLenum = 0x8050
    public static let RGB8                          : GLenum = 0x8051
    public static let RGB10                         : GLenum = 0x8052
    public static let RGB12                         : GLenum = 0x8053
    public static let RGB16                         : GLenum = 0x8054
    public static let RGBA2                         : GLenum = 0x8055
    public static let RGBA4                         : GLenum = 0x8056
    public static let RGB5_A1                       : GLenum = 0x8057
    public static let RGBA8                         : GLenum = 0x8058
    public static let RGB10_A2                      : GLenum = 0x8059
    public static let RGBA12                        : GLenum = 0x805A
    public static let RGBA16                        : GLenum = 0x805B
    public static let CLIENT_PIXEL_STORE_BIT        : GLenum = 0x00000001
    public static let CLIENT_VERTEX_ARRAY_BIT		: GLenum = 0x00000002
    public static let ALL_CLIENT_ATTRIB_BITS 		: GLenum = 0xFFFFFFFF
    public static let CLIENT_ALL_ATTRIB_BITS 		: GLenum = 0xFFFFFFFF
    
    /*
    * OpenGL 1.2
    */
    
    public static let RESCALE_NORMAL                       : GLenum = 0x803A
    public static let CLAMP_TO_EDGE                        : GLenum = 0x812F
    public static let MAX_ELEMENTS_VERTICES                : GLenum = 0x80E8
    public static let MAX_ELEMENTS_INDICES                 : GLenum = 0x80E9
    public static let BGR                                  : GLenum = 0x80E0
    public static let BGRA                                 : GLenum = 0x80E1
    public static let UNSIGNED_BYTE_3_3_2                  : GLenum = 0x8032
    public static let UNSIGNED_BYTE_2_3_3_REV              : GLenum = 0x8362
    public static let UNSIGNED_SHORT_5_6_5                 : GLenum = 0x8363
    public static let UNSIGNED_SHORT_5_6_5_REV             : GLenum = 0x8364
    public static let UNSIGNED_SHORT_4_4_4_4               : GLenum = 0x8033
    public static let UNSIGNED_SHORT_4_4_4_4_REV           : GLenum = 0x8365
    public static let UNSIGNED_SHORT_5_5_5_1               : GLenum = 0x8034
    public static let UNSIGNED_SHORT_1_5_5_5_REV           : GLenum = 0x8366
    public static let UNSIGNED_INT_8_8_8_8                 : GLenum = 0x8035
    public static let UNSIGNED_INT_8_8_8_8_REV             : GLenum = 0x8367
    public static let UNSIGNED_INT_10_10_10_2              : GLenum = 0x8036
    public static let UNSIGNED_INT_2_10_10_10_REV          : GLenum = 0x8368
    public static let LIGHT_MODEL_COLOR_CONTROL            : GLenum = 0x81F8
    public static let SINGLE_COLOR                         : GLenum = 0x81F9
    public static let SEPARATE_SPECULAR_COLOR              : GLenum = 0x81FA
    public static let TEXTURE_MIN_LOD                      : GLenum = 0x813A
    public static let TEXTURE_MAX_LOD                      : GLenum = 0x813B
    public static let TEXTURE_BASE_LEVEL                   : GLenum = 0x813C
    public static let TEXTURE_MAX_LEVEL                    : GLenum = 0x813D
    public static let SMOOTH_POINT_SIZE_RANGE              : GLenum = 0x0B12
    public static let SMOOTH_POINT_SIZE_GRANULARITY        : GLenum = 0x0B13
    public static let SMOOTH_LINE_WIDTH_RANGE              : GLenum = 0x0B22
    public static let SMOOTH_LINE_WIDTH_GRANULARITY        : GLenum = 0x0B23
    public static let ALIASED_POINT_SIZE_RANGE             : GLenum = 0x846D
    public static let ALIASED_LINE_WIDTH_RANGE             : GLenum = 0x846E
    public static let PACK_SKIP_IMAGES                     : GLenum = 0x806B
    public static let PACK_IMAGE_HEIGHT                    : GLenum = 0x806C
    public static let UNPACK_SKIP_IMAGES                   : GLenum = 0x806D
    public static let UNPACK_IMAGE_HEIGHT                  : GLenum = 0x806E
    public static let TEXTURE_3D                           : GLenum = 0x806F
    public static let PROXY_TEXTURE_3D                     : GLenum = 0x8070
    public static let TEXTURE_DEPTH                        : GLenum = 0x8071
    public static let TEXTURE_WRAP_R                       : GLenum = 0x8072
    public static let MAX_3D_TEXTURE_SIZE                  : GLenum = 0x8073
    public static let TEXTURE_BINDING_3D                   : GLenum = 0x806A
    
    /*
    * ARB_imaging
    */
    
    public static let CONSTANT_COLOR                       : GLenum = 0x8001
    public static let ONE_MINUS_CONSTANT_COLOR             : GLenum = 0x8002
    public static let CONSTANT_ALPHA                       : GLenum = 0x8003
    public static let ONE_MINUS_CONSTANT_ALPHA             : GLenum = 0x8004
    public static let COLOR_TABLE                          : GLenum = 0x80D0
    public static let POST_CONVOLUTION_COLOR_TABLE         : GLenum = 0x80D1
    public static let POST_COLOR_MATRIX_COLOR_TABLE        : GLenum = 0x80D2
    public static let PROXY_COLOR_TABLE                    : GLenum = 0x80D3
    public static let PROXY_POST_CONVOLUTION_COLOR_TABLE   : GLenum = 0x80D4
    public static let PROXY_POST_COLOR_MATRIX_COLOR_TABLE  : GLenum = 0x80D5
    public static let COLOR_TABLE_SCALE                    : GLenum = 0x80D6
    public static let COLOR_TABLE_BIAS                     : GLenum = 0x80D7
    public static let COLOR_TABLE_FORMAT                   : GLenum = 0x80D8
    public static let COLOR_TABLE_WIDTH                    : GLenum = 0x80D9
    public static let COLOR_TABLE_RED_SIZE                 : GLenum = 0x80DA
    public static let COLOR_TABLE_GREEN_SIZE               : GLenum = 0x80DB
    public static let COLOR_TABLE_BLUE_SIZE                : GLenum = 0x80DC
    public static let COLOR_TABLE_ALPHA_SIZE               : GLenum = 0x80DD
    public static let COLOR_TABLE_LUMINANCE_SIZE           : GLenum = 0x80DE
    public static let COLOR_TABLE_INTENSITY_SIZE           : GLenum = 0x80DF
    public static let CONVOLUTION_1D                       : GLenum = 0x8010
    public static let CONVOLUTION_2D                       : GLenum = 0x8011
    public static let SEPARABLE_2D                         : GLenum = 0x8012
    public static let CONVOLUTION_BORDER_MODE              : GLenum = 0x8013
    public static let CONVOLUTION_FILTER_SCALE             : GLenum = 0x8014
    public static let CONVOLUTION_FILTER_BIAS              : GLenum = 0x8015
    public static let REDUCE                               : GLenum = 0x8016
    public static let CONVOLUTION_FORMAT                   : GLenum = 0x8017
    public static let CONVOLUTION_WIDTH                    : GLenum = 0x8018
    public static let CONVOLUTION_HEIGHT                   : GLenum = 0x8019
    public static let MAX_CONVOLUTION_WIDTH                : GLenum = 0x801A
    public static let MAX_CONVOLUTION_HEIGHT               : GLenum = 0x801B
    public static let POST_CONVOLUTION_RED_SCALE           : GLenum = 0x801C
    public static let POST_CONVOLUTION_GREEN_SCALE         : GLenum = 0x801D
    public static let POST_CONVOLUTION_BLUE_SCALE          : GLenum = 0x801E
    public static let POST_CONVOLUTION_ALPHA_SCALE         : GLenum = 0x801F
    public static let POST_CONVOLUTION_RED_BIAS            : GLenum = 0x8020
    public static let POST_CONVOLUTION_GREEN_BIAS          : GLenum = 0x8021
    public static let POST_CONVOLUTION_BLUE_BIAS           : GLenum = 0x8022
    public static let POST_CONVOLUTION_ALPHA_BIAS          : GLenum = 0x8023
    public static let CONSTANT_BORDER                      : GLenum = 0x8151
    public static let REPLICATE_BORDER                     : GLenum = 0x8153
    public static let CONVOLUTION_BORDER_COLOR             : GLenum = 0x8154
    public static let COLOR_MATRIX                         : GLenum = 0x80B1
    public static let COLOR_MATRIX_STACK_DEPTH             : GLenum = 0x80B2
    public static let MAX_COLOR_MATRIX_STACK_DEPTH         : GLenum = 0x80B3
    public static let POST_COLOR_MATRIX_RED_SCALE          : GLenum = 0x80B4
    public static let POST_COLOR_MATRIX_GREEN_SCALE        : GLenum = 0x80B5
    public static let POST_COLOR_MATRIX_BLUE_SCALE         : GLenum = 0x80B6
    public static let POST_COLOR_MATRIX_ALPHA_SCALE        : GLenum = 0x80B7
    public static let POST_COLOR_MATRIX_RED_BIAS           : GLenum = 0x80B8
    public static let POST_COLOR_MATRIX_GREEN_BIAS         : GLenum = 0x80B9
    public static let POST_COLOR_MATRIX_BLUE_BIAS          : GLenum = 0x80BA
    public static let POST_COLOR_MATRIX_ALPHA_BIAS         : GLenum = 0x80BB
    public static let HISTOGRAM                            : GLenum = 0x8024
    public static let PROXY_HISTOGRAM                      : GLenum = 0x8025
    public static let HISTOGRAM_WIDTH                      : GLenum = 0x8026
    public static let HISTOGRAM_FORMAT                     : GLenum = 0x8027
    public static let HISTOGRAM_RED_SIZE                   : GLenum = 0x8028
    public static let HISTOGRAM_GREEN_SIZE                 : GLenum = 0x8029
    public static let HISTOGRAM_BLUE_SIZE                  : GLenum = 0x802A
    public static let HISTOGRAM_ALPHA_SIZE                 : GLenum = 0x802B
    public static let HISTOGRAM_LUMINANCE_SIZE             : GLenum = 0x802C
    public static let HISTOGRAM_SINK                       : GLenum = 0x802D
    public static let MINMAX                               : GLenum = 0x802E
    public static let MINMAX_FORMAT                        : GLenum = 0x802F
    public static let MINMAX_SINK                          : GLenum = 0x8030
    public static let TABLE_TOO_LARGE                      : GLenum = 0x8031
    public static let BLEND_EQUATION                       : GLenum = 0x8009
    public static let MIN                                  : GLenum = 0x8007
    public static let MAX                                  : GLenum = 0x8008
    public static let FUNC_ADD                             : GLenum = 0x8006
    public static let FUNC_SUBTRACT                        : GLenum = 0x800A
    public static let FUNC_REVERSE_SUBTRACT                : GLenum = 0x800B
    public static let BLEND_COLOR                          : GLenum = 0x8005
    
    /*
    * OpenGL 1.3
    */
    
    /* multitexture */
    public static let TEXTURE0                             : GLenum = 0x84C0
    public static let TEXTURE1                             : GLenum = 0x84C1
    public static let TEXTURE2                             : GLenum = 0x84C2
    public static let TEXTURE3                             : GLenum = 0x84C3
    public static let TEXTURE4                             : GLenum = 0x84C4
    public static let TEXTURE5                             : GLenum = 0x84C5
    public static let TEXTURE6                             : GLenum = 0x84C6
    public static let TEXTURE7                             : GLenum = 0x84C7
    public static let TEXTURE8                             : GLenum = 0x84C8
    public static let TEXTURE9                             : GLenum = 0x84C9
    public static let TEXTURE10                            : GLenum = 0x84CA
    public static let TEXTURE11                            : GLenum = 0x84CB
    public static let TEXTURE12                            : GLenum = 0x84CC
    public static let TEXTURE13                            : GLenum = 0x84CD
    public static let TEXTURE14                            : GLenum = 0x84CE
    public static let TEXTURE15                            : GLenum = 0x84CF
    public static let TEXTURE16                            : GLenum = 0x84D0
    public static let TEXTURE17                            : GLenum = 0x84D1
    public static let TEXTURE18                            : GLenum = 0x84D2
    public static let TEXTURE19                            : GLenum = 0x84D3
    public static let TEXTURE20                            : GLenum = 0x84D4
    public static let TEXTURE21                            : GLenum = 0x84D5
    public static let TEXTURE22                            : GLenum = 0x84D6
    public static let TEXTURE23                            : GLenum = 0x84D7
    public static let TEXTURE24                            : GLenum = 0x84D8
    public static let TEXTURE25                            : GLenum = 0x84D9
    public static let TEXTURE26                            : GLenum = 0x84DA
    public static let TEXTURE27                            : GLenum = 0x84DB
    public static let TEXTURE28                            : GLenum = 0x84DC
    public static let TEXTURE29                            : GLenum = 0x84DD
    public static let TEXTURE30                            : GLenum = 0x84DE
    public static let TEXTURE31                            : GLenum = 0x84DF
    public static let ACTIVE_TEXTURE                       : GLenum = 0x84E0
    public static let CLIENT_ACTIVE_TEXTURE                : GLenum = 0x84E1
    public static let MAX_TEXTURE_UNITS                    : GLenum = 0x84E2
    /* texture_cube_map */
    public static let NORMAL_MAP                           : GLenum = 0x8511
    public static let REFLECTION_MAP                       : GLenum = 0x8512
    public static let TEXTURE_CUBE_MAP                     : GLenum = 0x8513
    public static let TEXTURE_BINDING_CUBE_MAP             : GLenum = 0x8514
    public static let TEXTURE_CUBE_MAP_POSITIVE_X          : GLenum = 0x8515
    public static let TEXTURE_CUBE_MAP_NEGATIVE_X          : GLenum = 0x8516
    public static let TEXTURE_CUBE_MAP_POSITIVE_Y          : GLenum = 0x8517
    public static let TEXTURE_CUBE_MAP_NEGATIVE_Y          : GLenum = 0x8518
    public static let TEXTURE_CUBE_MAP_POSITIVE_Z          : GLenum = 0x8519
    public static let TEXTURE_CUBE_MAP_NEGATIVE_Z          : GLenum = 0x851A
    public static let PROXY_TEXTURE_CUBE_MAP               : GLenum = 0x851B
    public static let MAX_CUBE_MAP_TEXTURE_SIZE            : GLenum = 0x851C
    /* texture_compression */
    public static let COMPRESSED_ALPHA                     : GLenum = 0x84E9
    public static let COMPRESSED_LUMINANCE                 : GLenum = 0x84EA
    public static let COMPRESSED_LUMINANCE_ALPHA           : GLenum = 0x84EB
    public static let COMPRESSED_INTENSITY                 : GLenum = 0x84EC
    public static let COMPRESSED_RGB                       : GLenum = 0x84ED
    public static let COMPRESSED_RGBA                      : GLenum = 0x84EE
    public static let TEXTURE_COMPRESSION_HINT             : GLenum = 0x84EF
    public static let TEXTURE_COMPRESSED_IMAGE_SIZE        : GLenum = 0x86A0
    public static let TEXTURE_COMPRESSED                   : GLenum = 0x86A1
    public static let NUM_COMPRESSED_TEXTURE_FORMATS       : GLenum = 0x86A2
    public static let COMPRESSED_TEXTURE_FORMATS           : GLenum = 0x86A3
    /* multisample */
    public static let MULTISAMPLE                          : GLenum = 0x809D
    public static let SAMPLE_ALPHA_TO_COVERAGE             : GLenum = 0x809E
    public static let SAMPLE_ALPHA_TO_ONE                  : GLenum = 0x809F
    public static let SAMPLE_COVERAGE                      : GLenum = 0x80A0
    public static let SAMPLE_BUFFERS                       : GLenum = 0x80A8
    public static let SAMPLES                              : GLenum = 0x80A9
    public static let SAMPLE_COVERAGE_VALUE                : GLenum = 0x80AA
    public static let SAMPLE_COVERAGE_INVERT               : GLenum = 0x80AB
    public static let MULTISAMPLE_BIT                      : GLenum = 0x20000000
    /* transpose_matrix */
    public static let TRANSPOSE_MODELVIEW_MATRIX           : GLenum = 0x84E3
    public static let TRANSPOSE_PROJECTION_MATRIX          : GLenum = 0x84E4
    public static let TRANSPOSE_TEXTURE_MATRIX             : GLenum = 0x84E5
    public static let TRANSPOSE_COLOR_MATRIX               : GLenum = 0x84E6
    /* texture_env_combine */
    public static let COMBINE                              : GLenum = 0x8570
    public static let COMBINE_RGB                          : GLenum = 0x8571
    public static let COMBINE_ALPHA                        : GLenum = 0x8572
    public static let SOURCE0_RGB                          : GLenum = 0x8580
    public static let SOURCE1_RGB                          : GLenum = 0x8581
    public static let SOURCE2_RGB                          : GLenum = 0x8582
    public static let SOURCE0_ALPHA                        : GLenum = 0x8588
    public static let SOURCE1_ALPHA                        : GLenum = 0x8589
    public static let SOURCE2_ALPHA                        : GLenum = 0x858A
    public static let OPERAND0_RGB                         : GLenum = 0x8590
    public static let OPERAND1_RGB                         : GLenum = 0x8591
    public static let OPERAND2_RGB                         : GLenum = 0x8592
    public static let OPERAND0_ALPHA                       : GLenum = 0x8598
    public static let OPERAND1_ALPHA                       : GLenum = 0x8599
    public static let OPERAND2_ALPHA                       : GLenum = 0x859A
    public static let RGB_SCALE                            : GLenum = 0x8573
    public static let ADD_SIGNED                           : GLenum = 0x8574
    public static let INTERPOLATE                          : GLenum = 0x8575
    public static let SUBTRACT                             : GLenum = 0x84E7
    public static let CONSTANT                             : GLenum = 0x8576
    public static let PRIMARY_COLOR                        : GLenum = 0x8577
    public static let PREVIOUS                             : GLenum = 0x8578
    /* texture_env_dot3 */
    public static let DOT3_RGB                             : GLenum = 0x86AE
    public static let DOT3_RGBA                            : GLenum = 0x86AF
    /* texture_border_clamp */
    public static let CLAMP_TO_BORDER                      : GLenum = 0x812D
}