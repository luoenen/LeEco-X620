.class public final Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageVolume$1;
    }
.end annotation


# static fields
.field private static final ACTION_OPEN_EXTERNAL_DIRECTORY:Ljava/lang/String; = "android.os.storage.action.OPEN_EXTERNAL_DIRECTORY"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_DIRECTORY_NAME:Ljava/lang/String; = "android.os.storage.extra.DIRECTORY_NAME"

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "android.os.storage.extra.STORAGE_VOLUME"

.field public static final STORAGE_ID_INVALID:I = 0x0

.field public static final STORAGE_ID_PRIMARY:I = 0x10001


# instance fields
.field private final mAllowMassStorage:Z

.field private final mDescription:Ljava/lang/String;

.field private final mEmulated:Z

.field private final mFsUuid:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mMaxFileSize:J

.field private final mMtpReserveSize:J

.field private final mOwner:Landroid/os/UserHandle;

.field private final mPath:Ljava/io/File;

.field private final mPrimary:Z

.field private final mRemovable:Z

.field private final mState:Ljava/lang/String;

.field private final mStorageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 409
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 145
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 142
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    :cond_1
    move v0, v2

    .line 148
    goto :goto_1

    :cond_2
    move v0, v2

    .line 149
    goto :goto_2

    :cond_3
    move v1, v2

    .line 151
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/storage/StorageVolume;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "storageId"    # I
    .param p3, "path"    # Ljava/io/File;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "primary"    # Z
    .param p6, "removable"    # Z
    .param p7, "emulated"    # Z
    .param p8, "mtpReserveSize"    # J
    .param p10, "allowMassStorage"    # Z
    .param p11, "maxFileSize"    # J
    .param p13, "owner"    # Landroid/os/UserHandle;
    .param p14, "fsUuid"    # Ljava/lang/String;
    .param p15, "state"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    .line 128
    iput p2, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 129
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 130
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 131
    iput-boolean p5, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 132
    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 133
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 134
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    .line 135
    iput-boolean p10, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 136
    iput-wide p11, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 137
    invoke-static {p13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 138
    iput-object p14, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    .line 139
    invoke-static/range {p15 .. p15}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public allowMassStorage()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "directoryName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 349
    :cond_0
    return-object v2

    .line 348
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/os/Environment;->isStandardDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.storage.action.OPEN_EXTERNAL_DIRECTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 353
    const-string/jumbo v1, "android.os.storage.extra.DIRECTORY_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 4

    .prologue
    .line 384
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 385
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 386
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 391
    const-string/jumbo v0, "StorageVolume:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 393
    const-string/jumbo v0, "mId"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    const-string/jumbo v0, "mStorageId"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    const-string/jumbo v0, "mPath"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    const-string/jumbo v0, "mDescription"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    const-string/jumbo v0, "mPrimary"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    const-string/jumbo v0, "mRemovable"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    const-string/jumbo v0, "mEmulated"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    const-string/jumbo v0, "mMtpReserveSize"

    iget-wide v2, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    const-string/jumbo v0, "mAllowMassStorage"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    const-string/jumbo v0, "mMaxFileSize"

    iget-wide v2, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    const-string/jumbo v0, "mOwner"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    const-string/jumbo v0, "mFsUuid"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    const-string/jumbo v0, "mState"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 390
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 359
    instance-of v1, p1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 360
    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 361
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    iget-object v2, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 363
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .locals 4

    .prologue
    .line 238
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getOwner()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public getUserLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeId()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 279
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    .line 280
    .local v1, "id":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 281
    return v4

    .line 283
    :cond_0
    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 285
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 288
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v4
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "StorageVolume: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 374
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 375
    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget-wide v4, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 436
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 438
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 439
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    return-void

    :cond_0
    move v0, v2

    .line 432
    goto :goto_0

    :cond_1
    move v0, v2

    .line 433
    goto :goto_1

    :cond_2
    move v0, v2

    .line 434
    goto :goto_2

    :cond_3
    move v1, v2

    .line 436
    goto :goto_3
.end method
