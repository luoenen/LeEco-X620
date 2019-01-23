.class Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    .line 289
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 288
    return-void
.end method

.method private getValue()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 312
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->-get2(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->-get0(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v2

    .line 313
    const-string/jumbo v3, "wifi_networks_available_notification_on"

    .line 312
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->getValue()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNotificationController;->-set2(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 307
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->-wrap1(Lcom/android/server/wifi/WifiNotificationController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 302
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->-get0(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    .line 294
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 295
    const/4 v2, 0x1

    .line 294
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    monitor-enter v2

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->getValue()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNotificationController;->-set2(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 292
    return-void

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
