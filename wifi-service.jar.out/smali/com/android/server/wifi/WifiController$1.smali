.class Lcom/android/server/wifi/WifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiSettingsStore;Lcom/android/server/wifi/WifiLockManager;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x4

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const v3, 0x26005

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    .line 209
    const-string/jumbo v2, "networkInfo"

    .line 208
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    iput-object v2, v3, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0

    .line 210
    :cond_2
    const-string/jumbo v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 212
    const-string/jumbo v2, "wifi_state"

    .line 211
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 214
    .local v1, "state":I
    if-ne v1, v4, :cond_3

    .line 215
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "WifiControllerSoftAP start failed"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const v3, 0x2600d

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 217
    :cond_3
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const v3, 0x2600f

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 220
    .end local v1    # "state":I
    :cond_4
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const-string/jumbo v2, "wifi_state"

    .line 221
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 224
    .restart local v1    # "state":I
    if-ne v1, v3, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "WifiControllerWifi turn on failed"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const v3, 0x26010

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0
.end method
