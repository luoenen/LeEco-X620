.class public Landroid/net/wifi/WifiConfiguration$KeyMgmt;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMgmt"
.end annotation


# static fields
.field public static final FT_EAP:I = 0x7

.field public static final FT_PSK:I = 0x6

.field public static final IEEE8021X:I = 0x3

.field public static final NONE:I = 0x0

.field public static final OSEN:I = 0x5

.field public static final WPA2_PSK:I = 0x4

.field public static final WPA_EAP:I = 0x2

.field public static final WPA_PSK:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "key_mgmt"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "WPA_PSK"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "WPA_EAP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "IEEE8021X"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 118
    const-string/jumbo v1, "WPA2_PSK"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "OSEN"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "FT_PSK"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "FT_EAP"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 117
    sput-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
