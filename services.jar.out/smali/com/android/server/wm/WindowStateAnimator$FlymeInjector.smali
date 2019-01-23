.class final Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowStateAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isInFlymeMovedMode(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 1
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static moveShownFrameIfNeed(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2190
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateExt;->moveShownFrame()V

    .line 2188
    :cond_0
    return-void
.end method

.method static setSystemDecorRect(Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateExt;->isInMovedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2217
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->flymeGetFieldSystemDecorRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2214
    :cond_0
    return-void
.end method

.method static setSystemDecorRectTop(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 3
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2200
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    iget v1, v1, Lcom/android/server/wm/WindowStateExt;->mBackupFlags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-gtz v1, :cond_1

    .line 2201
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2202
    .local v0, "status_bar_height":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->flymeGetFieldSystemDecorRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2199
    .end local v0    # "status_bar_height":I
    :cond_1
    return-void
.end method

.method static updateSurfaceWindowCrop(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 4
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    const/4 v3, 0x0

    .line 2207
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7fb

    if-ne v0, v1, :cond_0

    .line 2210
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->flymeGetFieldSystemDecorRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2206
    :cond_0
    return-void
.end method
