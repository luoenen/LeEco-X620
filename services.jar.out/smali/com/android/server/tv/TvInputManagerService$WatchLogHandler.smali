.class final Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
.super Landroid/os/Handler;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WatchLogHandler"
.end annotation


# static fields
.field static final MSG_LOG_WATCH_END:I = 0x2

.field static final MSG_LOG_WATCH_START:I = 0x1

.field static final MSG_SWITCH_CONTENT_RESOLVER:I = 0x3


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2643
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2644
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 2642
    return-void
.end method

.method private encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p1, "tuneParams"    # Landroid/os/Bundle;

    .prologue
    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2702
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2703
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2704
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2705
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2706
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2707
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 2710
    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2711
    const-string/jumbo v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2712
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2713
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2714
    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2717
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2721
    const/16 v1, 0x25

    .line 2722
    .local v1, "ESCAPE_CHARACTER":C
    const-string/jumbo v0, "%=,"

    .line 2723
    .local v0, "ENCODING_TARGET_CHARACTERS":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2724
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-char v3, v5, v4

    .line 2725
    .local v3, "ch":C
    const-string/jumbo v7, "%=,"

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_0

    .line 2726
    const/16 v7, 0x25

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2728
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2724
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2730
    .end local v3    # "ch":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2649
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2694
    const-string/jumbo v7, "TvInputManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unhandled message code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    :goto_0
    return-void

    .line 2651
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2652
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2653
    .local v1, "packageName":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 2654
    .local v10, "watchStartTime":J
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2655
    .local v2, "channelId":J
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 2656
    .local v5, "tuneParams":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    .line 2658
    .local v4, "sessionToken":Landroid/os/IBinder;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2659
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "package_name"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    const-string/jumbo v7, "watch_start_time_utc_millis"

    .line 2661
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 2660
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2662
    const-string/jumbo v7, "channel_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2663
    if-eqz v5, :cond_0

    .line 2664
    const-string/jumbo v7, "tune_params"

    .line 2665
    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    .line 2664
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    :cond_0
    const-string/jumbo v7, "session_token"

    .line 2668
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2667
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v12, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2671
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 2675
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "channelId":J
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v5    # "tuneParams":Landroid/os/Bundle;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v10    # "watchStartTime":J
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2676
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    .line 2677
    .restart local v4    # "sessionToken":Landroid/os/IBinder;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2679
    .local v8, "watchEndTime":J
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2680
    .restart local v6    # "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "watch_end_time_utc_millis"

    .line 2681
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 2680
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2682
    const-string/jumbo v7, "session_token"

    .line 2683
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2682
    invoke-virtual {v6, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v12, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2686
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 2690
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v8    # "watchEndTime":J
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/ContentResolver;

    iput-object v7, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    goto/16 :goto_0

    .line 2649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
