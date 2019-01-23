.class public Lcom/android/server/wm/MoveWindowService;
.super Lmeizu/view/IMoveWindow$Stub;
.source "MoveWindowService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MoveWindowService$SimpleAnimatorListener;
    }
.end annotation


# static fields
.field public static DEBUG_MOVEWIN:Z = false

.field private static final MOVE_DOWN:I = 0x1

.field private static final MOVE_RESET:I


# instance fields
.field public mContext:Landroid/content/Context;

.field mDisplay:Landroid/view/Display;

.field mH:Landroid/os/Handler;

.field mLock:Ljava/lang/Object;

.field mMWCb:Lmeizu/view/IMoveWinCallback;

.field public mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private movedFocusWin:Lcom/android/server/wm/WindowState;

.field private movedWinList:Lcom/android/server/wm/WindowList;

.field windowDownAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/MoveWindowService;II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MoveWindowService;->moveTopAppShowFrame(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/MoveWindowService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/MoveWindowService;->moveTopAppWinFrame()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/MoveWindowService;I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/MoveWindowService;->moveWinDown(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wm/MoveWindowService;I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/MoveWindowService;->moveWinNormal(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wm/MoveWindowService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/MoveWindowService;->resetMoveWinMode()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/MoveWindowService;->DEBUG_MOVEWIN:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "handle"    # Landroid/os/Handler;

    .prologue
    .line 68
    invoke-direct {p0}, Lmeizu/view/IMoveWindow$Stub;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    .line 61
    new-instance v0, Lcom/android/server/wm/WindowList;

    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/MoveWindowService;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/android/server/wm/MoveWindowService;->mH:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private getMzIInputMethodManager()Lcom/android/internal/view/MzIInputMethodManager;
    .locals 2

    .prologue
    .line 297
    const-string/jumbo v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 298
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/MzIInputMethodManagerProxy;->asInterfaceMz(Landroid/os/IBinder;)Lcom/android/internal/view/MzIInputMethodManager;

    move-result-object v1

    return-object v1
.end method

.method private initMoveWinMode()V
    .locals 9

    .prologue
    .line 245
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    const-string/jumbo v4, "Move_Win"

    const-string/jumbo v5, "Transition is running, should not move window"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 251
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_1

    .line 252
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mDisplay:Landroid/view/Display;

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/MoveWindowService;->initWinListToMovedLocked()V

    .line 255
    iget-object v6, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_2

    .line 257
    const-string/jumbo v4, "Move_Win"

    const-string/jumbo v7, "no focus win, should not init"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    .line 259
    return-void

    :cond_2
    :try_start_3
    monitor-exit v6

    .line 262
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 263
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v6, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_3

    .line 265
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 267
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v7, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowState;->setBackupFlag(I)V

    .line 268
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x100000

    or-int/2addr v7, v8

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 269
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    :try_start_5
    monitor-exit v6

    .line 272
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_4

    .line 275
    :try_start_6
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/wm/MoveWindowService;->getMzIInputMethodManager()Lcom/android/internal/view/MzIInputMethodManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/view/MzIInputMethodManager;->mzIsShown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget-object v6, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v6, v6, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4, v6, v7, v8}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 281
    :cond_4
    :goto_0
    :try_start_7
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 282
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 283
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 284
    .local v3, "ws":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_5

    .line 285
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowStateExt;->setIsInMovedMode(Z)V

    .line 286
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowStateExt;->setIsMovingFinished(Z)V

    .line 287
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowStateExt;->setMovedX(I)V

    .line 288
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowStateExt;->setMovedY(I)V

    .line 282
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 255
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "i":I
    .end local v3    # "ws":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 250
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 263
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_2
    move-exception v4

    :try_start_8
    monitor-exit v6

    throw v4

    .line 291
    .restart local v2    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesForMoveWinLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v2    # "i":I
    :cond_7
    monitor-exit v5

    .line 242
    return-void

    .line 277
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private moveTopAppShowFrame(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 324
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 325
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x4000000

    or-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 328
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 329
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 330
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowStateExt;->setIsMovingFinished(Z)V

    .line 332
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowStateExt;->setMovedX(I)V

    .line 333
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowStateExt;->setMovedY(I)V

    .line 328
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 336
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "i":I
    :cond_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    .line 321
    return-void

    .line 325
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private moveTopAppWinFrame()V
    .locals 7

    .prologue
    .line 304
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 305
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 306
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v5, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 307
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 309
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 310
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 312
    .local v2, "ws":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowStateExt;->setIsMovingFinished(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 301
    return-void

    .line 306
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 304
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private moveWinDown(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/MoveWindowService;->initMoveWinMode()V

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/MoveWindowService$2;

    invoke-direct {v1, p0, p0}, Lcom/android/server/wm/MoveWindowService$2;-><init>(Lcom/android/server/wm/MoveWindowService;Lcom/android/server/wm/MoveWindowService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/MoveWindowService$3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MoveWindowService$3;-><init>(Lcom/android/server/wm/MoveWindowService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 99
    return-void
.end method

.method private moveWinNormal(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 152
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/MoveWindowService$4;

    invoke-direct {v1, p0, p0}, Lcom/android/server/wm/MoveWindowService$4;-><init>(Lcom/android/server/wm/MoveWindowService;Lcom/android/server/wm/MoveWindowService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/MoveWindowService$5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MoveWindowService$5;-><init>(Lcom/android/server/wm/MoveWindowService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 147
    return-void
.end method

.method private resetMoveWinMode()V
    .locals 7

    .prologue
    .line 346
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 348
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 349
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    .line 343
    return-void

    .line 350
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 351
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 352
    .local v2, "ws":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateExt;->resetMoveWin()V

    .line 350
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 354
    .end local v2    # "ws":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 356
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateExt;->resetMoveWin()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :try_start_3
    monitor-exit v5

    .line 359
    iget v3, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 360
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 361
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesForMoveWinLocked()V

    .line 362
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/MoveWindowService;->notifyMoveWinClientLockedMoveWin(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 346
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 354
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v1    # "i":I
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v5

    throw v3

    .line 362
    :catchall_2
    move-exception v5

    monitor-exit v3

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method


# virtual methods
.method adjustBackupWindowFlag(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setBackupFlag(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 472
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method adjustInputWindow(Lcom/android/server/wm/WindowState;I)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "viewVisibility"    # I

    .prologue
    const/16 v2, 0x7db

    const/4 v1, 0x0

    .line 483
    if-nez p2, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v2, :cond_1

    .line 484
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/MoveWindowService;->notifyMoveWinClientLockedMoveWin(II)V

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v2, :cond_0

    .line 486
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MoveWindowService;->notifyMoveWinClientLockedMoveWin(II)V

    goto :goto_0
.end method

.method adjustOnOrientationChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 492
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 493
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 495
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 496
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateExt;->resetMoveWin()V

    .line 494
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 499
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    :cond_0
    iget v2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 500
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 501
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/MoveWindowService;->notifyMoveWinClientLockedMoveWin(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "i":I
    :cond_1
    monitor-exit v3

    .line 491
    return-void

    .line 492
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method adjustWallpaperMoveWindow(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateExt;->isInMovedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 432
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMovedWinPoint()Landroid/graphics/Point;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "x":I
    const/4 v2, 0x0

    .line 222
    .local v2, "y":I
    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 223
    .local v0, "p":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateExt;->getMovedX()I

    move-result v1

    .line 226
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateExt;->getMovedY()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :cond_0
    :try_start_2
    monitor-exit v5

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 230
    return-object v0

    .line 223
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    .end local v0    # "p":Landroid/graphics/Point;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public initWinListToMovedLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 394
    iget-object v5, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 395
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 396
    return-void

    :cond_0
    monitor-exit v5

    .line 400
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 401
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 404
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_4

    .line 405
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 415
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 416
    :try_start_1
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-eq v4, v6, :cond_1

    .line 417
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v4, v6, :cond_1

    .line 418
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d4

    if-eq v4, v6, :cond_1

    .line 419
    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    monitor-exit v5

    .line 404
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 394
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "j":I
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 420
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v1    # "j":I
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    .restart local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    :try_start_2
    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 416
    if-eqz v4, :cond_1

    .line 421
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_1

    .line 423
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 424
    iput-object v2, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    .line 426
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 415
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 390
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    return-void
.end method

.method public moveTopAppWindow(III)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    packed-switch p1, :pswitch_data_0

    .line 193
    :pswitch_0
    return-void

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public moveWindow(II)Z
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "durationTime"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/MoveWindowService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/MoveWindowService$1;-><init>(Lcom/android/server/wm/MoveWindowService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public notifyMoveWinClientLockedMoveWin(II)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "data"    # I

    .prologue
    const/4 v1, 0x0

    .line 370
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 371
    iput-object v1, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->clear()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->mMWCb:Lmeizu/view/IMoveWinCallback;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/MoveWindowService$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/MoveWindowService$6;-><init>(Lcom/android/server/wm/MoveWindowService;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 369
    :cond_1
    return-void
.end method

.method public processInputEvent(Landroid/view/InputEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v10, 0x0

    .line 530
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_5

    .line 531
    iget-object v8, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 532
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 533
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    .line 534
    .local v4, "motionEvent":Landroid/view/MotionEvent;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 535
    .local v5, "point":Landroid/graphics/Point;
    iget-object v7, p0, Lcom/android/server/wm/MoveWindowService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 536
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 537
    .local v6, "width":I
    iget v3, v5, Landroid/graphics/Point;->y:I

    .line 538
    .local v3, "height":I
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 539
    .local v1, "deviceHeight":I
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 556
    .local v2, "deviceWidth":I
    if-eqz v5, :cond_4

    .line 557
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget-object v9, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateExt;->getMovedX()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    cmpl-float v7, v7, v10

    if-lez v7, :cond_1

    .line 561
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateExt;->isMovingFinished()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_6

    monitor-exit v8

    .line 562
    return-void

    .line 558
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget-object v9, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateExt;->getMovedY()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_2

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    cmpl-float v7, v7, v10

    if-gtz v7, :cond_0

    .line 559
    :cond_2
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget-object v9, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateExt;->getMovedX()I

    move-result v9

    add-int/2addr v9, v2

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    int-to-float v9, v2

    cmpg-float v7, v7, v9

    if-ltz v7, :cond_0

    .line 560
    :cond_3
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget-object v9, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateExt;->getMovedY()I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    int-to-float v9, v1

    cmpg-float v7, v7, v9

    if-ltz v7, :cond_0

    .end local v1    # "deviceHeight":I
    .end local v2    # "deviceWidth":I
    .end local v3    # "height":I
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "point":Landroid/graphics/Point;
    .end local v6    # "width":I
    :cond_4
    :goto_0
    monitor-exit v8

    .line 529
    :cond_5
    return-void

    .line 564
    .restart local v1    # "deviceHeight":I
    .restart local v2    # "deviceWidth":I
    .restart local v3    # "height":I
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "point":Landroid/graphics/Point;
    .restart local v6    # "width":I
    :cond_6
    :try_start_2
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_4

    .line 565
    const/4 v7, 0x0

    const/16 v9, 0x15e

    invoke-virtual {p0, v7, v9}, Lcom/android/server/wm/MoveWindowService;->moveWindow(II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 531
    .end local v1    # "deviceHeight":I
    .end local v2    # "deviceWidth":I
    .end local v3    # "height":I
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "point":Landroid/graphics/Point;
    .end local v6    # "width":I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method resetOnWindowChanged(ILcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "viewVisibility"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 446
    iget-object v4, p0, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 447
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, "type":I
    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_0

    .line 450
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 451
    :cond_0
    const/4 v3, 0x3

    if-le v1, v3, :cond_5

    const/16 v3, 0x63

    if-ge v1, v3, :cond_5

    .line 454
    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/MoveWindowService;->notifyMoveWinClientLockedMoveWin(II)V

    .line 457
    .end local v1    # "type":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    if-eq p1, v3, :cond_3

    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 458
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    :goto_1
    monitor-exit v4

    .line 442
    return-void

    .line 452
    .restart local v1    # "type":I
    :cond_5
    const/16 v3, 0x3e8

    if-le v1, v3, :cond_6

    const/16 v3, 0x7cf

    if-lt v1, v3, :cond_1

    .line 453
    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 459
    .end local v1    # "type":I
    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_8

    .line 460
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedWinList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 461
    .local v2, "ws":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateExt;->resetMoveWin()V

    .line 459
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 463
    .end local v2    # "ws":Lcom/android/server/wm/WindowState;
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 464
    iget-object v3, p0, Lcom/android/server/wm/MoveWindowService;->movedFocusWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateExt;->resetMoveWin()V

    .line 466
    :cond_9
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/MoveWindowService;->notifyMoveWinClientLockedMoveWin(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 446
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setMoveWinListener(Lmeizu/view/IMoveWinCallback;)V
    .locals 0
    .param p1, "callback"    # Lmeizu/view/IMoveWinCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/wm/MoveWindowService;->mMWCb:Lmeizu/view/IMoveWinCallback;

    .line 236
    return-void
.end method
