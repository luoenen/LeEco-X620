.class Lcom/android/internal/telephony/ServiceStateTracker$2;
.super Landroid/database/ContentObserver;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 397
    const-string/jumbo v0, "SST"

    const-string/jumbo v1, "Auto time zone state changed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-wrap0(Lcom/android/internal/telephony/ServiceStateTracker;)V

    .line 396
    return-void
.end method
