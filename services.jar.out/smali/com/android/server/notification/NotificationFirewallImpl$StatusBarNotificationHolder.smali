.class final Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;
.super Landroid/service/notification/IStatusBarNotificationHolder$Stub;
.source "NotificationFirewallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationFirewallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StatusBarNotificationHolder"
.end annotation


# instance fields
.field private mValue:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "value"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    .line 52
    return-void
.end method


# virtual methods
.method public get()Landroid/service/notification/StatusBarNotification;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    .line 59
    .local v0, "value":Landroid/service/notification/StatusBarNotification;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    .line 60
    return-object v0
.end method
