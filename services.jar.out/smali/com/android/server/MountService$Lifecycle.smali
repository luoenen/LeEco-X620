.class public Lcom/android/server/MountService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mMountService:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 161
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 174
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-wrap15(Lcom/android/server/MountService;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-wrap5(Lcom/android/server/MountService;)V

    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0, p1}, Lcom/android/server/MountService;->-wrap9(Lcom/android/server/MountService;I)V

    .line 192
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/android/server/MountService;

    invoke-virtual {p0}, Lcom/android/server/MountService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    .line 168
    const-string/jumbo v0, "mount"

    iget-object v1, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/MountService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-wrap14(Lcom/android/server/MountService;)V

    .line 166
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0, p1}, Lcom/android/server/MountService;->-set1(Lcom/android/server/MountService;I)I

    .line 182
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0, p1}, Lcom/android/server/MountService;->-wrap10(Lcom/android/server/MountService;I)V

    .line 187
    return-void
.end method
