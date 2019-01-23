.class Landroid/widget/ProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field private static final POOL_MAX:I = 0x18

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public animate:Z

.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1287
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 1286
    sput-object v0, Landroid/widget/ProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 1284
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIZZ)Landroid/widget/ProgressBar$RefreshData;
    .locals 2
    .param p0, "id"    # I
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1295
    sget-object v1, Landroid/widget/ProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar$RefreshData;

    .line 1296
    .local v0, "rd":Landroid/widget/ProgressBar$RefreshData;
    if-nez v0, :cond_0

    .line 1297
    new-instance v0, Landroid/widget/ProgressBar$RefreshData;

    .end local v0    # "rd":Landroid/widget/ProgressBar$RefreshData;
    invoke-direct {v0}, Landroid/widget/ProgressBar$RefreshData;-><init>()V

    .line 1299
    .restart local v0    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_0
    iput p0, v0, Landroid/widget/ProgressBar$RefreshData;->id:I

    .line 1300
    iput p1, v0, Landroid/widget/ProgressBar$RefreshData;->progress:I

    .line 1301
    iput-boolean p2, v0, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    .line 1302
    iput-boolean p3, v0, Landroid/widget/ProgressBar$RefreshData;->animate:Z

    .line 1303
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 1307
    sget-object v0, Landroid/widget/ProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1306
    return-void
.end method
