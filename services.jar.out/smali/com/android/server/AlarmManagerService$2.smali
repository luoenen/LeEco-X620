.class Lcom/android/server/AlarmManagerService$2;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1399
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1400
    const-string/jumbo v1, ", uid="

    .line 1398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 1395
    return-void
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1387
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1389
    const-string/jumbo v5, "getNextAlarmClock"

    const/4 v6, 0x0

    move v2, p1

    move v4, v3

    .line 1387
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1391
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextWakeFromIdleTime()J
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .prologue
    .line 1370
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1371
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, "remove() with no intent or listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-void

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/AlarmManagerService;->-wrap5(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1369
    return-void

    .line 1375
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 19
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "triggerAtTime"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "flags"    # I
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 1283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 1287
    .local v16, "callingUid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1290
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_0

    .line 1291
    if-eqz p11, :cond_0

    .line 1292
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Repeating alarms cannot use AlarmReceivers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1296
    :cond_0
    if-eqz p13, :cond_1

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1298
    const-string/jumbo v3, "android.permission.UPDATE_DEVICE_STATS"

    .line 1299
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v5, "AlarmManager.set"

    .line 1297
    move/from16 v0, v16

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1304
    :cond_1
    and-int/lit8 p9, p9, -0xb

    .line 1309
    const/16 v2, 0x3e8

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    .line 1310
    and-int/lit8 p9, p9, -0x11

    .line 1314
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_3

    .line 1315
    or-int/lit8 p9, p9, 0x1

    .line 1320
    :cond_3
    if-eqz p14, :cond_5

    .line 1321
    or-int/lit8 p9, p9, 0x3

    .line 1334
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p9

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v17, p1

    invoke-virtual/range {v2 .. v17}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1282
    return-void

    .line 1327
    :cond_5
    if-nez p13, :cond_4

    const/16 v2, 0x2710

    move/from16 v0, v16

    if-lt v0, v2, :cond_6

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mDeviceIdleUserWhitelist:[I

    .line 1329
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 1328
    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_4

    .line 1330
    :cond_6
    or-int/lit8 p9, p9, 0x8

    .line 1331
    and-int/lit8 p9, p9, -0x5

    goto :goto_0
.end method

.method public setTime(J)Z
    .locals 7
    .param p1, "millis"    # J

    .prologue
    const/4 v0, 0x0

    .line 1340
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1341
    const-string/jumbo v2, "android.permission.SET_TIME"

    .line 1342
    const-string/jumbo v3, "setTime"

    .line 1340
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1345
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "Not setting time since no alarm driver is available."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return v0

    .line 1349
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1350
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-static {v2, v4, v5, p1, p2}, Lcom/android/server/AlarmManagerService;->-wrap2(Lcom/android/server/AlarmManagerService;JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    return v0

    .line 1349
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 1356
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1357
    const-string/jumbo v3, "android.permission.SET_TIME_ZONE"

    .line 1358
    const-string/jumbo v4, "setTimeZone"

    .line 1356
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1362
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1355
    return-void

    .line 1363
    :catchall_0
    move-exception v2

    .line 1364
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1363
    throw v2
.end method

.method public updateBlockedUids(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1413
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->-get1(Lcom/android/server/AlarmManagerService;)Lcom/android/server/QCNsrmAlarmExtension;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/QCNsrmAlarmExtension;->processBlockedUids(IZLandroid/os/PowerManager$WakeLock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1411
    return-void

    .line 1412
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
