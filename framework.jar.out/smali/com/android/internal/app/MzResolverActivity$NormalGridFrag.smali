.class public Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;
.super Landroid/app/Fragment;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NormalGridFrag"
.end annotation


# static fields
.field private static final GRID_VIEW_COLUMN_SIZE:I = 0x5

.field private static final GRID_VIEW_ROW_SIZE:I = 0x2


# instance fields
.field private mActivity:Lcom/android/internal/app/MzResolverActivity;

.field private mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mAlwaysUseOption:Z

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mGridViewAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mInitialIntents:[Landroid/content/Intent;

.field private mLaunchedFromUid:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOverScrollLayout:Lcom/meizu/widget/ViewPagerOverScrollLayout;

.field private mPageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPointView:Landroid/widget/LinearLayout;

.field private mResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareLayout:Landroid/widget/LinearLayout;

.field private mTargetIntent:Landroid/content/Intent;

.field private mTextTitle:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewPager:Lcom/android/internal/widget/ViewPager;

.field private mWith:I

.field private pointViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Lcom/android/internal/app/MzResolverActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1949
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private buildListfromInitialIntent([Landroid/content/Intent;)V
    .locals 10
    .param p1, "intentList"    # [Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 2289
    if-eqz p1, :cond_3

    .line 2290
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_3

    .line 2291
    aget-object v5, p1, v7

    .line 2292
    .local v5, "ii":Landroid/content/Intent;
    if-nez v5, :cond_0

    .line 2290
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2295
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2296
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v6, :cond_1

    .line 2297
    const-string/jumbo v0, "MzResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No activity found for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2300
    :cond_1
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2301
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2302
    instance-of v0, v5, Landroid/content/pm/LabeledIntent;

    if-eqz v0, :cond_2

    move-object v8, v5

    .line 2303
    check-cast v8, Landroid/content/pm/LabeledIntent;

    .line 2304
    .local v8, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 2305
    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v0

    iput v0, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 2306
    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2307
    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v0

    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 2310
    .end local v8    # "li":Landroid/content/pm/LabeledIntent;
    :cond_2
    iget-object v9, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    new-instance v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2288
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "ii":Landroid/content/Intent;
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "i":I
    :cond_3
    return-void
.end method

.method private handleSameNameItems(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 2352
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2353
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2354
    .local v4, "r0":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 2355
    .local v6, "N":I
    const/4 v2, 0x0

    .line 2356
    .local v2, "start":I
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2357
    .local v5, "r0Label":Ljava/lang/CharSequence;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 2358
    if-nez v5, :cond_0

    .line 2359
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2361
    :cond_0
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2362
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2363
    .local v9, "riLabel":Ljava/lang/CharSequence;
    if-nez v9, :cond_1

    .line 2364
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2366
    :cond_1
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2357
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2370
    :cond_2
    add-int/lit8 v3, v7, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 2371
    move-object v4, v8

    .line 2372
    move-object v5, v9

    .line 2373
    move v2, v7

    goto :goto_1

    .line 2376
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "riLabel":Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v3, v6, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 2351
    .end local v2    # "start":I
    .end local v4    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v5    # "r0Label":Ljava/lang/CharSequence;
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_4
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v1, Lcom/android/internal/app/MzResolverActivity$ViewPagerAdapter;

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPageViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/android/internal/app/MzResolverActivity$ViewPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 2236
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2237
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mOverScrollLayout:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    new-instance v1, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$2;-><init>(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->setViewPagerSelectChangeListener(Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;)V

    .line 2234
    return-void
.end method

.method private initPoint()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0xa

    const/4 v5, -0x2

    .line 2262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->pointViews:Ljava/util/ArrayList;

    .line 2264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2265
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2266
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2267
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_1

    .line 2268
    sget v3, Lcom/flyme/internal/R$drawable;->mz_ic_popup_sharepoint_dark:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2272
    :goto_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2273
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2272
    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2275
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2276
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2277
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2278
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2279
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPointView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2280
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->pointViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2264
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2270
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    sget v3, Lcom/flyme/internal/R$drawable;->mz_ic_popup_sharepoint_light:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 2260
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method private initViewPager()V
    .locals 12

    .prologue
    const/16 v11, 0x1e

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 2137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPageViews:Ljava/util/ArrayList;

    .line 2138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mGridViewAdapters:Ljava/util/ArrayList;

    .line 2139
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/MzResolverActivity;->getInitalIntents()[Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mInitialIntents:[Landroid/content/Intent;

    .line 2140
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/MzResolverActivity;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTargetIntent:Landroid/content/Intent;

    .line 2141
    new-instance v9, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTargetIntent:Landroid/content/Intent;

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2145
    .local v9, "shareIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mInitialIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 2146
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mInitialIntents:[Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->buildListfromInitialIntent([Landroid/content/Intent;)V

    .line 2148
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->-get4(Lcom/android/internal/app/MzResolverActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2149
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->-get4(Lcom/android/internal/app/MzResolverActivity;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mResolveList:Ljava/util/List;

    .line 2154
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mResolveList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->removePriorityItems(Ljava/util/List;)V

    .line 2155
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mResolveList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->resortTheResolveList(Ljava/util/List;)V

    .line 2156
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mResolveList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->removeNotExportItems(Ljava/util/List;)V

    .line 2157
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mResolveList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->handleSameNameItems(Ljava/util/List;)V

    .line 2159
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v2, v1, 0xa

    .line 2160
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    if-lez v1, :cond_3

    move v1, v10

    .line 2159
    :goto_2
    add-int/2addr v1, v2

    if-ge v7, v1, :cond_8

    .line 2162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2163
    .local v3, "viewPageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;>;"
    mul-int/lit8 v1, v7, 0x5

    mul-int/lit8 v8, v1, 0x2

    .local v8, "j":I
    :goto_3
    mul-int/lit8 v1, v7, 0x5

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    .line 2164
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2163
    if-le v1, v2, :cond_4

    .line 2164
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2163
    :goto_4
    if-ge v8, v1, :cond_5

    .line 2166
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2165
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2151
    .end local v3    # "viewPageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPm:Landroid/content/pm/PackageManager;

    .line 2152
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->-get3(Lcom/android/internal/app/MzResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    .line 2151
    :goto_5
    const/high16 v5, 0x10000

    or-int/2addr v1, v5

    invoke-virtual {v2, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mResolveList:Ljava/util/List;

    goto :goto_0

    :cond_2
    move v1, v4

    .line 2152
    goto :goto_5

    .restart local v7    # "i":I
    :cond_3
    move v1, v4

    .line 2160
    goto :goto_2

    .line 2165
    .restart local v3    # "viewPageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;>;"
    .restart local v8    # "j":I
    :cond_4
    mul-int/lit8 v1, v7, 0x5

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    goto :goto_4

    .line 2168
    :cond_5
    new-instance v6, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 2169
    .local v6, "gridView":Landroid/widget/GridView;
    new-instance v0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTargetIntent:Landroid/content/Intent;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;IZ)V

    .line 2171
    .local v0, "adapter":Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v10, :cond_7

    .line 2172
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 2174
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2176
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 2178
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->-get8(Lcom/android/internal/app/MzResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2179
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->-get6(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 2180
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1, v4}, Lcom/android/internal/app/MzResolverActivity;->-set1(Lcom/android/internal/app/MzResolverActivity;Z)Z

    .line 2182
    :cond_6
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    .line 2183
    return-void

    .line 2175
    :catchall_0
    move-exception v1

    .line 2176
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 2175
    throw v1

    .line 2185
    :cond_7
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2186
    new-instance v1, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$1;-><init>(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;)V

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2214
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mGridViewAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2215
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2216
    invoke-virtual {v6, v4}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 2217
    invoke-virtual {v6, v11, v4, v11, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 2218
    const/16 v1, 0xf

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 2219
    invoke-virtual {v6, v10}, Landroid/widget/GridView;->setGravity(I)V

    .line 2220
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 2221
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2222
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2223
    const/4 v1, 0x3

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setLayoutDirection(I)V

    .line 2224
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2160
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 2226
    .end local v0    # "adapter":Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;
    .end local v3    # "viewPageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;>;"
    .end local v6    # "gridView":Landroid/widget/GridView;
    .end local v8    # "j":I
    :cond_8
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    if-eqz v1, :cond_9

    .line 2227
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v5, "string"

    const-string/jumbo v10, "noApplications"

    invoke-static {v5, v10}, Lcom/meizu/util/InternalResUtils;->getInternalResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2228
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    .line 2229
    return-void

    .line 2136
    :cond_9
    return-void
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2404
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 2405
    .local v12, "num":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 2407
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2402
    :cond_0
    return-void

    .line 2409
    :cond_1
    const/4 v14, 0x0

    .line 2410
    .local v14, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 2411
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_2

    .line 2412
    const/4 v14, 0x1

    .line 2414
    :cond_2
    if-nez v14, :cond_5

    .line 2417
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 2418
    .local v7, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2419
    add-int/lit8 v8, p2, 0x1

    .local v8, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_4

    .line 2420
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 2421
    .local v10, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2422
    .local v9, "jApp":Ljava/lang/CharSequence;
    if-eqz v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2423
    :cond_3
    const/4 v14, 0x1

    .line 2430
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 2432
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    :cond_5
    move/from16 v11, p2

    .local v11, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 2433
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 2434
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7

    .line 2436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    .line 2437
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    .line 2436
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2432
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2426
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v11    # "k":I
    .restart local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8    # "j":I
    .restart local v9    # "jApp":Ljava/lang/CharSequence;
    .restart local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2419
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2440
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "k":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    .line 2441
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    .line 2440
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private removeNotExportItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2384
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 2385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2386
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2388
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mLaunchedFromUid:I

    .line 2389
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 2387
    invoke-static {v3, v4, v5, v6}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    .line 2390
    .local v1, "granted":I
    if-eqz v1, :cond_0

    .line 2392
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2385
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2383
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "granted":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private removePriorityItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 2319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2320
    .local v0, "N":I
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2321
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 2322
    .local v2, "r0":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2323
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 2324
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_1

    .line 2325
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2329
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2330
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2322
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2318
    .end local v1    # "i":I
    .end local v2    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method private resortTheResolveList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2341
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2342
    new-instance v0, Lcom/meizu/util/AppDisplayNameComparator;

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/meizu/util/AppDisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 2343
    .local v0, "rComparator":Lcom/meizu/util/AppDisplayNameComparator;
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2344
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v1, p1}, Lcom/android/internal/app/MzResolverActivity;->-wrap2(Lcom/android/internal/app/MzResolverActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mResolveList:Ljava/util/List;

    .line 2340
    .end local v0    # "rComparator":Lcom/meizu/util/AppDisplayNameComparator;
    :cond_0
    return-void
.end method

.method private setShareLayoutSize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2097
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2098
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mWith:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2099
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_4

    .line 2100
    iget-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z

    if-eqz v1, :cond_2

    .line 2101
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mViewPager:Lcom/android/internal/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 2102
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/android/internal/widget/ViewPager;->setPadding(IIII)V

    .line 2104
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 2105
    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2133
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2096
    return-void

    .line 2107
    :cond_1
    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mHeight:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 2110
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_3

    .line 2111
    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mHeight:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xb

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 2113
    :cond_3
    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mHeight:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 2117
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z

    if-eqz v1, :cond_5

    .line 2118
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mViewPager:Lcom/android/internal/widget/ViewPager;

    if-eqz v1, :cond_5

    .line 2119
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/android/internal/widget/ViewPager;->setPadding(IIII)V

    .line 2122
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_6

    .line 2123
    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mHeight:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 2125
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z

    if-eqz v1, :cond_7

    .line 2126
    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 2128
    :cond_7
    iget v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public drawPoint(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->pointViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2250
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->pointViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2251
    if-ne p1, v0, :cond_1

    .line 2252
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->pointViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/flyme/internal/R$drawable;->mz_ic_popup_sharepoint_dark:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2249
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2254
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->pointViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/flyme/internal/R$drawable;->mz_ic_popup_sharepoint_light:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 2248
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1980
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1981
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    .line 1982
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1983
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mWith:I

    .line 1984
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mHeight:I

    .line 1985
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPm:Landroid/content/pm/PackageManager;

    .line 1986
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mList:Ljava/util/List;

    .line 1987
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1978
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1995
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/app/MzResolverActivity;

    if-eqz v2, :cond_1

    .line 1998
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/MzResolverActivity;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    .line 1999
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/MzResolverActivity;->-get5(Lcom/android/internal/app/MzResolverActivity;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mLaunchedFromUid:I

    .line 2000
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/MzResolverActivity;->-get10(Lcom/android/internal/app/MzResolverActivity;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTitle:Ljava/lang/CharSequence;

    .line 2001
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mActivity:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/MzResolverActivity;->-get3(Lcom/android/internal/app/MzResolverActivity;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z

    .line 2002
    sget v2, Lcom/flyme/internal/R$layout;->mz_resolver_fragment1:I

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2003
    .local v1, "v":Landroid/view/View;
    sget v2, Lcom/flyme/internal/R$id;->share_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mShareLayout:Landroid/widget/LinearLayout;

    .line 2004
    sget v2, Lcom/flyme/internal/R$id;->mz_grid_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTextTitle:Landroid/widget/TextView;

    .line 2005
    sget v2, Lcom/flyme/internal/R$id;->point_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPointView:Landroid/widget/LinearLayout;

    .line 2006
    sget v2, Lcom/flyme/internal/R$id;->share_viewpager:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 2007
    sget v2, Lcom/flyme/internal/R$id;->viewpager_overscroll_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/ViewPagerOverScrollLayout;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mOverScrollLayout:Lcom/meizu/widget/ViewPagerOverScrollLayout;

    .line 2008
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mPointView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 2009
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 2010
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2011
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTextTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2016
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z

    if-eqz v2, :cond_0

    .line 2017
    sget v2, Lcom/flyme/internal/R$id;->mz_check_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2018
    .local v0, "checkBarLayout":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 2019
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2021
    sget v2, Lcom/flyme/internal/R$id;->mz_alwaysUse:I

    .line 2020
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysCheck:Landroid/widget/CheckBox;

    .line 2022
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$string;->alwaysUse:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 2027
    .end local v0    # "checkBarLayout":Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->initViewPager()V

    .line 2028
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->initData()V

    .line 2029
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->initPoint()V

    .line 2030
    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->setShareLayoutSize()V

    .line 2031
    return-object v1

    .line 1996
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-object v3

    .line 2013
    .restart local v1    # "v":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2014
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2024
    .restart local v0    # "checkBarLayout":Landroid/view/ViewGroup;
    :cond_3
    iput-boolean v5, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->mAlwaysUseOption:Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2087
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2086
    return-void
.end method
