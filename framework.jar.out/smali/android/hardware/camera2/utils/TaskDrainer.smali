.class public Landroid/hardware/camera2/utils/TaskDrainer;
.super Ljava/lang/Object;
.source "TaskDrainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskDrainer"


# instance fields
.field private final DEBUG:Z

.field private mDrainFinished:Z

.field private mDraining:Z

.field private final mEarlyFinishedTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private final mTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/utils/TaskDrainer;)Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    .prologue
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->DEBUG:Z

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    .line 72
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    .line 82
    const-string/jumbo v0, "handler must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mHandler:Landroid/os/Handler;

    .line 83
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->DEBUG:Z

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    .line 72
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    .line 97
    const-string/jumbo v0, "handler must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mHandler:Landroid/os/Handler;

    .line 98
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    .line 99
    iput-object p3, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private checkIfDrainFinished()V
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    .line 198
    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->postDrained()V

    goto :goto_0
.end method

.method private postDrained()V
    .locals 2

    .prologue
    .line 203
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/utils/TaskDrainer$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/utils/TaskDrainer$1;-><init>(Landroid/hardware/camera2/utils/TaskDrainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method


# virtual methods
.method public beginDrain()V
    .locals 2

    .prologue
    .line 177
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    .line 186
    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->checkIfDrainFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 176
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public taskFinished(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .local p1, "task":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was already finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 166
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->checkIfDrainFinished()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 151
    return-void
.end method

.method public taskStarted(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .local p1, "task":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t start more tasks after draining has begun"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was already started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 117
    return-void
.end method
