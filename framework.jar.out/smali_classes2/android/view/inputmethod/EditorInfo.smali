.class public Landroid/view/inputmethod/EditorInfo;
.super Ljava/lang/Object;
.source "EditorInfo.java"

# interfaces
.implements Landroid/text/InputType;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/EditorInfo$1;
    }
.end annotation


# static fields

.field public static final IME_COMMAND_ACTION_ATTRS_CHANGED:Ljava/lang/String; = "com.meizu.input.attrsChanged"

.field public static final IME_COMMAND_ACTION_DICT_CHANGED:Ljava/lang/String; = "com.meizu.input.dictChanged"

.field public static final IME_COMMAND_ACTION_VOICE_ANIM_HIDE:Ljava/lang/String; = "com.meizu.input.textviewVoiceAnimHide"

.field public static final IME_COMMAND_ACTION_VOICE_ANIM_SHAKE:Ljava/lang/String; = "com.meizu.input.textviewVoiceAnimShake"

.field public static final IME_COMMAND_ACTION_VOICE_ANIM_SHOW:Ljava/lang/String; = "com.meizu.input.textviewVoiceAnimShow"

.field public static final IME_OPTION_CANDIDATE_ALWAYS_VISIBLE:Ljava/lang/String; = "com.meizu.input.candidateAlwaysVisible"

.field public static final IME_OPTION_COVER_SMILE:Ljava/lang/String; = "com.meizu.input.cover.SMILE"

.field public static final IME_OPTION_COVER_VOICE:Ljava/lang/String; = "com.meizu.input.cover.VOICE"

.field public static final IME_OPTION_KEEP_APP_DICT_STATE:Ljava/lang/String; = "com.meizu.input.keepAppDictState"

.field public static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field public static final IME_OPTION_VALUE_COVER_SMILE_MMS:Ljava/lang/String; = "mms"

.field public static final IME_OPTION_VALUE_COVER_SMILE_WEIBO:Ljava/lang/String; = "weibo"

.field public static final IME_OPTION_VARIATION_SYMBOL:Ljava/lang/String; = "com.meizu.input.variationSymbol"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/EditorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IME_ACTION_DONE:I = 0x6

.field public static final IME_ACTION_GO:I = 0x2

.field public static final IME_ACTION_NEXT:I = 0x5

.field public static final IME_ACTION_NONE:I = 0x1

.field public static final IME_ACTION_PREVIOUS:I = 0x7

.field public static final IME_ACTION_SEARCH:I = 0x3

.field public static final IME_ACTION_SEND:I = 0x4

.field public static final IME_ACTION_UNSPECIFIED:I = 0x0

.field public static final IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final IME_FLAG_NAVIGATE_NEXT:I = 0x8000000

.field public static final IME_FLAG_NAVIGATE_PREVIOUS:I = 0x4000000

.field public static final IME_FLAG_NO_ACCESSORY_ACTION:I = 0x20000000

.field public static final IME_FLAG_NO_ENTER_ACTION:I = 0x40000000

.field public static final IME_FLAG_NO_EXTRACT_UI:I = 0x10000000

.field public static final IME_FLAG_NO_FULLSCREEN:I = 0x2000000

.field public static final IME_MASK_ACTION:I = 0xff

.field public static final IME_NULL:I


# instance fields
.field public actionId:I

.field public actionLabel:Ljava/lang/CharSequence;

.field public contentMimeTypes:[Ljava/lang/String;

.field public extras:Landroid/os/Bundle;

.field public fieldId:I

.field public fieldName:Ljava/lang/String;

.field public hintLocales:Landroid/os/LocaleList;

.field public hintText:Ljava/lang/CharSequence;

.field public imeOptions:I

.field public initialCapsMode:I

.field public initialSelEnd:I

.field public initialSelStart:I

.field public inputType:I

.field public label:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public privateImeOptions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 471
    new-instance v0, Landroid/view/inputmethod/EditorInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo$1;-><init>()V

    .line 470
    sput-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 214
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 227
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 239
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 247
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 263
    iput v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 279
    iput v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 290
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 366
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 378
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "inputType=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    const-string/jumbo v1, " imeOptions=0x"

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 421
    const-string/jumbo v1, " privateImeOptions="

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 421
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "actionLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    const-string/jumbo v1, " actionId="

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "initialSelStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    const-string/jumbo v1, " initialSelEnd="

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    const-string/jumbo v1, " initialCapsMode=0x"

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hintText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 429
    const-string/jumbo v1, " label="

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 429
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    const-string/jumbo v1, " fieldId="

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    const-string/jumbo v1, " fieldName="

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hintLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "contentMimeTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public final makeCompatible(I)V
    .locals 2
    .param p1, "targetSdkVersion"    # I

    .prologue
    const v1, 0xfff000

    .line 396
    const/16 v0, 0xb

    if-ge p1, v0, :cond_0

    .line 397
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xfff

    sparse-switch v0, :sswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 400
    :sswitch_0
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    .line 399
    or-int/lit8 v0, v0, 0x21

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 404
    :sswitch_1
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    .line 403
    or-int/lit16 v0, v0, 0x81

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 409
    :sswitch_2
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    .line 408
    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 397
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x12 -> :sswitch_2
        0xd1 -> :sswitch_0
        0xe1 -> :sswitch_1
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 445
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 449
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 454
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 455
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 459
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 464
    :goto_0
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 444
    return-void

    .line 462
    :cond_0
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private static makeCsvField(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "outSB"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x22

    const/16 v0, 0x2c

    .local v0, "SPLITTER":C
    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    if-ne v1, v4, :cond_0

    const-string v3, "\"\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v1    # "c":C
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v2    # "i":I
    :goto_2
    return-void

    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static makePrivateImeOptions(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "optMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/16 v0, 0x2c

    .local v0, "SPLITTER":C
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-object v7

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    invoke-static {v3, v4}, Landroid/view/inputmethod/EditorInfo;->makeCsvField(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/view/inputmethod/EditorInfo;->makeCsvField(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static parseCsvField(Ljava/lang/String;IILjava/lang/StringBuilder;)I
    .locals 7
    .param p0, "imeOptions"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "outSB"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v6, 0x22

    const/4 v3, 0x0

    .local v3, "inQuote":Z
    const/16 v0, 0x2c

    .local v0, "SPLITTER":C
    move v4, p1

    .local v4, "index":I
    :cond_0
    :goto_0
    if-ge v4, p2, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .local v2, "code":I
    const/high16 v5, 0x10000

    if-ge v2, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :goto_1
    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :sswitch_0
    if-eqz v3, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sub-int v5, v4, p1

    return v5

    :sswitch_1
    if-eqz v3, :cond_3

    const/4 v3, 0x0

    if-ge v4, p2, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .local v1, "c2":I
    if-ne v1, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1    # "c2":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .end local v2    # "code":I
    :cond_4
    sub-int v5, v4, p1

    return v5

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public static splitPrivateImeOptions(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 8
    .param p0, "privateImeOptions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "outMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "outMap cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v7

    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "N":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-static {p0, v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->parseCsvField(Ljava/lang/String;IILjava/lang/StringBuilder;)I

    move-result v4

    add-int/2addr v1, v4

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "splitIndex":I
    if-ltz v3, :cond_2

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v3    # "splitIndex":I
    :cond_3
    const/4 v4, 0x1

    return v4
.end method
