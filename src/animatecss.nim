## Main module of animatecss

type
  AnimateCssAnimations* {.pure.} = enum
    bounce, flash, pulse, rubberBand, shakeX, shakeY,
        headShake, swing, tada, wobble, jello, heartBeat,
        backInDown, backInLeft, backInRight, backInUp,
        backOutDown, backOutLeft, backOutRight, backOutUp,
        bounceIn, bounceInDown, bounceInLeft, bounceInRight,
        bounceInUp, bounceOut, bounceOutDown, bounceOutLeft,
        bounceOutRight, bounceOutUp, fadeIn, fadeInDown,
        fadeInDownBig, fadeInLeft, fadeInLeftBig, fadeInRight,
        fadeInRightBig, fadeInUp, fadeInUpBig, fadeInTopLeft,
        fadeInTopRight, fadeInBottomLeft, fadeInBottomRight,
        fadeOut, fadeOutDown, fadeOutDownBig, fadeOutLeft,
        fadeOutLeftBig, fadeOutRight, fadeOutRightBig, fadeOutUp,
        fadeOutUpBig, fadeOutTopLeft, fadeOutTopRight,
        fadeOutBottomRight, fadeOutBottomLeft, flip, flipInX,
        flipInY, flipOutX, flipOutY, lightSpeedInRight,
        lightSpeedInLeft, lightSpeedOutRight, lightSpeedOutLeft,
        rotateIn, rotateInDownLeft, rotateInDownRight,
        rotateInUpLeft, rotateInUpRight, rotateOut,
        rotateOutDownLeft, rotateOutDownRight, rotateOutUpLeft,
        rotateOutUpRight, hinge, jackInTheBox, rollIn, rollOut,
        zoomIn, zoomInDown, zoomInLeft, zoomInRight, zoomInUp,
        zoomOut, zoomOutDown, zoomOutLeft, zoomOutRight,
        zoomOutUp, slideInDown, slideInLeft, slideInRight,
        slideInUp, slideOutDown, slideOutLeft, slideOutRight, slideOutUp
  AnimateCssUtility* {.pure.} = enum
    delay2s = "delay-2s", delay3s = "delay-3s", delay4s = "delay-4s",
        delay5s = "delay-5s", slow, slower, fast, faster, repeat1 = "repeat-1",
        repeat2 = "repeat-2", repeat3 = "repeat-3", infinite

const
  animated = "animated"

func animate(s: string): string =
  "animate__" & s

func parseClass*(x: AnimateCssAnimations or AnimateCssUtility): string =
  result = $x

func animatecss*(classes: varargs[string, parseClass]): string =
  ## Animate.css
  runnableExamples:
    doAssert animatecss(bounce) == "animate__animated animate__bounce"
    doAssert animatecss(bounceInLeft) == "animate__animated animate__bounceInLeft"
    # And with multiple
    doAssert animatecss(backInRight, bounce) == "animate__animated animate__backInRight animate__bounce"
  if classes.len > 0:
    result = animate animated
    for i, class in classes:
      result.add " "
      result.add animate class

when isMainModule:
  echo animatecss(slideInUp, delay4s, bounce)
  doAssert animatecss(bounceInLeft) == "animate__animated animate__bounceInLeft"
