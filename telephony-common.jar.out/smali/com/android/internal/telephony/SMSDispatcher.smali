.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final EVENT_CONFIRM_SEND_TO_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x8

.field private static final EVENT_CONFIRM_SEND_TO_PREMIUM_SHORT_CODE:I = 0x9

.field protected static final EVENT_HANDLE_STATUS_REPORT:I = 0xa

.field protected static final EVENT_ICC_CHANGED:I = 0xf

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0xc

.field protected static final EVENT_IMS_STATE_DONE:I = 0xd

.field protected static final EVENT_NEW_ICC_SMS:I = 0xe

.field protected static final EVENT_RADIO_ON:I = 0xb

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_STOP_SENDING:I = 0x7

.field private static final MAX_LABEL_SIZE_PX:F = 500.0f

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final PREMIUM_RULE_USE_BOTH:I = 0x3

.field private static final PREMIUM_RULE_USE_NETWORK:I = 0x2

.field private static final PREMIUM_RULE_USE_SIM:I = 0x1

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static sConcatenatedRef:I


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field protected mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private mPendingTrackerCount:I

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected mSmsCapable:Z

.field protected mSmsSendDisabled:Z

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/app/PendingIntent;)I
    .locals 1
    .param p0, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSendSmsFlag(Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->checkCallerIsPhoneOrCarrierApp()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "result"    # I
    .param p3, "messageRef"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 88
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 182
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 169
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 184
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 185
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 188
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 189
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 191
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    const-string/jumbo v3, "sms_short_code_rule"

    .line 192
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 193
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 192
    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 196
    const v3, 0x1120068

    .line 195
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 198
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 197
    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 199
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string/jumbo v2, " mSmsSendDisabled="

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    :cond_0
    move v0, v2

    .line 197
    goto :goto_0
.end method

.method private checkCallerIsPhoneOrCarrierApp()V
    .locals 7

    .prologue
    .line 1847
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1848
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1849
    .local v1, "appId":I
    const/16 v5, 0x3e9

    if-eq v1, v5, :cond_0

    if-nez v4, :cond_1

    .line 1850
    :cond_0
    return-void

    .line 1853
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1854
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1855
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1856
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Caller is not phone or carrier app!"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 1859
    .local v3, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Caller is not phone or carrier app!"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1846
    .end local v3    # "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    return-void
.end method

.method private convertSafeLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "labelStr"    # Ljava/lang/String;
    .param p2, "appPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1178
    .local v1, "labelLength":I
    const/4 v2, 0x0

    .line 1179
    .local v2, "offset":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1180
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1181
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v4

    .line 1182
    .local v4, "type":I
    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    .line 1183
    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    .line 1185
    :cond_0
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1196
    .end local v0    # "codePoint":I
    .end local v4    # "type":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1197
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1198
    return-object p2

    .line 1184
    .restart local v0    # "codePoint":I
    .restart local v4    # "type":I
    :cond_2
    const/16 v5, 0xe

    if-eq v4, v5, :cond_0

    .line 1189
    const/16 v5, 0xc

    if-ne v4, v5, :cond_3

    .line 1190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1191
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 1190
    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1193
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 1200
    .end local v0    # "codePoint":I
    .end local v4    # "type":I
    :cond_4
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 1201
    .local v3, "paint":Landroid/text/TextPaint;
    const/high16 v5, 0x42280000    # 42.0f

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1204
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1203
    const/high16 v6, 0x43fa0000    # 500.0f

    invoke-static {p1, v3, v6, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 1133
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lt v0, v3, :cond_0

    .line 1135
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "Denied because queue limit reached"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1137
    const/4 v0, 0x1

    return v0

    .line 1139
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 1140
    return v2
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 1149
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1151
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1152
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, "label":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/SMSDispatcher;->convertSafeLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 1154
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "label":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1155
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageManager Name Not Found for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return-object p1
.end method

.method private getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1821
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1822
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "part$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1823
    .local v0, "part":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1824
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1827
    .end local v0    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 173
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 174
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static getNotInServiceError(I)I
    .locals 1
    .param p0, "ss"    # I

    .prologue
    .line 719
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 720
    const/4 v0, 0x2

    return v0

    .line 722
    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method private static getSendSmsFlag(Landroid/app/PendingIntent;)I
    .locals 1
    .param p0, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 358
    if-nez p0, :cond_0

    .line 359
    const/4 v0, 0x0

    return v0

    .line 361
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "ss"    # I
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 703
    if-eqz p1, :cond_0

    .line 705
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 706
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method private processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "result"    # I
    .param p3, "messageRef"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 477
    if-nez p1, :cond_0

    .line 478
    const-string/jumbo v1, "SMSDispatcher"

    const-string/jumbo v2, "processSendSmsResponse: null tracker"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void

    .line 482
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    .line 483
    const/4 v1, -0x1

    .line 482
    invoke-direct {v0, p3, v3, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 485
    .local v0, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    packed-switch p2, :pswitch_data_0

    .line 504
    const-string/jumbo v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Retry on carrier network."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 476
    :goto_0
    return-void

    .line 487
    :pswitch_0
    const-string/jumbo v1, "SMSDispatcher"

    const-string/jumbo v2, "Sending SMS by IP succeeded."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, p1, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 488
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 494
    :pswitch_1
    const-string/jumbo v1, "SMSDispatcher"

    const-string/jumbo v2, "Sending SMS by IP failed."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v1, Landroid/os/AsyncResult;

    .line 497
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 496
    invoke-direct {v1, p1, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 495
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 500
    :pswitch_2
    const-string/jumbo v1, "SMSDispatcher"

    const-string/jumbo v2, "Sending SMS by IP failed. Retry on carrier network."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 19
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1356
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v16

    .line 1358
    .local v16, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "destination"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1359
    .local v3, "destinationAddress":Ljava/lang/String;
    const-string/jumbo v2, "scaddress"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1361
    .local v4, "scAddress":Ljava/lang/String;
    const-string/jumbo v2, "parts"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1362
    .local v5, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "sentIntents"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1363
    .local v6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v2, "deliveryIntents"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1366
    .local v7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v18

    .line 1368
    .local v18, "ss":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v18, :cond_2

    .line 1369
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "count":I
    :goto_0
    if-ge v15, v14, :cond_1

    .line 1370
    const/16 v17, 0x0

    .line 1371
    .local v17, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_0

    .line 1372
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v17, Landroid/app/PendingIntent;

    .line 1374
    :cond_0
    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 1369
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1376
    :cond_1
    return-void

    .line 1380
    .end local v14    # "count":I
    .end local v15    # "i":I
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-get0(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v10

    .line 1381
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mvalidityPeriod:I

    .line 1380
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    move-object/from16 v2, p0

    .line 1379
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 1351
    return-void
.end method


# virtual methods
.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1056
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1058
    return v9

    .line 1060
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 1061
    .local v3, "rule":I
    const/4 v5, 0x0

    .line 1062
    .local v5, "smsCategory":I
    if-eq v3, v9, :cond_1

    if-ne v3, v11, :cond_4

    .line 1063
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1064
    .local v4, "simCountryIso":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v10, :cond_3

    .line 1065
    :cond_2
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Can\'t get SIM country Iso: trying network country Iso"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1069
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1071
    .end local v4    # "simCountryIso":Ljava/lang/String;
    :cond_4
    if-eq v3, v10, :cond_5

    if-ne v3, v11, :cond_8

    .line 1072
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, "networkCountryIso":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v10, :cond_7

    .line 1074
    :cond_6
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Can\'t get Network country Iso: trying SIM country Iso"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1079
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1078
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v5

    .line 1082
    .end local v1    # "networkCountryIso":Ljava/lang/String;
    :cond_8
    if-eqz v5, :cond_9

    .line 1083
    if-ne v5, v9, :cond_a

    .line 1085
    :cond_9
    return v9

    .line 1084
    :cond_a
    if-eq v5, v10, :cond_9

    .line 1089
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "device_provisioned"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_b

    .line 1090
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Can\'t send premium sms during Setup Wizard"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return v8

    .line 1095
    :cond_b
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 1096
    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1095
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2

    .line 1097
    .local v2, "premiumSmsPermission":I
    if-nez v2, :cond_c

    .line 1099
    const/4 v2, 0x1

    .line 1102
    :cond_c
    packed-switch v2, :pswitch_data_0

    .line 1115
    if-ne v5, v11, :cond_d

    .line 1116
    const/16 v0, 0x8

    .line 1120
    .local v0, "event":I
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1121
    return v8

    .line 1104
    .end local v0    # "event":I
    :pswitch_0
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "User approved this app to send to premium SMS"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return v9

    .line 1108
    :pswitch_1
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "User denied this app from sending to premium SMS"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const/4 v6, 0x7

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1110
    return v8

    .line 1118
    :cond_d
    const/16 v0, 0x9

    .restart local v0    # "event":I
    goto :goto_0

    .line 1102
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 230
    return-void
.end method

.method protected getCarrierAppPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1831
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 1832
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_0

    .line 1833
    return-object v2

    .line 1837
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 1838
    .local v1, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1839
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1838
    :cond_1
    return-object v2
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1812
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1815
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    return-object v3
.end method

.method protected abstract getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZIZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 14
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "messageUri"    # Landroid/net/Uri;
    .param p6, "isExpectMore"    # Z
    .param p7, "fullMessageText"    # Ljava/lang/String;
    .param p8, "isText"    # Z
    .param p9, "validityPeriod"    # I
    .param p10, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZIZ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 1689
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 1690
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    .line 1689
    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZIZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 14
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "messageUri"    # Landroid/net/Uri;
    .param p6, "isExpectMore"    # Z
    .param p7, "fullMessageText"    # Ljava/lang/String;
    .param p8, "isText"    # Z
    .param p9, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 1681
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 1682
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1683
    const/4 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v13, p9

    .line 1681
    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZIZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZIZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 22
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p6, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p9, "isExpectMore"    # Z
    .param p10, "fullMessageText"    # Ljava/lang/String;
    .param p11, "isText"    # Z
    .param p12, "validityPeriod"    # I
    .param p13, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "ZIZ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 1657
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 1658
    .local v21, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    .line 1661
    .local v20, "packageNames":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1662
    .local v5, "appInfo":Landroid/content/pm/PackageInfo;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1665
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v20, v1

    const/16 v2, 0x40

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1672
    .end local v5    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    const-string/jumbo v1, "destAddr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1673
    .local v6, "destAddr":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1675
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v14

    .line 1673
    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZIZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-object v1

    .line 1666
    .end local v6    # "destAddr":Ljava/lang/String;
    .restart local v5    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v19

    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[B",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1708
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    const-string/jumbo v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    const-string/jumbo v1, "destPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    const-string/jumbo v1, "smsc"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    const-string/jumbo v1, "pdu"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1697
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    const-string/jumbo v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    const-string/jumbo v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    const-string/jumbo v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    return-object v0
.end method

.method protected getSubId()I
    .locals 2

    .prologue
    .line 1843
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method protected handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 17
    .param p1, "isPremium"    # Z
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1241
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1242
    return-void

    .line 1246
    :cond_0
    if-eqz p1, :cond_1

    .line 1247
    const v4, 0x1040476

    .line 1252
    .local v4, "detailsId":I
    :goto_0
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1253
    .local v2, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 1254
    .local v12, "r":Landroid/content/res/Resources;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    .line 1255
    const/4 v15, 0x0

    aput-object v2, v14, v15

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 1254
    const v15, 0x1040474

    invoke-virtual {v12, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 1257
    .local v10, "messageText":Landroid/text/Spanned;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1258
    const-string/jumbo v15, "layout_inflater"

    .line 1257
    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1259
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x10900e7

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1261
    .local v8, "layout":Landroid/view/View;
    new-instance v9, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    .line 1262
    const v14, 0x1020417

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1261
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1265
    .local v9, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    const v14, 0x1020411

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1266
    .local v11, "messageView":Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    const v14, 0x1020412

    .line 1268
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1271
    .local v5, "detailsLayout":Landroid/view/ViewGroup;
    const v14, 0x1020414

    .line 1270
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1272
    .local v6, "detailsView":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1275
    const v14, 0x1020415

    .line 1274
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 1276
    .local v13, "rememberChoice":Landroid/widget/CheckBox;
    invoke-virtual {v13, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1278
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 1280
    const v15, 0x1040477

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1278
    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 1281
    const v15, 0x1040478

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1278
    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1285
    .local v3, "d":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d3

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 1286
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1288
    const/4 v14, -0x1

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    .line 1289
    const/4 v14, -0x2

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    .line 1240
    return-void

    .line 1249
    .end local v2    # "appLabel":Ljava/lang/CharSequence;
    .end local v3    # "d":Landroid/app/AlertDialog;
    .end local v4    # "detailsId":I
    .end local v5    # "detailsLayout":Landroid/view/ViewGroup;
    .end local v6    # "detailsView":Landroid/widget/TextView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    .end local v10    # "messageText":Landroid/text/Spanned;
    .end local v11    # "messageView":Landroid/widget/TextView;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "rememberChoice":Landroid/widget/CheckBox;
    :cond_1
    const v4, 0x1040475

    .restart local v4    # "detailsId":I
    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 274
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 327
    :pswitch_0
    const-string/jumbo v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage() ignoring message of unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 277
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 281
    :pswitch_2
    const-string/jumbo v1, "SMSDispatcher"

    const-string/jumbo v2, "SMS retry.."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 286
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 290
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 294
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 299
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 300
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 310
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto :goto_0

    .line 303
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-le v1, v2, :cond_1

    .line 304
    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    .line 308
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 306
    :cond_1
    iput-boolean v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    goto :goto_2

    .line 316
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 317
    .restart local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 318
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto :goto_0

    .line 323
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1213
    return-void

    .line 1216
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1217
    .local v0, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1218
    .local v4, "r":Landroid/content/res/Resources;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const v6, 0x1040471

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 1220
    .local v3, "messageText":Landroid/text/Spanned;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p1, v5}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1222
    .local v2, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1223
    const v6, 0x1040470

    .line 1222
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1224
    const v6, 0x108008a

    .line 1222
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1226
    const v6, 0x1040472

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1222
    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1227
    const v6, 0x1040473

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1222
    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1231
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1232
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1211
    return-void
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 625
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 626
    .local v5, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v3, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 628
    .local v3, "sentIntent":Landroid/app/PendingIntent;
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 629
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    iget v6, v6, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    iput v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 634
    :goto_0
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    .line 637
    iget-object v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_0

    .line 639
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 624
    :goto_1
    return-void

    .line 631
    :cond_1
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "SmsResponse was null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 645
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 647
    .local v4, "ss":I
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v6, :cond_3

    if-eqz v4, :cond_3

    .line 651
    iput v10, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 653
    const-string/jumbo v6, "SMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSendComplete: Skipping retry:  isIms()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 654
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v8

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 655
    const-string/jumbo v8, " mRetryCount="

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 655
    iget v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 656
    const-string/jumbo v8, " mImsRetry="

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 656
    iget v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 657
    const-string/jumbo v8, " mMessageRef="

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 657
    iget v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 658
    const-string/jumbo v8, " SS= "

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 658
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    .line 663
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v7

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 664
    :cond_4
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    .line 665
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    .line 664
    if-ne v6, v7, :cond_5

    .line 666
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v6, v10, :cond_5

    .line 675
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 676
    invoke-virtual {p0, v10, v5}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 677
    .local v2, "retryMsg":Landroid/os/Message;
    const-wide/16 v6, 0x7d0

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 679
    .end local v2    # "retryMsg":Landroid/os/Message;
    :cond_5
    const/4 v1, 0x0

    .line 680
    .local v1, "errorCode":I
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 681
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    iget v1, v6, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 683
    :cond_6
    const/4 v0, 0x1

    .line 684
    .local v0, "error":I
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    .line 685
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 684
    if-ne v6, v7, :cond_7

    .line 686
    const/4 v0, 0x6

    .line 688
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto/16 :goto_1
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 256
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "handleStatusReport() called with no subclass."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method protected abstract injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public isIms()Z
    .locals 3

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    return v0

    .line 1806
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 30
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v19

    .line 877
    .local v19, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v26, v0

    .line 878
    .local v26, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 879
    .local v25, "msgCount":I
    const/4 v9, 0x0

    .line 881
    .local v9, "encoding":I
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v23, v0

    .line 882
    .local v23, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 883
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v22

    .line 884
    .local v22, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_1

    .line 885
    if-eqz v9, :cond_0

    .line 886
    const/4 v4, 0x1

    if-ne v9, v4, :cond_1

    .line 887
    :cond_0
    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 889
    :cond_1
    aput-object v22, v23, v24

    .line 882
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 892
    .end local v22    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v29, v0

    .line 895
    .local v29, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v16, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 896
    .local v16, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v17, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 898
    .local v17, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 899
    new-instance v21, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 900
    .local v21, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 901
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 902
    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 909
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 910
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 911
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v21

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 914
    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    .line 915
    aget-object v4, v23, v24

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v4, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 916
    aget-object v4, v23, v24

    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v4, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 919
    :cond_3
    const/4 v10, 0x0

    .line 920
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_4

    .line 921
    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 924
    :cond_4
    const/4 v11, 0x0

    .line 925
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-le v4, v0, :cond_5

    .line 926
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 930
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 931
    add-int/lit8 v4, v25, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_6

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v18, p6

    .line 930
    invoke-virtual/range {v4 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 929
    aput-object v4, v29, v24

    .line 934
    aget-object v4, v29, v24

    move/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-set0(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)Z

    .line 898
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 931
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 937
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v21    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    if-eqz p3, :cond_8

    if-nez v29, :cond_9

    .line 939
    :cond_8
    const-string/jumbo v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot send multipart text. parts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " trackers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return-void

    .line 937
    :cond_9
    move-object/from16 v0, v29

    array-length v4, v0

    if-eqz v4, :cond_8

    .line 938
    const/4 v4, 0x0

    aget-object v4, v29, v4

    if-eqz v4, :cond_8

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v20

    .line 944
    .local v20, "carrierPackage":Ljava/lang/String;
    if-eqz v20, :cond_b

    .line 945
    const-string/jumbo v4, "SMSDispatcher"

    const-string/jumbo v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v27, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 947
    .local v27, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    .line 875
    .end local v27    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_a
    return-void

    .line 949
    :cond_b
    const-string/jumbo v4, "SMSDispatcher"

    const-string/jumbo v5, "No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/4 v4, 0x0

    move-object/from16 v0, v29

    array-length v5, v0

    :goto_3
    if-ge v4, v5, :cond_a

    aget-object v28, v29, v4

    .line 951
    .local v28, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v28, :cond_c

    .line 952
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 950
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 954
    :cond_c
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Null tracker."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 993
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v2

    .line 994
    .local v2, "map":Ljava/util/HashMap;
    const-string/jumbo v6, "pdu"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 996
    .local v4, "pdu":[B
    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v6, :cond_0

    .line 997
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Device does not support sending sms."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6, v10, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 999
    return-void

    .line 1002
    :cond_0
    if-nez v4, :cond_1

    .line 1003
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Empty PDU"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-virtual {p1, v6, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1005
    return-void

    .line 1009
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1010
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 1012
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v6, v3

    if-nez v6, :cond_3

    .line 1014
    :cond_2
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1016
    return-void

    .line 1023
    :cond_3
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v3, v6

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1033
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1035
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1036
    invoke-virtual {p0, v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1037
    return-void

    .line 1024
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 1025
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "SMSDispatcher"

    const-string/jumbo v7, "Can\'t get calling app package info: refusing to send SMS"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1027
    return-void

    .line 1040
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1043
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1044
    new-instance v6, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;-><init>(Landroid/content/Context;)V

    new-array v7, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 992
    :cond_6
    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1337
    :goto_0
    return-void

    .line 1342
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null. Retry failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1314
    return-void
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 225
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 226
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Active phone changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method
