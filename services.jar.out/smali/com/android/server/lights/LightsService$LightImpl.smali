.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessLevel:I

.field private mBrightnessMode:I

.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mMode:I

.field private mModesUpdate:Z

.field private mMultipleLeds:Z

.field private mOffMS:I

.field private mOnMS:I

.field private mReset:Z

.field private mUseLowPersistenceForVR:Z

.field private mVrModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 38
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mReset:Z

    .line 39
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 40
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessLevel:I

    .line 41
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMultipleLeds:Z

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;
    .param p2, "id"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    const/4 p5, 0x2

    .line 151
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-eq p1, v0, :cond_4

    .line 155
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mReset:Z

    .line 157
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 158
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 159
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 160
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 161
    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    const-string/jumbo v1, ")"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-get1(Lcom/android/server/lights/LightsService;)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 167
    iget v8, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessLevel:I

    iget-boolean v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMultipleLeds:Z

    if-eqz v3, :cond_5

    const/4 v9, 0x1

    :goto_2
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 166
    invoke-static/range {v0 .. v9}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 144
    :cond_2
    return-void

    .line 147
    :cond_3
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 148
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    goto :goto_0

    .line 151
    :cond_4
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_1

    .line 152
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-ne v0, p5, :cond_1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mReset:Z

    .line 151
    if-eqz v0, :cond_2

    goto :goto_1

    .line 167
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 168
    throw v0
.end method

.method private shouldBeInLowPersistenceMode()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .prologue
    .line 96
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 95
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .prologue
    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 100
    return-void

    .line 103
    :cond_1
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    .line 104
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 103
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 106
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-get0(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get0(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    .line 46
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    .prologue
    .line 52
    monitor-enter p0

    .line 54
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 55
    :try_start_0
    const-string/jumbo v0, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    const-string/jumbo v3, ": brightness=0x"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 57
    return-void

    .line 60
    :cond_0
    and-int/lit16 v1, p1, 0xff

    .line 61
    .local v1, "color":I
    shl-int/lit8 v0, v1, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 62
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 51
    return-void

    .line 52
    .end local v1    # "color":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setModes(IZ)V
    .locals 1
    .param p1, "brightnessLevel"    # I
    .param p2, "multipleLeds"    # Z

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessLevel:I

    if-eq v0, p1, :cond_0

    .line 84
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessLevel:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMultipleLeds:Z

    if-eq v0, p2, :cond_1

    .line 88
    iput-boolean p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMultipleLeds:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVrMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v1, p1, :cond_1

    .line 122
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    .line 125
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-wrap0(Lcom/android/server/lights/LightsService;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 124
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    .line 126
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public turnOff()V
    .locals 6

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
