.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1198
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 1197
    return-void
.end method

.method private connectToService()Z
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1177
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1178
    .local v0, "service":Landroid/content/Intent;
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1179
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get3(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v2

    .line 1180
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1179
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1182
    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1183
    return v4

    .line 1185
    :cond_0
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1186
    return v5
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1190
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1191
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1192
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get3(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1194
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1189
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 53
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1210
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1209
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1212
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1213
    .local v35, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 1218
    .local v28, "idx":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v4, :cond_3

    .line 1219
    const-string/jumbo v4, "bindingMCS"

    .line 1220
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 1219
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1223
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1224
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v10, "Failed to bind to media container service"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1226
    const-string/jumbo v4, "bindingMCS"

    .line 1227
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 1226
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1228
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1229
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    .line 1230
    move-object/from16 v0, v35

    iget v10, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    .line 1229
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1232
    :cond_1
    return-void

    .line 1236
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1239
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1242
    if-nez v28, :cond_0

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1250
    .end local v28    # "idx":I
    .end local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 1251
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v10, v4}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1252
    const-string/jumbo v4, "bindingMCS"

    .line 1253
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 1252
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1255
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1256
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v4, :cond_7

    .line 1259
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v10, "Cannot bind to media container service"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, "params$iterator":Ljava/util/Iterator;
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1262
    .restart local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1263
    const-string/jumbo v4, "queueInstall"

    .line 1264
    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 1263
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1265
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1267
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    move-object/from16 v0, v35

    iget v10, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    .line 1266
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1269
    :cond_5
    return-void

    .line 1271
    .end local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1273
    .end local v37    # "params$iterator":Ljava/util/Iterator;
    :cond_7
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v10, "Waiting to connect to media container service"

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1275
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 1276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1277
    .restart local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v35, :cond_0

    .line 1278
    const-string/jumbo v4, "queueInstall"

    .line 1279
    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 1278
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1280
    const-string/jumbo v4, "startCopy"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1281
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 1288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1290
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    .line 1291
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_a

    .line 1294
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1295
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v46

    .line 1298
    .local v46, "ubmsg":Landroid/os/Message;
    const-wide/16 v12, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1309
    .end local v46    # "ubmsg":Landroid/os/Message;
    :cond_a
    :goto_1
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1306
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1313
    .end local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_c
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v10, "Empty queue"

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1319
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1320
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_d

    .line 1321
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    .line 1323
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1324
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v10, "Failed to bind to media container service"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37    # "params$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1327
    .restart local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1328
    const-string/jumbo v4, "queueInstall"

    .line 1329
    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 1328
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_2

    .line 1331
    .end local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1340
    .end local v37    # "params$iterator":Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_f

    .line 1341
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_0

    .line 1344
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    .line 1346
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1357
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1358
    .restart local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    const-string/jumbo v4, "queueInstall"

    .line 1359
    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 1358
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1365
    .end local v35    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_6
    const/16 v43, 0x0

    .line 1367
    .local v43, "size":I
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 1369
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_10

    monitor-exit v10

    .line 1370
    return-void

    .line 1372
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v43

    .line 1373
    if-gtz v43, :cond_11

    monitor-exit v10

    .line 1375
    return-void

    .line 1377
    :cond_11
    :try_start_2
    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1378
    .local v34, "packages":[Ljava/lang/String;
    move/from16 v0, v43

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 1379
    .local v22, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v47, v0

    .line 1380
    .local v47, "uids":[I
    const/16 v27, 0x0

    .line 1382
    .local v27, "i":I
    const/16 v30, 0x0

    .local v30, "n":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_14

    .line 1383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v33

    .line 1385
    .local v33, "packageUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 1387
    .local v29, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    move/from16 v0, v27

    move/from16 v1, v43

    if-ge v0, v1, :cond_13

    .line 1388
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    .line 1389
    .local v26, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v34, v27

    .line 1390
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v22, v27

    .line 1391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/pm/PackageSetting;

    .line 1392
    .local v38, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v38, :cond_12

    .line 1393
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, v33

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 1392
    :goto_5
    aput v4, v47, v27

    .line 1395
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 1394
    :cond_12
    const/4 v4, -0x1

    goto :goto_5

    .line 1382
    .end local v26    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v38    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_13
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 1398
    .end local v29    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v33    # "packageUserId":I
    :cond_14
    move/from16 v43, v27

    .line 1399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v10

    .line 1402
    const/16 v27, 0x0

    :goto_6
    move/from16 v0, v27

    move/from16 v1, v43

    if-ge v0, v1, :cond_15

    .line 1403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v10, v34, v27

    aget-object v12, v22, v27

    aget v13, v47, v27

    const/4 v14, 0x1

    invoke-static {v4, v10, v14, v12, v13}, Lcom/android/server/pm/PackageManagerService;->-wrap40(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1402
    add-int/lit8 v27, v27, 0x1

    goto :goto_6

    .line 1368
    .end local v22    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27    # "i":I
    .end local v30    # "n":I
    .end local v34    # "packages":[Ljava/lang/String;
    .end local v47    # "uids":[I
    :catchall_0
    move-exception v4

    monitor-exit v10

    throw v4

    .line 1405
    .restart local v22    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27    # "i":I
    .restart local v30    # "n":I
    .restart local v34    # "packages":[Ljava/lang/String;
    .restart local v47    # "uids":[I
    :cond_15
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1409
    .end local v22    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27    # "i":I
    .end local v30    # "n":I
    .end local v34    # "packages":[Ljava/lang/String;
    .end local v43    # "size":I
    .end local v47    # "uids":[I
    :pswitch_7
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1410
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    .line 1411
    .local v32, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    .line 1412
    .local v49, "userId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_16

    const/16 v18, 0x1

    .line 1413
    .local v18, "andCode":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 1414
    const/4 v4, -0x1

    move/from16 v0, v49

    if-ne v0, v4, :cond_17

    .line 1415
    :try_start_3
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v51

    .line 1416
    .local v51, "users":[I
    const/4 v4, 0x0

    move-object/from16 v0, v51

    array-length v12, v0

    :goto_8
    if-ge v4, v12, :cond_18

    aget v48, v51, v4

    .line 1417
    .local v48, "user":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1418
    new-instance v14, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v48

    move-object/from16 v1, v32

    move/from16 v2, v18

    invoke-direct {v14, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    .line 1417
    invoke-virtual {v13, v14}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 1416
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1412
    .end local v18    # "andCode":Z
    .end local v48    # "user":I
    .end local v51    # "users":[I
    :cond_16
    const/16 v18, 0x0

    .restart local v18    # "andCode":Z
    goto :goto_7

    .line 1421
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1422
    new-instance v12, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v49

    move-object/from16 v1, v32

    move/from16 v2, v18

    invoke-direct {v12, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    .line 1421
    invoke-virtual {v4, v12}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_18
    monitor-exit v10

    .line 1425
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_0

    .line 1413
    :catchall_1
    move-exception v4

    monitor-exit v10

    throw v4

    .line 1431
    .end local v18    # "andCode":Z
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v49    # "userId":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1432
    .local v23, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_19

    const/4 v9, 0x1

    .line 1433
    .local v9, "didRestore":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->delete(I)V

    .line 1435
    if-eqz v23, :cond_1f

    .line 1436
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v19, v0

    .line 1437
    .local v19, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1439
    .local v5, "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_1a

    const/4 v6, 0x1

    .line 1441
    .local v6, "grantPermissions":Z
    :goto_a
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_1b

    const/4 v7, 0x1

    .line 1443
    .local v7, "killApp":Z
    :goto_b
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 1446
    .local v8, "grantedPermissions":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1447
    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    .line 1448
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 1446
    invoke-static/range {v4 .. v11}, Lcom/android/server/pm/PackageManagerService;->-wrap25(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1451
    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v4, :cond_1c

    .line 1452
    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v21

    .line 1453
    .local v21, "childCount":I
    :goto_c
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_d
    move/from16 v0, v27

    move/from16 v1, v21

    if-ge v0, v1, :cond_1d

    .line 1454
    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1455
    .local v11, "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1456
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1457
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v17, v0

    .line 1456
    const/4 v15, 0x0

    move v12, v6

    move v13, v7

    move-object v14, v8

    .line 1455
    invoke-static/range {v10 .. v17}, Lcom/android/server/pm/PackageManagerService;->-wrap25(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1453
    add-int/lit8 v27, v27, 0x1

    goto :goto_d

    .line 1432
    .end local v5    # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v6    # "grantPermissions":Z
    .end local v7    # "killApp":Z
    .end local v8    # "grantedPermissions":[Ljava/lang/String;
    .end local v9    # "didRestore":Z
    .end local v11    # "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v21    # "childCount":I
    .end local v27    # "i":I
    :cond_19
    const/4 v9, 0x0

    .restart local v9    # "didRestore":Z
    goto :goto_9

    .line 1439
    .restart local v5    # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .restart local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_1a
    const/4 v6, 0x0

    .restart local v6    # "grantPermissions":Z
    goto :goto_a

    .line 1441
    :cond_1b
    const/4 v7, 0x0

    .restart local v7    # "killApp":Z
    goto :goto_b

    .line 1452
    .restart local v8    # "grantedPermissions":[Ljava/lang/String;
    :cond_1c
    const/16 v21, 0x0

    .restart local v21    # "childCount":I
    goto :goto_c

    .line 1461
    .restart local v27    # "i":I
    :cond_1d
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    if-eqz v4, :cond_1e

    .line 1462
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    .line 1463
    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    .line 1462
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1469
    .end local v5    # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v6    # "grantPermissions":Z
    .end local v7    # "killApp":Z
    .end local v8    # "grantedPermissions":[Ljava/lang/String;
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v21    # "childCount":I
    .end local v27    # "i":I
    :cond_1e
    :goto_e
    const-string/jumbo v4, "postInstall"

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1466
    :cond_1f
    const-string/jumbo v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Bogus post-install token "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1473
    .end local v9    # "didRestore":Z
    .end local v23    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    :pswitch_9
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_22

    const/16 v39, 0x1

    .line 1474
    .local v39, "reportStatus":Z
    :goto_f
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_23

    const/16 v24, 0x1

    .line 1476
    .local v24, "doGc":Z
    :goto_10
    if-eqz v24, :cond_20

    .line 1478
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 1480
    :cond_20
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_21

    .line 1482
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/Set;

    .line 1485
    .local v20, "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap41(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .line 1487
    .end local v20    # "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_21
    if-eqz v39, :cond_0

    .line 1490
    :try_start_4
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1491
    :catch_0
    move-exception v25

    .line 1492
    .local v25, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v10, "MountService not running?"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1473
    .end local v24    # "doGc":Z
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v39    # "reportStatus":Z
    :cond_22
    const/16 v39, 0x0

    .restart local v39    # "reportStatus":Z
    goto :goto_f

    .line 1474
    :cond_23
    const/16 v24, 0x0

    goto :goto_10

    .line 1497
    .end local v39    # "reportStatus":Z
    :pswitch_a
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 1499
    const/16 v4, 0xd

    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1500
    const/16 v4, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v10

    .line 1504
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1498
    :catchall_2
    move-exception v4

    monitor-exit v10

    throw v4

    .line 1507
    :pswitch_b
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 1509
    const/16 v4, 0xe

    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .local v50, "userId$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v49

    .line 1511
    .restart local v49    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_11

    .line 1508
    .end local v49    # "userId":I
    .end local v50    # "userId$iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v4

    monitor-exit v10

    throw v4

    .line 1513
    .restart local v50    # "userId$iterator":Ljava/util/Iterator;
    :cond_24
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v10

    .line 1515
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1518
    .end local v50    # "userId$iterator":Ljava/util/Iterator;
    :pswitch_c
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 1520
    const/16 v4, 0x13

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v12}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit v10

    .line 1523
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1519
    :catchall_4
    move-exception v4

    monitor-exit v10

    throw v4

    .line 1526
    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    .line 1527
    .local v52, "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/pm/PackageVerificationState;

    .line 1529
    .local v45, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v45, :cond_0

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1530
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v19

    .line 1531
    .restart local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v31

    .line 1533
    .local v31, "originUri":Landroid/net/Uri;
    const-string/jumbo v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Verification timed out for "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1536
    const/16 v42, -0x16

    .line 1538
    .local v42, "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-wrap12(Lcom/android/server/pm/PackageManagerService;)I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_25

    .line 1539
    const-string/jumbo v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Continuing with installation of "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1541
    const/4 v10, 0x2

    .line 1540
    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1544
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    .line 1543
    const/4 v12, 0x1

    .line 1542
    move/from16 v0, v52

    move-object/from16 v1, v31

    invoke-static {v4, v0, v1, v12, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap20(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1546
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    move-result v42

    .line 1557
    :goto_12
    const-string/jumbo v4, "verification"

    const-wide/32 v12, 0x40000

    .line 1556
    move/from16 v0, v52

    invoke-static {v12, v13, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v19

    move/from16 v1, v42

    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap33(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x6

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1547
    :catch_1
    move-exception v25

    .line 1548
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v10, "Could not contact the ContainerService"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1551
    .end local v25    # "e":Landroid/os/RemoteException;
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1553
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    .line 1552
    const/4 v12, -0x1

    .line 1551
    move/from16 v0, v52

    move-object/from16 v1, v31

    invoke-static {v4, v0, v1, v12, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap20(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_12

    .line 1565
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v31    # "originUri":Landroid/net/Uri;
    .end local v42    # "ret":I
    .end local v45    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v52    # "verificationId":I
    :pswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    .line 1567
    .restart local v52    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/pm/PackageVerificationState;

    .line 1568
    .restart local v45    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v45, :cond_26

    .line 1569
    const-string/jumbo v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid verification token "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " received"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1573
    :cond_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1575
    .local v41, "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v41

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v41

    iget v10, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1577
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1580
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v19

    .line 1581
    .restart local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v31

    .line 1584
    .restart local v31    # "originUri":Landroid/net/Uri;
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1585
    const/16 v42, -0x6e

    .line 1586
    .restart local v42    # "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1587
    move-object/from16 v0, v41

    iget v10, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    .line 1586
    move/from16 v0, v52

    move-object/from16 v1, v31

    invoke-static {v4, v0, v1, v10, v12}, Lcom/android/server/pm/PackageManagerService;->-wrap20(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1589
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    move-result v42

    .line 1598
    :goto_13
    const-string/jumbo v4, "verification"

    const-wide/32 v12, 0x40000

    .line 1597
    move/from16 v0, v52

    invoke-static {v12, v13, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v19

    move/from16 v1, v42

    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap33(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x6

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1590
    :catch_2
    move-exception v25

    .line 1591
    .restart local v25    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v10, "Could not contact the ContainerService"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1594
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v42    # "ret":I
    :cond_27
    const/16 v42, -0x16

    .restart local v42    # "ret":I
    goto :goto_13

    .line 1607
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v31    # "originUri":Landroid/net/Uri;
    .end local v41    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v42    # "ret":I
    .end local v45    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v52    # "verificationId":I
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .line 1608
    .local v36, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v36

    iget v10, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    move-object/from16 v0, v36

    iget v12, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    .line 1609
    move-object/from16 v0, v36

    iget-boolean v13, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    move-object/from16 v0, v36

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1608
    invoke-static {v4, v10, v12, v13, v14}, Lcom/android/server/pm/PackageManagerService;->-wrap45(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    goto/16 :goto_0

    .line 1613
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    .line 1615
    .restart local v52    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1617
    .local v44, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v44, :cond_28

    .line 1618
    const-string/jumbo v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid IntentFilter verification token "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1619
    const-string/jumbo v12, " received"

    .line 1618
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1623
    :cond_28
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v49

    .line 1630
    .restart local v49    # "userId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .line 1632
    .local v40, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    move-object/from16 v0, v40

    iget v10, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    .line 1640
    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_29

    .line 1645
    :cond_29
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get6(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v4

    move/from16 v0, v52

    invoke-interface {v4, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_0

    .line 1210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xa

    .line 1203
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1201
    return-void

    .line 1204
    :catchall_0
    move-exception v0

    .line 1205
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1204
    throw v0
.end method
