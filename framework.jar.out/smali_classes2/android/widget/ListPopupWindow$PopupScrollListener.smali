.class Landroid/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 1293
    iput-object p1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1295
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue

    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    iget-boolean v0, v0, Landroid/widget/ListPopupWindow;->mMzKeepInputMethodNeeded:Z

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1303
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-get2(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    goto :goto_0
.end method
