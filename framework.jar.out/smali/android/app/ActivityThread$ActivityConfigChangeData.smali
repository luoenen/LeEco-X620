.class final Landroid/app/ActivityThread$ActivityConfigChangeData;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityConfigChangeData"
.end annotation


# instance fields
.field final activityToken:Landroid/os/IBinder;

.field final overrideConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p1, p0, Landroid/app/ActivityThread$ActivityConfigChangeData;->activityToken:Landroid/os/IBinder;

    .line 660
    iput-object p2, p0, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    .line 658
    return-void
.end method
