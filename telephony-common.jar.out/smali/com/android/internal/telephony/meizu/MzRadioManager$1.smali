.class Lcom/android/internal/telephony/meizu/MzRadioManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MzRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/meizu/MzRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/meizu/MzRadioManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/meizu/MzRadioManager;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$1;->this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$1;->this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;

    invoke-static {v0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->-wrap0(Lcom/android/internal/telephony/meizu/MzRadioManager;Landroid/content/Intent;)V

    .line 306
    :cond_0
    return-void
.end method
