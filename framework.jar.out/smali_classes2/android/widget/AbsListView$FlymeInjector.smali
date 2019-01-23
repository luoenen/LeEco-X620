.class final Landroid/widget/AbsListView$FlymeInjector;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$FlymeInjector$FlymeBackPressedListener;,
        Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;,
        Landroid/widget/AbsListView$FlymeInjector$FlymeMultiChoiceRunnable;,
        Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canHoldable(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 7864
    const/4 v2, 0x1

    .line 7865
    .local v2, "flag":Z
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, p0

    .line 7866
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7867
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    move-object v4, p0

    .line 7868
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7869
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/widget/AbsListView$FlymeInjector;->canHoldable(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7870
    const/4 v4, 0x0

    return v4

    .line 7867
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7873
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_1
    instance-of v4, p0, Landroid/widget/CompoundButton;

    if-nez v4, :cond_2

    instance-of v4, p0, Landroid/widget/CheckedTextView;

    if-eqz v4, :cond_3

    .line 7874
    :cond_2
    const/4 v2, 0x0

    .line 7876
    :cond_3
    return v2
.end method

.method private static cancelBackgroundAnimation(Landroid/view/View;)V
    .locals 1
    .param p0, "itemView"    # Landroid/view/View;

    .prologue
    .line 7988
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7989
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 7990
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 7987
    :cond_0
    return-void
.end method

.method static flymeContentFits(Landroid/widget/AbsListView;)Z
    .locals 5
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v1, 0x0

    .line 7900
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7901
    .local v0, "childCount":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 7902
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 7901
    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static getFlymeChoiceMode(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 7881
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    if-eqz v0, :cond_0

    .line 7882
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    return v0

    .line 7885
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method static getHoldBackground(Landroid/widget/AbsListView;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const v10, 0x1010367

    const/16 v9, 0x190

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 8041
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 8042
    if-eqz p1, :cond_1

    instance-of v3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 8043
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 8044
    .local v2, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v3, 0x10100a7

    const v4, 0x101009e

    const v5, 0x101009c

    const v6, 0x101009d

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 8045
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 8046
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 8047
    .local v1, "pressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 8048
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 8049
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v4, v8, [I

    aput v10, v4, v7

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 8050
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v4, v7, [I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 8051
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 8040
    .end local v0    # "index":I
    .end local v1    # "pressDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    :goto_0
    return-void

    .line 8054
    :cond_1
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    .line 8055
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 8056
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v4, v8, [I

    aput v10, v4, v7

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, 0xa000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 8057
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v4, v7, [I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 8058
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    goto :goto_0
.end method

.method static initFlymeExtraFields(Landroid/widget/AbsListView;)V
    .locals 5
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7810
    iput v2, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    .line 7811
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    .line 7812
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    .line 7813
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    .line 7814
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlymeEnableLoadAllItems:Z

    .line 7815
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlymeEnablePressStateOnCheck:Z

    .line 7816
    iput-object v4, p0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    .line 7817
    iput-object v4, p0, Landroid/widget/AbsListView;->mFlymeMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    .line 7818
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7819
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/flyme/internal/R$dimen;->mz_list_check_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mDefaultCheckWidth:I

    .line 7820
    sget v1, Lcom/flyme/internal/R$dimen;->mz_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    .line 7821
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mCenterContent:Z

    .line 7822
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlymeEnableOverScroll:Z

    .line 7809
    return-void
.end method

.method private static mzCheckInRegion(Landroid/widget/AbsListView;II)V
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 8124
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    .line 8123
    :goto_0
    return-void

    .line 8127
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    goto :goto_0
.end method

.method private static mzIsItemCheckable(Landroid/widget/AbsListView;I)Z
    .locals 4
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 8010
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8011
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 8012
    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8013
    .local v0, "checkbox":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 8014
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 8015
    const/4 v2, 0x1

    return v2

    .line 8018
    .end local v0    # "checkbox":Landroid/view/View;
    :cond_0
    return v3
.end method

.method static mzOnLayout(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 7907
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 7908
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 7909
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 7910
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 7905
    :cond_0
    return-void
.end method

.method static mzOnLayout2(Landroid/widget/AbsListView;)V
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 7917
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 7918
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlymeMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 7919
    new-instance v0, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlymeInjector$FlymeDelayRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlymeMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    .line 7920
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlymeMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7925
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeFirstInit:Z

    if-nez v0, :cond_2

    .line 7926
    invoke-virtual {p0}, Landroid/widget/AbsListView;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isThemeLight()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFlymeThemeLight:Z

    .line 7927
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFlymeThemeLight:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeEnableOverScroll:Z

    if-eqz v0, :cond_1

    .line 7928
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    iput v0, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 7930
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeFirstInit:Z

    .line 7915
    :cond_2
    return-void
.end method

.method static mzOnOverScrolled(Landroid/widget/AbsListView;)V
    .locals 3
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v2, 0x0

    .line 8168
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    .line 8172
    invoke-virtual {p0}, Landroid/widget/AbsListView;->flymeGetFieldScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    .line 8174
    const-string/jumbo v1, "persist.sys.ui.hw"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 8175
    .local v0, "flag":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 8166
    .end local v0    # "flag":Z
    :cond_0
    :goto_0
    return-void

    .line 8176
    .restart local v0    # "flag":Z
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method static mzOnSizeChanged(Landroid/widget/AbsListView;IIII)V
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 8022
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    .line 8023
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeFirstInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFlymeThemeLight:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeEnableOverScroll:Z

    if-eqz v0, :cond_0

    .line 8024
    int-to-float v0, p2

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    iput v0, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 8021
    :cond_0
    return-void
.end method

.method static mzOnTouchDown(Landroid/widget/AbsListView;)V
    .locals 4
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v3, 0x0

    .line 8132
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_0

    .line 8133
    return-void

    .line 8135
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 8136
    .local v0, "motionPosition":I
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 8137
    if-gez v0, :cond_1

    .line 8138
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 8142
    :cond_1
    if-gez v0, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 8143
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlymeCheckForLittleTap:Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;

    if-nez v1, :cond_2

    .line 8144
    new-instance v1, Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlymeCheckForLittleTap:Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;

    .line 8146
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlymeCheckForLittleTap:Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8131
    :cond_3
    return-void
.end method

.method static mzOnTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .locals 4
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 8105
    invoke-virtual {p0}, Landroid/widget/AbsListView;->flymeGetFieldScrollY()I

    move-result v1

    if-eqz v1, :cond_4

    .line 8106
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    .line 8110
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8111
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 8112
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    .line 8113
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlymeShowPressed:Z

    .line 8115
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 8116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p0, v1, v2}, Landroid/widget/AbsListView$FlymeInjector;->mzCheckInRegion(Landroid/widget/AbsListView;II)V

    .line 8118
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 8119
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    .line 8104
    :cond_3
    return-void

    .line 8108
    .end local v0    # "action":I
    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->mzEnsureCheckRegion(Z)V

    goto :goto_0
.end method

.method static mzOnWindowFocusChanged(Landroid/widget/AbsListView;Z)V
    .locals 5
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 8063
    if-eqz p1, :cond_3

    .line 8065
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableHoldPress:Z

    if-eqz v0, :cond_2

    .line 8067
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    if-eqz v0, :cond_2

    .line 8068
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-object v0, v0, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8069
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeShowPressed:Z

    if-eqz v0, :cond_0

    .line 8070
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-object v0, v0, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    .line 8071
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlymeShowPressed:Z

    .line 8073
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-object v0, v0, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setHovered(Z)V

    .line 8074
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iput-object v2, v0, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    .line 8076
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/widget/AbsListView$HoldView;->id:J

    .line 8077
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iput v4, v0, Landroid/widget/AbsListView$HoldView;->position:I

    .line 8062
    :cond_2
    :goto_0
    return-void

    .line 8083
    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 8084
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_0
.end method

.method static mzPerformLongPress(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z
    .locals 3
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v2, 0x1

    .line 8090
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 8092
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->mzIsHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 8093
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->mzIsItemSelectable(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 8095
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static mzPositionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)Z
    .locals 3
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 7996
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeEnablePressStateOnCheck:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeInCheckRegion:Z

    if-eqz v0, :cond_0

    .line 7997
    instance-of v0, p0, Landroid/widget/ListView;

    .line 7996
    if-eqz v0, :cond_0

    .line 7997
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->mzIsHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8006
    :cond_0
    return v2

    .line 7998
    :cond_1
    invoke-static {p0, p1}, Landroid/widget/AbsListView$FlymeInjector;->mzIsItemCheckable(Landroid/widget/AbsListView;I)Z

    move-result v0

    .line 7996
    if-eqz v0, :cond_0

    .line 7998
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 7999
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 8000
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 8001
    if-eqz p2, :cond_2

    .line 8002
    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    .line 8004
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static mzTrackMotionScroll(Landroid/widget/AbsListView;II)V
    .locals 10
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 8183
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    if-eqz v8, :cond_5

    if-eqz p2, :cond_5

    .line 8184
    if-gez p2, :cond_2

    const/4 v7, 0x1

    .line 8185
    .local v7, "up":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 8186
    .local v5, "size":I
    const/4 v1, 0x0

    .line 8187
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 8188
    .local v6, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 8189
    .local v0, "bottom":I
    const/4 v2, 0x0

    .line 8190
    .local v2, "findNewFocus":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 8191
    .local v3, "focusedChild":Landroid/view/View;
    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 8192
    const/4 v2, 0x1

    .line 8198
    :cond_0
    :goto_1
    if-eqz v2, :cond_5

    .line 8199
    if-eqz v7, :cond_6

    .line 8200
    const/4 v4, 0x0

    .end local v1    # "child":Landroid/view/View;
    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 8201
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8202
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, v6, v0}, Landroid/widget/AbsListView;->mzIsChildOutOfBounds(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 8200
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 8184
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "findNewFocus":Z
    .end local v3    # "focusedChild":Landroid/view/View;
    .end local v4    # "i":I
    .end local v5    # "size":I
    .end local v6    # "top":I
    .end local v7    # "up":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "up":Z
    goto :goto_0

    .line 8193
    .restart local v0    # "bottom":I
    .local v1, "child":Landroid/view/View;
    .restart local v2    # "findNewFocus":Z
    .restart local v3    # "focusedChild":Landroid/view/View;
    .restart local v5    # "size":I
    .restart local v6    # "top":I
    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3, v6, v0}, Landroid/widget/AbsListView;->mzIsChildOutOfBounds(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8194
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 8195
    const/4 v2, 0x1

    goto :goto_1

    .line 8203
    .local v1, "child":Landroid/view/View;
    .restart local v4    # "i":I
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    .line 8202
    if-eqz v8, :cond_1

    .line 8203
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-nez v8, :cond_1

    .line 8204
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 8181
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "findNewFocus":Z
    .end local v3    # "focusedChild":Landroid/view/View;
    .end local v4    # "i":I
    .end local v5    # "size":I
    .end local v6    # "top":I
    .end local v7    # "up":Z
    :cond_5
    :goto_3
    return-void

    .line 8209
    .restart local v0    # "bottom":I
    .local v1, "child":Landroid/view/View;
    .restart local v2    # "findNewFocus":Z
    .restart local v3    # "focusedChild":Landroid/view/View;
    .restart local v5    # "size":I
    .restart local v6    # "top":I
    .restart local v7    # "up":Z
    :cond_6
    add-int/lit8 v4, v5, -0x1

    .end local v1    # "child":Landroid/view/View;
    .restart local v4    # "i":I
    :goto_4
    if-ltz v4, :cond_5

    .line 8210
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8211
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1, v6, v0}, Landroid/widget/AbsListView;->mzIsChildOutOfBounds(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 8209
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 8212
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    .line 8211
    if-eqz v8, :cond_7

    .line 8212
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-nez v8, :cond_7

    .line 8213
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_3
.end method

.method static performItemHold(Landroid/widget/AbsListView;Landroid/view/View;IJZ)V
    .locals 7
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "dispatchItemClick"    # Z

    .prologue
    const/4 v1, 0x0

    .line 7833
    if-eqz p5, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableHoldPress:Z

    if-eqz v0, :cond_3

    .line 7834
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/widget/AbsListView$FlymeInjector;->canHoldable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7837
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_4

    .line 7841
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeShowPressed:Z

    if-nez v0, :cond_2

    .line 7842
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setHovered(Z)V

    .line 7845
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    if-nez v0, :cond_5

    .line 7846
    new-instance v0, Landroid/widget/AbsListView$HoldView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView$HoldView;-><init>(Landroid/widget/AbsListView;Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    .line 7832
    :cond_3
    :goto_1
    return-void

    .line 7838
    :cond_4
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFlymeShowPressed:Z

    goto :goto_0

    .line 7848
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iput-object p1, v0, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    .line 7849
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iput p2, v0, Landroid/widget/AbsListView$HoldView;->position:I

    .line 7850
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iput-wide p3, v0, Landroid/widget/AbsListView$HoldView;->id:J

    goto :goto_1
.end method

.method static setFlymeChoiceMode(Landroid/widget/AbsListView;I)I
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "choiceMode"    # I

    .prologue
    .line 7889
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 7890
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 7891
    :cond_0
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    .line 7892
    const/4 p1, 0x3

    .line 7896
    :goto_0
    return p1

    .line 7894
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    goto :goto_0
.end method

.method static setFlymeHoldViewBackground(Landroid/widget/AbsListView;ILandroid/view/View;)V
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "position"    # I
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 7971
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableHoldPress:Z

    if-eqz v0, :cond_0

    .line 7972
    invoke-static {p0, p2}, Landroid/widget/AbsListView$FlymeInjector;->setHoldViewBackground(Landroid/widget/AbsListView;Landroid/view/View;)V

    .line 7973
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget v0, v0, Landroid/widget/AbsListView$HoldView;->position:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-object v0, v0, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-object v0, v0, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7969
    :cond_0
    :goto_0
    return-void

    .line 7974
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-object v0, v0, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    .line 7975
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-object v0, v0, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/widget/AbsListView$FlymeInjector;->cancelBackgroundAnimation(Landroid/view/View;)V

    .line 7976
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setHovered(Z)V

    .line 7977
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iput-object p2, v0, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    goto :goto_0
.end method

.method static setFlymeHoldViewBackground(Landroid/widget/AbsListView;Landroid/view/View;)V
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "transientView"    # Landroid/view/View;

    .prologue
    .line 7952
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableHoldPress:Z

    if-eqz v0, :cond_0

    .line 7953
    invoke-static {p0, p1}, Landroid/widget/AbsListView$FlymeInjector;->setHoldViewBackground(Landroid/widget/AbsListView;Landroid/view/View;)V

    .line 7950
    :cond_0
    return-void
.end method

.method static setFlymeSelector(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 8030
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableHoldPress:Z

    if-eqz v0, :cond_0

    .line 8031
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Landroid/widget/AbsListView$FlymeInjector;->getHoldBackground(Landroid/widget/AbsListView;Landroid/graphics/drawable/Drawable;)V

    .line 8028
    :cond_0
    return-void
.end method

.method static setFlymeShowPressed(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 8100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeShowPressed:Z

    .line 8098
    return-void
.end method

.method private static setHoldViewBackground(Landroid/widget/AbsListView;Landroid/view/View;)V
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 7963
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7964
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 7965
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7962
    :cond_0
    return-void
.end method

.method static updateFlymeHoldView(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 8223
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableHoldPress:Z

    if-eqz v0, :cond_0

    .line 8224
    invoke-static {p0}, Landroid/widget/AbsListView$FlymeInjector;->updateHoldView(Landroid/widget/AbsListView;)V

    .line 8222
    :cond_0
    return-void
.end method

.method private static updateHoldView(Landroid/widget/AbsListView;)V
    .locals 14
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 8232
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget v10, v10, Landroid/widget/AbsListView$HoldView;->position:I

    if-eq v10, v12, :cond_1

    .line 8233
    iget-object v10, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-wide v2, v10, Landroid/widget/AbsListView$HoldView;->id:J

    .line 8234
    .local v2, "id":J
    iget-object v10, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget v1, v10, Landroid/widget/AbsListView$HoldView;->position:I

    .line 8235
    .local v1, "lastPos":I
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 8236
    .local v4, "lastPosId":J
    cmp-long v10, v2, v4

    if-eqz v10, :cond_1

    .line 8237
    iget-object v10, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-object v10, v10, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 8238
    iget-object v10, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-object v10, v10, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    invoke-virtual {v10, v13}, Landroid/view/View;->setHovered(Z)V

    .line 8239
    iget-object v10, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iget-object v10, v10, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    invoke-static {v10}, Landroid/widget/AbsListView$FlymeInjector;->cancelBackgroundAnimation(Landroid/view/View;)V

    .line 8241
    :cond_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iput-object v11, v10, Landroid/widget/AbsListView$HoldView;->view:Landroid/view/View;

    .line 8242
    iget-object v10, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iput v12, v10, Landroid/widget/AbsListView$HoldView;->position:I

    .line 8243
    add-int/lit8 v10, v1, -0x14

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 8244
    .local v9, "start":I
    add-int/lit8 v10, v1, 0x14

    iget v11, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8245
    .local v0, "end":I
    move v8, v9

    .local v8, "searchPos":I
    :goto_0
    if-ge v8, v0, :cond_1

    .line 8246
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 8247
    .local v6, "searchId":J
    cmp-long v10, v2, v6

    if-nez v10, :cond_2

    .line 8248
    iget-object v10, p0, Landroid/widget/AbsListView;->mHoldView:Landroid/widget/AbsListView$HoldView;

    iput v8, v10, Landroid/widget/AbsListView$HoldView;->position:I

    .line 8231
    .end local v0    # "end":I
    .end local v1    # "lastPos":I
    .end local v2    # "id":J
    .end local v4    # "lastPosId":J
    .end local v6    # "searchId":J
    .end local v8    # "searchPos":I
    .end local v9    # "start":I
    :cond_1
    return-void

    .line 8245
    .restart local v0    # "end":I
    .restart local v1    # "lastPos":I
    .restart local v2    # "id":J
    .restart local v4    # "lastPosId":J
    .restart local v6    # "searchId":J
    .restart local v8    # "searchPos":I
    .restart local v9    # "start":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
