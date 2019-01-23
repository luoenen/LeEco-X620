.class Landroid/widget/Editor$OptionWrapper;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionWrapper"
.end annotation


# instance fields
.field private final kSelectionModeOffset:I

.field private mClipRectF:Landroid/graphics/RectF;

.field private mDismissTime:J

.field private mPopup:Lcom/meizu/widget/OptionPopupWindow;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVisibleBeforeTouch:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 4
    .param p1, "this$0"    # Landroid/widget/Editor;

    .prologue
    .line 6806
    iput-object p1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6801
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    .line 6802
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    .line 6803
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    .line 6804
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor$OptionWrapper;->mVisibleBeforeTouch:Z

    .line 6807
    invoke-virtual {p1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 6808
    .local v0, "density":F
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$OptionWrapper;->kSelectionModeOffset:I

    .line 6806
    return-void
.end method

.method private update(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "target"    # Landroid/graphics/Rect;

    .prologue
    .line 6867
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 6870
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 6868
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    .line 6869
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_0

    .line 6872
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    .line 6873
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6874
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Landroid/widget/Editor$OptionWrapper;->kSelectionModeOffset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6875
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/OptionPopupWindow;->showOptions(Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public hide()Z
    .locals 1

    .prologue
    .line 6860
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6861
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow;->dismiss()V

    .line 6863
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVisibleBeforeTouch()Z
    .locals 1

    .prologue
    .line 6833
    iget-boolean v0, p0, Landroid/widget/Editor$OptionWrapper;->mVisibleBeforeTouch:Z

    return v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 6818
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    .line 6819
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeInvokeMethodGetPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6817
    return-void
.end method

.method public onEditorTouchDown()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 6823
    iget-wide v4, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 6824
    iput-boolean v2, p0, Landroid/widget/Editor$OptionWrapper;->mVisibleBeforeTouch:Z

    .line 6822
    :goto_0
    return-void

    .line 6826
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    sub-long v0, v4, v6

    .line 6827
    .local v0, "diff":J
    const-wide/16 v4, 0x20

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Landroid/widget/Editor$OptionWrapper;->mVisibleBeforeTouch:Z

    .line 6828
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    goto :goto_0
.end method

.method public show()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6846
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-nez v0, :cond_0

    .line 6847
    return v1

    .line 6850
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6851
    return v2

    .line 6854
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeInvokeMethodGetPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 6855
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor;->getActiveBound(Landroid/graphics/Rect;Z)V

    .line 6856
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/widget/Editor$OptionWrapper;->update(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "cb"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 6837
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-nez v0, :cond_0

    .line 6838
    new-instance v0, Lcom/meizu/widget/OptionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/widget/OptionPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    .line 6839
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/OptionPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 6842
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/meizu/widget/OptionPopupWindow;->startPopupActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public updatePosition(IIZZ)V
    .locals 3
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 6813
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor;->getActiveBound(Landroid/graphics/Rect;Z)V

    .line 6814
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/widget/Editor$OptionWrapper;->update(Landroid/graphics/Rect;)Z

    .line 6812
    return-void
.end method
