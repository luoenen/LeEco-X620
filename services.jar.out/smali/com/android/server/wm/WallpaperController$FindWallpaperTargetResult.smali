.class final Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindWallpaperTargetResult"
.end annotation


# instance fields
.field topWallpaper:Lcom/android/server/wm/WindowState;

.field topWallpaperIndex:I

.field wallpaperTarget:Lcom/android/server/wm/WindowState;

.field wallpaperTargetIndex:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    .line 958
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 959
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 960
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 956
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 973
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    .line 974
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 975
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 976
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 972
    return-void
.end method

.method setTopWallpaper(Lcom/android/server/wm/WindowState;I)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "index"    # I

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 964
    iput p2, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    .line 962
    return-void
.end method

.method setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "index"    # I

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 969
    iput p2, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 967
    return-void
.end method
