.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FACTOR:I = 0x40

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollFactor:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 261
    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 270
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 271
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 272
    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 273
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 274
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 275
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 276
    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 277
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 278
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 280
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 282
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 284
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 285
    const/16 v0, 0x40

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollFactor:I

    .line 268
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 300
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 301
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 302
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 304
    .local v2, "density":F
    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 305
    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float v8, v2, v11

    .line 310
    .local v8, "sizeAndDensity":F
    :goto_0
    const/high16 v11, 0x41400000    # 12.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 311
    const/high16 v11, 0x41400000    # 12.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 312
    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v11, v2

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 313
    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 314
    const/high16 v11, 0x41800000    # 16.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 317
    const-string/jumbo v11, "window"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 318
    .local v9, "win":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 319
    .local v3, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 320
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v3, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 321
    iget v11, v7, Landroid/graphics/Point;->x:I

    mul-int/lit8 v11, v11, 0x4

    iget v12, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v11, v12

    iput v11, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 323
    const/4 v11, 0x0

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 324
    const/high16 v11, 0x40c00000    # 6.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 326
    iget-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v11, :cond_0

    .line 328
    const v11, 0x10e00a3

    .line 327
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 330
    .local v1, "configVal":I
    packed-switch v1, :pswitch_data_0

    .line 333
    :pswitch_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    .line 335
    .local v10, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v10}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    :goto_1
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 336
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v1    # "configVal":I
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :cond_0
    :goto_2
    const v11, 0x1120012

    .line 355
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 358
    const v11, 0x1050012

    .line 357
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 359
    iget v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v11, v11, 0x2

    iput v11, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 361
    iget v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v11, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 364
    const v11, 0x1050013

    .line 363
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 366
    const v11, 0x1050014

    .line 365
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 368
    const v11, 0x10e009a

    .line 367
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-long v12, v11

    iput-wide v12, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 370
    const v11, 0x1050015

    .line 369
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mScrollFactor:I

    .line 298
    return-void

    .line 307
    .end local v3    # "display":Landroid/view/Display;
    .end local v7    # "size":Landroid/graphics/Point;
    .end local v8    # "sizeAndDensity":F
    .end local v9    # "win":Landroid/view/WindowManager;
    :cond_1
    move v8, v2

    .restart local v8    # "sizeAndDensity":F
    goto/16 :goto_0

    .line 335
    .restart local v1    # "configVal":I
    .restart local v3    # "display":Landroid/view/Display;
    .restart local v7    # "size":Landroid/graphics/Point;
    .restart local v9    # "win":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/IWindowManager;
    :cond_2
    const/4 v11, 0x1

    goto :goto_1

    .line 337
    :catch_0
    move-exception v4

    .line 338
    .local v4, "ex":Landroid/os/RemoteException;
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_2

    .line 344
    .end local v4    # "ex":Landroid/os/RemoteException;
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :pswitch_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 345
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_2

    .line 349
    :pswitch_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 350
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_2

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 382
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 384
    .local v1, "density":I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 385
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    .line 386
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 387
    .restart local v0    # "configuration":Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    :cond_0
    return-object v0
.end method

.method public static getDefaultActionModeHideDuration()J
    .locals 2

    .prologue
    .line 780
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    .prologue
    .line 519
    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 604
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 508
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 433
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 751
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    .prologue
    .line 539
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 529
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 499
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 481
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 474
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .prologue
    .line 456
    const-string/jumbo v0, "long_press_timeout"

    .line 457
    const/16 v1, 0x1f4

    .line 456
    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 702
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 672
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    const/16 v0, 0x32

    return v0
.end method

.method public static getMultiPressTimeout()I
    .locals 2

    .prologue
    .line 466
    const-string/jumbo v0, "multi_press_timeout"

    .line 467
    const/16 v1, 0x12c

    .line 466
    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 448
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 416
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 401
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 423
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 773
    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .prologue
    .line 625
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 490
    const/16 v0, 0x64

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 568
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 637
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 738
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getDeviceGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 763
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledScrollFactor()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollFactor:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
