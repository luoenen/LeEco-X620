.class final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DockObserver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 255
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {v5}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: can\'t dump dock observer service from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 258
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 257
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 259
    const-string/jumbo v6, ", uid="

    .line 257
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 259
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 257
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    return-void

    .line 263
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 265
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v5}, Lcom/android/server/DockObserver;->-get1(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    if-eqz p3, :cond_1

    :try_start_1
    array-length v5, p3

    if-nez v5, :cond_3

    .line 267
    :cond_1
    const-string/jumbo v5, "Current Dock Observer Service state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v5}, Lcom/android/server/DockObserver;->-get4(Lcom/android/server/DockObserver;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    const-string/jumbo v5, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  reported state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->-get3(Lcom/android/server/DockObserver;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  previous state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->-get2(Lcom/android/server/DockObserver;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  actual state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->-get0(Lcom/android/server/DockObserver;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    return-void

    .line 266
    :cond_3
    :try_start_3
    const-string/jumbo v5, "-a"

    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 274
    array-length v5, p3

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5

    const-string/jumbo v5, "set"

    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 275
    const/4 v5, 0x1

    aget-object v1, p3, v5

    .line 276
    .local v1, "key":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v4, p3, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    .local v4, "value":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v5, "state"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 279
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/server/DockObserver;->-set0(Lcom/android/server/DockObserver;Z)Z

    .line 280
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/DockObserver;->-wrap2(Lcom/android/server/DockObserver;I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad value: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 265
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 296
    :catchall_1
    move-exception v5

    .line 297
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    throw v5

    .line 282
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_4
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown set option: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 287
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    :try_start_8
    array-length v5, p3

    if-ne v5, v8, :cond_6

    const-string/jumbo v5, "reset"

    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 288
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/server/DockObserver;->-set0(Lcom/android/server/DockObserver;Z)Z

    .line 289
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    iget-object v7, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v7}, Lcom/android/server/DockObserver;->-get0(Lcom/android/server/DockObserver;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/DockObserver;->-wrap2(Lcom/android/server/DockObserver;I)V

    goto/16 :goto_0

    .line 291
    :cond_6
    const-string/jumbo v5, "Dump current dock state, or:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v5, "  set state <value>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v5, "  reset"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method
