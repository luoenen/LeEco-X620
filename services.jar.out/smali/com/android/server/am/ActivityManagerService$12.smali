.class Lcom/android/server/am/ActivityManagerService$12;
.super Lcom/android/server/am/ActivityManagerService$ForegroundToken;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->setProcessForeground(Landroid/os/IBinder;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "this$0_1"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 7711
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ForegroundToken;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 7714
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->foregroundTokenDied(Lcom/android/server/am/ActivityManagerService$ForegroundToken;)V

    .line 7713
    return-void
.end method
