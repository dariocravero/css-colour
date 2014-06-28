module CssColour
  module Constants
    INHERIT = 'inherit'.freeze

    WEBSAFE = %w(aliceblue antiquewhite aqua aquamarine azure beige bisque black blanchedalmond blue
      blueviolet brown burlywood cadetblue chartreuse chocolate coral cornflowerblue cornsilk crimson cyan
      darkblue darkcyan darkgoldenrod darkgray darkgrey darkgreen darkkhaki darkmagenta darkolivegreen
      darkorange darkorchid darkred darksalmon darkseagreen darkslateblue darkslategray darkslategrey
      darkturquoise darkviolet deeppink deepskyblue dimgray dimgrey dodgerblue firebrick floralwhite
      forestgreen fuchsia gainsboro ghostwhite gold goldenrod gray grey green greenyellow honeydew
      hotpink indianred indigo ivory khaki lavender lavenderblush lawngreen lemonchiffon lightblue
      lightcoral lightcyan lightgoldenrodyellow lightgray lightgrey lightgreen lightpink lightsalmon
      lightseagreen lightskyblue lightslategray lightslategrey lightsteelblue lightyellow lime
      limegreen linen magenta maroon mediumaquamarine mediumblue mediumorchid mediumpurple
      mediumseagreen mediumslateblue mediumspringgreen mediumturquoise mediumvioletred midnightblue
      mintcream mistyrose moccasin navajowhite navy oldlace olive olivedrab orange orangered orchid
      palegoldenrod palegreen paleturquoise palevioletred papayawhip peachpuff peru pink plum
      powderblue purple red rosybrown royalblue saddlebrown salmon sandybrown seagreen seashell
      sienna silver skyblue slateblue slategray slategrey snow springgreen steelblue tan teal
      thistle tomato turquoise violet wheat white whitesmoke yellow yellowgreen).freeze

    HEX = /^#(?:[0-9a-f]{3})(?:[0-9a-f]{3})?$/

    RANGE_0_360 = %r{
      0|          # 0
      [1-9]\d?|   # 1-9 and 10-99
      [12]\d\d?|  # 100-299
      3[0-5]\d|   # 300-359
      360         # 360
    }x

    RANGE_0_100 = %r{
      0|        # 0
      [1-9]\d?| # 1-9 and 10-99
      100       # 100
    }x

    RANGE_0_255 = %r{
      0|        # 0
      [1-9]\d?| # 1-9 and 10-99
      1\d\d?|   # 100-199
      2[0-4]\d| # 200-249
      25[0-5]   # 250-255
    }x

    RANGE_ALPHA = %r{
      (0\.\d)| # 0.0-0.9
      (1\.0)|  # 1.0
      [01]    # 0 or 1
    }x

    HSL = /^hsl\(\s*(#{RANGE_0_360})\s*,\s*(#{RANGE_0_100}%)\s*,\s*(#{RANGE_0_100}%)\s*\)$/

    HSLA = /^hsla\(\s*(#{RANGE_0_360})\s*,\s*(#{RANGE_0_100}%),\s*(#{RANGE_0_100}%)\s*,\s*(#{RANGE_ALPHA})\s*\)$/

    RGB = /^rgb\(\s*(#{RANGE_0_255})\s*,\s*(#{RANGE_0_255})\s*,\s*(#{RANGE_0_255})\s*\)$/

    RGBA = /^rgba\(\s*(#{RANGE_0_255})\s*,\s*(#{RANGE_0_255})\s*,\s*(#{RANGE_0_255})\s*,\s*(#{RANGE_ALPHA})\s*\)$/
  end
end
