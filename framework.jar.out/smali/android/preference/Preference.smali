.class public Landroid/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/Preference$BaseSavedState;,
        Landroid/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroid/preference/Preference$OnPreferenceChangeListener;,
        Landroid/preference/Preference$OnPreferenceClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields

.field private mFlymeDividerFilter:Z

.field private mFlymePreferenceView:Landroid/view/View;

.field private mBaseMethodCalled:Z

.field private mCanRecycleLayout:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 339
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, #android:attr@preferenceStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v3, 0x7fffffff

    iput v3, p0, Landroid/preference/Preference;->mOrder:I

    iput-boolean v4, p0, Landroid/preference/Preference;->mEnabled:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mSelectable:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mPersistent:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mDependencyMet:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    iput-boolean v4, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    const v3, #android:layout@preference#t

    iput v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    iput-boolean v4, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    iput-object p1, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 223
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 224
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 226
    :pswitch_0
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mIconResId:I

    goto :goto_1

    .line 230
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 234
    :pswitch_2
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 239
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 243
    :pswitch_4
    iget v3, p0, Landroid/preference/Preference;->mOrder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mOrder:I

    goto :goto_1

    .line 247
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 251
    :pswitch_6
    iget v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    goto :goto_1

    .line 255
    :pswitch_7
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 259
    :pswitch_8
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mEnabled:Z

    goto :goto_1

    .line 263
    :pswitch_9
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mSelectable:Z

    goto :goto_1

    .line 267
    :pswitch_a
    iget-boolean v3, p0, Landroid/preference/Preference;->mPersistent:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mPersistent:Z

    goto :goto_1

    .line 271
    :pswitch_b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    goto :goto_1

    .line 275
    :pswitch_c
    invoke-virtual {p0, v0, v1}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_1

    .line 279
    :pswitch_d
    iget-boolean v3, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    goto :goto_1

    .line 283
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    invoke-virtual {p0}, Landroid/preference/Preference;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.preference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 286
    invoke-virtual {p0}, Landroid/preference/Preference;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_2

    invoke-direct/range {p0 .. p0}, Landroid/preference/Preference;->flymeShouldRecycle()V

    return-void

    :cond_2
    iput-boolean v5, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1385
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1386
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1391
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1388
    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1202
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1204
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1205
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 1206
    invoke-direct {v0, p0}, Landroid/preference/Preference;->registerDependent(Landroid/preference/Preference;)V

    .line 1200
    return-void

    .line 1208
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1209
    const-string/jumbo v3, "\" not found for preference \""

    .line 1208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1209
    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    .line 1208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1209
    const-string/jumbo v3, "\" (title: \""

    .line 1208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1209
    iget-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 1208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1209
    const-string/jumbo v3, "\""

    .line 1208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroid/preference/Preference;

    .prologue
    .line 1250
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1254
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1249
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 594
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 596
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 597
    check-cast v1, Landroid/view/ViewGroup;

    .line 598
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 599
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 598
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 593
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1416
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1419
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1214
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1215
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1216
    .local v0, "oldDependency":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1217
    invoke-direct {v0, p0}, Landroid/preference/Preference;->unregisterDependent(Landroid/preference/Preference;)V

    .line 1213
    .end local v0    # "oldDependency":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroid/preference/Preference;

    .prologue
    .line 1268
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1267
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 942
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method canRecycleLayout()Z
    .locals 1

    .prologue
    .line 1706
    iget-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    return v0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    .line 1119
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1121
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    return v0

    .line 1122
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1124
    const/4 v0, 0x0

    return v0

    .line 1125
    :cond_1
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1126
    const/4 v0, 0x1

    return v0

    .line 1127
    :cond_2
    iget-object v0, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1128
    const/4 v0, -0x1

    return v0

    .line 1131
    :cond_3
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 1118
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1818
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1819
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1820
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1821
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1822
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1823
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1824
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1825
    const-string/jumbo v2, "Derived class did not call super.onRestoreInstanceState()"

    .line 1824
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1817
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1765
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1766
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1767
    invoke-virtual {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1768
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1769
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1770
    const-string/jumbo v2, "Derived class did not call super.onSaveInstanceState()"

    .line 1769
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1772
    :cond_0
    if-eqz v0, :cond_1

    .line 1773
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1764
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1234
    :cond_0
    return-object v1

    .line 1237
    :cond_1
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1087
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1088
    return-object v1

    .line 1091
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 406
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1727
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1728
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1729
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1731
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1732
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1735
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1739
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/preference/Preference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 725
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 839
    iget-wide v0, p0, Landroid/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1698
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1699
    return p1

    .line 1702
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .param p1, "defaultReturnValue"    # F

    .prologue
    .line 1610
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    return p1

    .line 1614
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .param p1, "defaultReturnValue"    # I

    .prologue
    .line 1566
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1567
    return p1

    .line 1570
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    .prologue
    .line 1654
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1655
    return-wide p1

    .line 1658
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1471
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    return-object p1

    .line 1475
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1522
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    return-object p1

    .line 1526
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1060
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1061
    return-object v1

    .line 1064
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 829
    iget-boolean v0, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Landroid/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 492
    if-nez p1, :cond_0

    .line 493
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 495
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 496
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    #iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Landroid/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/preference/Preference;)V

    .line 1148
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1281
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1283
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    if-nez v0, :cond_0

    .line 1284
    return-void

    .line 1287
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1288
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1289
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1280
    :cond_1
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroid/preference/Preference;)V

    .line 1159
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1197
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1194
    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 1181
    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 1183
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/preference/Preference;->mId:J

    .line 1185
    invoke-direct {p0}, Landroid/preference/Preference;->dispatchSetInitialValue()V

    .line 1180
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, #android:id@title#t

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 545
    .local v5, "titleView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 546
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 547
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v6, #android:id@summary#t

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 560
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v6, #android:id@icon#t

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 568
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_5

    .line 569
    iget v6, p0, Landroid/preference/Preference;->mIconResId:I

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 570
    :cond_2
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    .line 571
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v9, p0, Landroid/preference/Preference;->mIconResId:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 573
    :cond_3
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 574
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    :cond_4
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_a

    move v6, v7

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    :cond_5
    const v6, #android:id@icon_frame#t

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, "imageFrame":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 582
    iget-object v6, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_b

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-boolean v6, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    invoke-direct {p0, p1, v6}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    :cond_7

    invoke-virtual/range {p0 .. p1}, Landroid/preference/Preference;->setPreferenceView(Landroid/view/View;)V

    return-void

    .end local v0    # "imageFrame":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "summaryView":Landroid/widget/TextView;
    .restart local v4    # "title":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 563
    .end local v4    # "title":Ljava/lang/CharSequence;
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v3    # "summaryView":Landroid/widget/TextView;
    :cond_9
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .end local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_a
    move v6, v8

    .line 577
    goto :goto_2

    .restart local v0    # "imageFrame":Landroid/view/View;
    :cond_b
    move v7, v8

    .line 582
    goto :goto_3
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 848
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 515
    iget-object v3, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 517
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    invoke-virtual {v1, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "layout":Landroid/view/View;
    const v3, #android:id@widget_frame#t

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1300
    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1301
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 1304
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1306
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1299
    :cond_0
    return-void

    .line 1301
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1027
    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1317
    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1318
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    .line 1321
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1323
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1316
    :cond_0
    return-void

    .line 1318
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1369
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1368
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1842
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1843
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1844
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1841
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1791
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1792
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1412
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 993
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 994
    return-void

    .line 997
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->onClick()V

    .line 999
    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1000
    return-void

    .line 1003
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 1004
    .local v2, "preferenceManager":Landroid/preference/PreferenceManager;
    if-eqz v2, :cond_2

    .line 1005
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1007
    .local v1, "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 1008
    invoke-interface {v1, p1, p0}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    .line 1007
    if-eqz v3, :cond_2

    .line 1009
    return-void

    .line 1013
    .end local v1    # "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_2
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 1014
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1015
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 991
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1672
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1673
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1675
    return v2

    :cond_0
    move v1, v2

    .line 1673
    goto :goto_0

    .line 1678
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1679
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1680
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1681
    return v2

    .line 1683
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return v1
.end method

.method protected persistFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v2, 0x1

    .line 1584
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1585
    const/high16 v1, 0x7fc00000    # NaNf

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedFloat(F)F

    move-result v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 1587
    return v2

    .line 1590
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1591
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1592
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1593
    return v2

    .line 1595
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected persistInt(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x1

    .line 1540
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1541
    not-int v1, p1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1543
    return v2

    .line 1546
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1547
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1548
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1549
    return v2

    .line 1551
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected persistLong(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v4, 0x1

    .line 1628
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1629
    not-long v2, p1

    invoke-virtual {p0, v2, v3}, Landroid/preference/Preference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 1631
    return v4

    .line 1634
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1635
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1636
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1637
    return v4

    .line 1639
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1442
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1444
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1446
    return v2

    .line 1449
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1450
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1451
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1452
    return v2

    .line 1454
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 1492
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1494
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1496
    return v2

    .line 1499
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1500
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1501
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1502
    return v2

    .line 1504
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    .line 882
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1804
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1803
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1751
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1750
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1380
    iput-object p1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1379
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1345
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1348
    iput-object p1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1349
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1343
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 767
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 768
    iput-boolean p1, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 771
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 773
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 766
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 709
    iget v0, p0, Landroid/preference/Preference;->mIconResId:I

    if-eq v0, p1, :cond_0

    .line 710
    iput p1, p0, Landroid/preference/Preference;->mIconResId:I

    .line 711
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 708
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 695
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 696
    :goto_0
    iput-object p1, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 698
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 694
    :cond_0
    return-void

    .line 695
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 367
    iput-object p1, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 366
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 858
    iput-object p1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    .line 860
    iget-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->requireKey()V

    goto :goto_0
.end method

.method public setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 432
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    .line 437
    :cond_0
    iput p1, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 431
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1142
    iput-object p1, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1141
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 952
    iput-object p1, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 951
    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 971
    iput-object p1, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 970
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 618
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 619
    iput p1, p0, Landroid/preference/Preference;->mOrder:I

    .line 622
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 617
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 930
    iput-boolean p1, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 929
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .prologue
    .line 792
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 793
    iput-boolean p1, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 794
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 791
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 819
    iput-boolean p1, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 820
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 818
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 757
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 756
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 744
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 745
    :cond_0
    iput-object p1, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 746
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 743
    :cond_1
    :goto_0
    return-void

    .line 744
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 660
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 661
    iput p1, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 659
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 646
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 647
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 648
    iput-object p1, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 649
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 645
    :cond_1
    :goto_0
    return-void

    .line 646
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 461
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    .line 465
    :cond_0
    iput p1, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    .line 460
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1104
    const/4 v0, 0x0

    return v0

    .line 1107
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    return v0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1334
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1711
    invoke-virtual {p0}, Landroid/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private flymeShouldRecycle()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/preference/Preference;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    :cond_0
    return-void
.end method

.method public filterDivider(Z)V
    .locals 0
    .param p1, "filter"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/preference/Preference;->mFlymeDividerFilter:Z

    return-void
.end method

.method public getPreferenceView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/preference/Preference;->mFlymePreferenceView:Landroid/view/View;

    return-object v0
.end method

.method public isFilterDivider()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/preference/Preference;->mFlymeDividerFilter:Z

    return v0
.end method

.method public final onPreferenceChange()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/preference/Preference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v5

    invoke-interface {v5, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    .local v3, "preferenceManager":Landroid/preference/PreferenceManager;
    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .local v4, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v2

    .local v2, "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2, v4, p0}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .end local v2    # "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    return-void
.end method

.method public setPreferenceView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Landroid/preference/Preference;->mFlymePreferenceView:Landroid/view/View;

    return-void
.end method
