.class Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
.super Ljava/lang/Object;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessRule"
.end annotation


# instance fields
.field public accessType:J

.field public certificateHash:[B

.field public packageName:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;J)V
    .locals 1
    .param p1, "certificateHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "accessType"    # J

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->certificateHash:[B

    .line 129
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    .line 130
    iput-wide p3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->accessType:J

    .line 127
    return-void
.end method


# virtual methods
.method matches([BLjava/lang/String;)Z
    .locals 1
    .param p1, "certHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 134
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->certificateHash:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    :goto_0
    return v0

    .line 135
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->certificateHash:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    const-string/jumbo v1, " access: "

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    iget-wide v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->accessType:J

    .line 140
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
