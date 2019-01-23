.class public Lcom/android/internal/telephony/MtkEccList;
.super Landroid/telephony/PhoneNumberUtils;
.source "MtkEccList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MtkEccList$EccEntry;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MtkEccList"

.field private static mCustomizedEccList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MtkEccList$EccEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mHashMapForNetworkEccCategory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsCtaSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    .line 43
    sput-object v0, Lcom/android/internal/telephony/MtkEccList;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/MtkEccList;->sIsCtaSet:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    .line 48
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.mtk_cta_set"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MtkEccList;->sIsCtaSet:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/MtkEccList;->parseEccList()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MtkEccList;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method public static getServiceCategoryFromEcc(Ljava/lang/String;)I
    .locals 10
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v6, 0x0

    .line 302
    .local v6, "numberPlus":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/MtkEccList;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v6    # "numberPlus":Ljava/lang/String;
    .local v4, "emergencyNum$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, "emergencyNum":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "numberPlus":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 305
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 304
    if-eqz v7, :cond_0

    .line 306
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/MtkEccList;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 307
    .local v5, "nSC":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    .line 308
    const-string/jumbo v7, "MtkEccList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getServiceCategoryFromEcc] match network ecc list, Ecc= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 309
    const-string/jumbo v9, ", Category= "

    .line 308
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    return v7

    .line 319
    .end local v3    # "emergencyNum":Ljava/lang/String;
    .end local v5    # "nSC":Ljava/lang/Integer;
    .end local v6    # "numberPlus":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    .line 320
    sget-object v7, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "eccEntry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MtkEccList$EccEntry;

    .line 321
    .local v1, "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    invoke-virtual {v1}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "ecc":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 323
    .restart local v6    # "numberPlus":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 324
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 323
    if-eqz v7, :cond_3

    .line 325
    :cond_4
    const-string/jumbo v7, "MtkEccList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getServiceCategoryFromEcc] match customized ecc list, Ecc= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 326
    const-string/jumbo v9, ", Category= "

    .line 325
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 326
    invoke-virtual {v1}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->getCategory()Ljava/lang/String;

    move-result-object v9

    .line 325
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v1}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    return v7

    .line 332
    .end local v0    # "ecc":Ljava/lang/String;
    .end local v1    # "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    .end local v2    # "eccEntry$iterator":Ljava/util/Iterator;
    .end local v6    # "numberPlus":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "MtkEccList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getServiceCategoryFromEcc] no matched for Ecc ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", return 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v7, 0x0

    return v7
.end method

.method public static isEmergencyNumberExt(Ljava/lang/String;)Z
    .locals 18
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string/jumbo v12, "MtkEccList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[isEmergencyNumberExt], number:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-nez p0, :cond_0

    .line 192
    const/4 v12, 0x0

    return v12

    .line 194
    :cond_0
    const/4 v7, 0x0

    .line 195
    .local v7, "numberPlus":Ljava/lang/String;
    const/4 v1, 0x0

    .line 199
    .local v1, "bSIMInserted":Z
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/MtkEccList;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 202
    sget-object v12, Lcom/android/internal/telephony/MtkEccList;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 203
    const-string/jumbo v12, "ril.ecc.service.category.list"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 204
    .local v11, "strEccCategoryList":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 205
    const-string/jumbo v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    array-length v14, v13

    :goto_0
    if-ge v12, v14, :cond_2

    aget-object v9, v13, v12

    .line 206
    .local v9, "strEccCategory":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 207
    const-string/jumbo v15, ","

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 208
    .local v10, "strEccCategoryAry":[Ljava/lang/String;
    array-length v15, v10

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v0, v15, :cond_1

    .line 209
    sget-object v15, Lcom/android/internal/telephony/MtkEccList;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v16, v10, v16

    .line 210
    const/16 v17, 0x1

    aget-object v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 209
    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v10    # "strEccCategoryAry":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 215
    .end local v9    # "strEccCategory":Ljava/lang/String;
    :cond_2
    sget-object v12, Lcom/android/internal/telephony/MtkEccList;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v7    # "numberPlus":Ljava/lang/String;
    .local v6, "emergencyNum$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    .local v5, "emergencyNum":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "numberPlus":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 218
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 217
    if-eqz v12, :cond_3

    .line 219
    :cond_4
    const-string/jumbo v12, "MtkEccList"

    const-string/jumbo v13, "[isEmergencyNumberExt] match network ecc list"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v12, 0x1

    return v12

    .line 225
    .end local v5    # "emergencyNum":Ljava/lang/String;
    .end local v7    # "numberPlus":Ljava/lang/String;
    :cond_5
    const-string/jumbo v12, "ril.ecclist"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "numbers":Ljava/lang/String;
    const-string/jumbo v12, "MtkEccList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[isEmergencyNumberExt] ril.ecclist: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 230
    const-string/jumbo v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    array-length v14, v13

    :goto_1
    if-ge v12, v14, :cond_8

    aget-object v5, v13, v12

    .line 231
    .restart local v5    # "emergencyNum":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 232
    .restart local v7    # "numberPlus":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 232
    if-eqz v15, :cond_7

    .line 234
    :cond_6
    const-string/jumbo v12, "MtkEccList"

    const-string/jumbo v13, "[isEmergencyNumberExt] match ril.ecclist"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v12, 0x1

    return v12

    .line 230
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 238
    .end local v5    # "emergencyNum":Ljava/lang/String;
    .end local v7    # "numberPlus":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x1

    .line 242
    :cond_9
    const-string/jumbo v12, "ril.ecclist1"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 243
    const-string/jumbo v12, "MtkEccList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[isEmergencyNumberExt] ril.ecclist1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 247
    const-string/jumbo v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    array-length v14, v13

    :goto_2
    if-ge v12, v14, :cond_c

    aget-object v5, v13, v12

    .line 248
    .restart local v5    # "emergencyNum":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 249
    .restart local v7    # "numberPlus":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 250
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 249
    if-eqz v15, :cond_b

    .line 251
    :cond_a
    const-string/jumbo v12, "MtkEccList"

    const-string/jumbo v13, "[isEmergencyNumberExt] match ril.ecclist1"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v12, 0x1

    return v12

    .line 247
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 255
    .end local v5    # "emergencyNum":Ljava/lang/String;
    .end local v7    # "numberPlus":Ljava/lang/String;
    :cond_c
    const/4 v1, 0x1

    .line 259
    :cond_d
    if-eqz v1, :cond_10

    .line 260
    sget-object v12, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    if-eqz v12, :cond_13

    .line 261
    sget-object v12, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "eccEntry$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MtkEccList$EccEntry;

    .line 262
    .local v3, "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    invoke-virtual {v3}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->getCondition()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 263
    invoke-virtual {v3}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "ecc":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    .restart local v7    # "numberPlus":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 265
    if-eqz v12, :cond_e

    .line 267
    :cond_f
    const-string/jumbo v12, "MtkEccList"

    const-string/jumbo v13, "[isEmergencyNumberExt] match customized ecc list"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v12, 0x1

    return v12

    .line 275
    .end local v2    # "ecc":Ljava/lang/String;
    .end local v3    # "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    .end local v4    # "eccEntry$iterator":Ljava/util/Iterator;
    .end local v7    # "numberPlus":Ljava/lang/String;
    :cond_10
    sget-object v12, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    if-eqz v12, :cond_13

    .line 276
    sget-object v12, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "eccEntry$iterator":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MtkEccList$EccEntry;

    .line 277
    .restart local v3    # "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    invoke-virtual {v3}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v2

    .line 278
    .restart local v2    # "ecc":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 279
    .restart local v7    # "numberPlus":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 280
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 279
    if-eqz v12, :cond_11

    .line 281
    :cond_12
    const-string/jumbo v12, "MtkEccList"

    const-string/jumbo v13, "[isEmergencyNumberExt] match customized ecc list when no sim"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v12, 0x1

    return v12

    .line 288
    .end local v2    # "ecc":Ljava/lang/String;
    .end local v3    # "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    .end local v4    # "eccEntry$iterator":Ljava/util/Iterator;
    .end local v7    # "numberPlus":Ljava/lang/String;
    :cond_13
    const-string/jumbo v12, "MtkEccList"

    const-string/jumbo v13, "[isEmergencyNumberExt] no match"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v12, 0x0

    return v12
.end method

.method private static parseEccList()V
    .locals 27

    .prologue
    .line 111
    sget-object v22, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 115
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v14

    .line 116
    .local v14, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 117
    .local v19, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v19, :cond_0

    .line 118
    const-string/jumbo v22, "MtkEccList"

    const-string/jumbo v23, "XmlPullParserFactory.newPullParser() return null"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 121
    :cond_0
    new-instance v15, Ljava/io/FileReader;

    const-string/jumbo v22, "/system/etc/ecc_list.xml"

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 122
    .local v15, "fileReader":Ljava/io/FileReader;
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 123
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 124
    .local v13, "eventType":I
    const/16 v20, 0x0

    .line 126
    :goto_0
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v13, v0, :cond_6

    .line 127
    packed-switch v13, :pswitch_data_0

    .line 149
    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "EccEntry"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 130
    new-instance v20, Lcom/android/internal/telephony/MtkEccList$EccEntry;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/MtkEccList$EccEntry;-><init>()V

    .line 131
    .local v20, "record":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 132
    .local v3, "attrNum":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    .line 133
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    .line 134
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    .line 135
    .local v21, "value":Ljava/lang/String;
    const-string/jumbo v22, "Ecc"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 136
    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->setEcc(Ljava/lang/String;)V

    .line 132
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 137
    :cond_3
    const-string/jumbo v22, "Category"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 138
    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->setCategory(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 180
    .end local v3    # "attrNum":I
    .end local v13    # "eventType":I
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .end local v16    # "i":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "record":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    .end local v21    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 181
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 110
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_4
    return-void

    .line 139
    .restart local v3    # "attrNum":I
    .restart local v13    # "eventType":I
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "i":I
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "record":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    .restart local v21    # "value":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v22, "Condition"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 140
    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->setCondition(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 182
    .end local v3    # "attrNum":I
    .end local v13    # "eventType":I
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .end local v16    # "i":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "record":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    .end local v21    # "value":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 183
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 145
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v13    # "eventType":I
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    :try_start_2
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "EccEntry"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    if-eqz v20, :cond_1

    .line 146
    sget-object v22, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 184
    .end local v13    # "eventType":I
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v6

    .line 185
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 151
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "eventType":I
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V

    .line 153
    sget-boolean v22, Lcom/android/internal/telephony/MtkEccList;->sIsCtaSet:Z

    if-eqz v22, :cond_4

    .line 154
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v11, v0, [Ljava/lang/String;

    const-string/jumbo v22, "120"

    const/16 v23, 0x0

    aput-object v22, v11, v23

    const-string/jumbo v22, "122"

    const/16 v23, 0x1

    aput-object v22, v11, v23

    const-string/jumbo v22, "110"

    const/16 v23, 0x2

    aput-object v22, v11, v23

    const-string/jumbo v22, "119"

    const/16 v23, 0x3

    aput-object v22, v11, v23

    .line 155
    .local v11, "emergencyCTAList":[Ljava/lang/String;
    const/16 v22, 0x0

    array-length v0, v11

    move/from16 v23, v0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    aget-object v12, v11, v22

    .line 156
    .local v12, "emergencyNum":Ljava/lang/String;
    new-instance v20, Lcom/android/internal/telephony/MtkEccList$EccEntry;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/MtkEccList$EccEntry;-><init>()V

    .line 157
    .restart local v20    # "record":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->setEcc(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v24, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->setCategory(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v24, "2"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->setCondition(Ljava/lang/String;)V

    .line 161
    const/4 v4, 0x0

    .line 162
    .local v4, "bFound":Z
    const/16 v17, 0x0

    .line 163
    .local v17, "nIndex":I
    sget-object v24, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "eccEntry$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/MtkEccList$EccEntry;

    .line 164
    .local v9, "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    invoke-virtual {v9}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "ecc":Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 166
    const/4 v4, 0x1

    .line 167
    const-string/jumbo v24, "MtkEccList"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[parseEccList]CTA ecc match customized ecc list, ecc="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v8    # "ecc":Ljava/lang/String;
    .end local v9    # "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    :cond_7
    if-eqz v4, :cond_9

    .line 175
    sget-object v24, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 171
    .restart local v8    # "ecc":Ljava/lang/String;
    .restart local v9    # "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 177
    .end local v8    # "ecc":Ljava/lang/String;
    .end local v9    # "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    :cond_9
    sget-object v24, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static updateEmergencyNumbersProperty()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 337
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v7, "sim1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v8, "sim2List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v4, "fixedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v5, "fixedListNoSim":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v10, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    .line 343
    sget-object v10, Lcom/android/internal/telephony/MtkEccList;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "eccEntry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MtkEccList$EccEntry;

    .line 344
    .local v1, "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    invoke-virtual {v1}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "ecc":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/MtkEccList$EccEntry;->getCondition()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 346
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 347
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 348
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    .end local v0    # "ecc":Ljava/lang/String;
    .end local v1    # "eccEntry":Lcom/android/internal/telephony/MtkEccList$EccEntry;
    .end local v2    # "eccEntry$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v10, "ril.ecclist"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "numbers":Ljava/lang/String;
    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    move v10, v9

    :goto_1
    if-ge v10, v12, :cond_4

    aget-object v3, v11, v10

    .line 356
    .local v3, "emergencyNum":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 357
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 360
    .end local v3    # "emergencyNum":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 361
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 362
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 363
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 364
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 366
    :cond_5
    const-string/jumbo v10, "ril.ecclist"

    const-string/jumbo v11, ","

    invoke-static {v11, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v10, "ril.ecclist1"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 370
    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    :goto_2
    if-ge v9, v11, :cond_7

    aget-object v3, v10, v9

    .line 371
    .restart local v3    # "emergencyNum":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 372
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 375
    .end local v3    # "emergencyNum":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 376
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 377
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 378
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 379
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 381
    :cond_8
    const-string/jumbo v9, "ril.ecclist1"

    const-string/jumbo v10, ","

    invoke-static {v10, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method
