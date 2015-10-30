.class public Lcom/lenovo/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field public mAllText:Z

.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private mCurrentItem:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mFirstPaddingLeft:I

.field mHalfSliderDrawableWidth:I

.field mHasEmbeddedTabs:Z

.field mItemOffset:I

.field private mLeftItem:I

.field mMaxTabWidth:I

.field mMinTabWidth:I

.field private mNeedComputingPadding:Z

.field mPaint:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/RectF;

.field private mSelectedTabIndex:I

.field mSliderDrawableHeight:I

.field mSliderDrawablePaddingBottom:I

.field mSliderDrawableWidth:I

.field mSliderOffset:F

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTabViewStyleRes:I

.field mTextColor:Landroid/content/res/ColorStateList;

.field protected final mVisAnimListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v4, Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v4, p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 99
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    .line 101
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    .line 104
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    .line 845
    iput-boolean v8, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHasEmbeddedTabs:Z

    .line 112
    invoke-virtual {p0, v8}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 114
    invoke-static {p1}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 115
    .local v1, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 117
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x9040013

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 122
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {p0, v8}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setBackgroundColor(I)V

    .line 127
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9080059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I

    .line 130
    const/4 v4, 0x0

    sget-object v5, Lcom/lenovo/internal/R$styleable;->ActionBar:[I

    const v6, 0x10102ce

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabViewStyleRes:I

    .line 133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    iget v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabViewStyleRes:I

    sget-object v5, Lcom/lenovo/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 136
    .local v2, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 137
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x3

    invoke-direct {v4, v8, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 141
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9080058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mItemOffset:I

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9080056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableHeight:I

    .line 143
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9080055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableWidth:I

    .line 144
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9080057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawablePaddingBottom:I

    .line 146
    iget v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHalfSliderDrawableWidth:I

    .line 147
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mItemOffset:I

    iget v6, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mItemOffset:I

    invoke-virtual {v4, v5, v8, v6, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 150
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 151
    .local v3, "density":F
    const/high16 v4, 0x42900000    # 72.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mFirstPaddingLeft:I

    .line 153
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/internal/widget/ScrollingTabContainerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mCurrentItem:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)Landroid/graphics/DrawFilter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Landroid/app/ActionBar$Tab;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 330
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 332
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 335
    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    .line 433
    new-instance v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 434
    .local v0, "tabView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 437
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    :goto_0
    return-object v0

    .line 442
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 444
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 445
    new-instance v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 284
    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 290
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return v4

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x1

    .line 478
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 482
    .local v0, "tabView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 488
    :cond_0
    if-eqz p3, :cond_1

    .line 489
    invoke-virtual {v0, v5}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 491
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 495
    :cond_2
    iput-boolean v5, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    .line 496
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x1

    .line 453
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 458
    .local v0, "tabView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 464
    :cond_0
    if-eqz p2, :cond_1

    .line 465
    invoke-virtual {v0, v5}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 467
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 468
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 472
    :cond_2
    iput-boolean v5, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    .line 473
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 380
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 384
    :cond_0
    new-instance v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 412
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 8
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 356
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 359
    :cond_0
    if-nez p1, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {p0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 363
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 364
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 366
    sget-object v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 367
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 377
    :goto_0
    return-void

    .line 370
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 371
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 373
    sget-object v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 374
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/lenovo/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 418
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 422
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 342
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 346
    .local v0, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/lenovo/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 349
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    .line 350
    iget v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mCurrentItem:I

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 353
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 426
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 427
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 430
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 222
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mLeftItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 224
    .local v6, "childLeft":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 225
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 226
    .local v9, "lLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    .line 227
    .local v10, "lRight":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v5, v0

    .line 228
    .local v5, "centerItem":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mLeftItem:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 229
    .local v7, "childRight":Landroid/view/View;
    move v12, v10

    .line 230
    .local v12, "rRight":I
    if-eqz v7, :cond_0

    .line 231
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v12

    .line 233
    :cond_0
    sub-int v19, v12, v9

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderOffset:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v13, v0

    .line 234
    .local v13, "scrollOffset":F
    const/4 v8, 0x0

    .line 235
    .local v8, "halfSliderOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderOffset:F

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2

    .line 236
    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderOffset:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v11, v19, v20

    .line 237
    .local v11, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHalfSliderDrawableWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v8, v19, v11

    .line 242
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getPaddingBottom()I

    move-result v20

    sub-int v18, v19, v20

    .line 243
    .local v18, "viewHeight":I
    int-to-float v0, v9

    move/from16 v19, v0

    add-float v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHalfSliderDrawableWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    sub-float v15, v19, v8

    .line 244
    .local v15, "sliderItemLeft":F
    int-to-float v0, v10

    move/from16 v19, v0

    sub-float v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHalfSliderDrawableWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    add-float v16, v19, v8

    .line 245
    .local v16, "sliderItemRight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawablePaddingBottom:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move/from16 v0, v19

    int-to-float v14, v0

    .line 246
    .local v14, "sliderItemBottom":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v17, v14, v19

    .line 247
    .local v17, "sliderItemTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    add-float v20, v15, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    add-float v20, v16, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v14, v0, Landroid/graphics/RectF;->bottom:F

    .line 252
    .end local v5    # "centerItem":F
    .end local v7    # "childRight":Landroid/view/View;
    .end local v8    # "halfSliderOffset":F
    .end local v9    # "lLeft":I
    .end local v10    # "lRight":I
    .end local v11    # "offset":F
    .end local v12    # "rRight":I
    .end local v13    # "scrollOffset":F
    .end local v14    # "sliderItemBottom":F
    .end local v15    # "sliderItemLeft":F
    .end local v16    # "sliderItemRight":F
    .end local v17    # "sliderItemTop":F
    .end local v18    # "viewHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mDrawFilter:Landroid/graphics/DrawFilter;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderDrawableWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 254
    return-void

    .line 239
    .restart local v5    # "centerItem":F
    .restart local v7    # "childRight":Landroid/view/View;
    .restart local v8    # "halfSliderOffset":F
    .restart local v9    # "lLeft":I
    .restart local v10    # "lRight":I
    .restart local v12    # "rRight":I
    .restart local v13    # "scrollOffset":F
    :cond_2
    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderOffset:F

    move/from16 v20, v0

    mul-float v11, v19, v20

    .line 240
    .restart local v11    # "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHalfSliderDrawableWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v8, v19, v11

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    .line 531
    .local v0, "tabView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 532
    return-void
.end method

.method public onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 157
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 159
    .local v8, "widthMode":I
    if-ne v8, v12, :cond_4

    move v2, v9

    .line 160
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 162
    iget-object v11, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 163
    .local v1, "childCount":I
    if-le v1, v9, :cond_6

    if-eq v8, v12, :cond_0

    const/high16 v11, -0x80000000

    if-ne v8, v11, :cond_6

    .line 165
    :cond_0
    const/4 v11, 0x2

    if-le v1, v11, :cond_5

    .line 166
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ecccccd    # 0.4f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 170
    :goto_1
    iget v11, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v12, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 177
    :goto_2
    if-nez v2, :cond_7

    iget-boolean v11, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v11, :cond_7

    move v0, v9

    .line 179
    .local v0, "canCollapse":Z
    :goto_3
    if-eqz v0, :cond_9

    .line 182
    iget-object v9, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 184
    iget-object v9, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    if-le v9, v11, :cond_8

    .line 185
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 193
    :goto_4
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v5

    .line 195
    .local v5, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 196
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 198
    .local v3, "newWidth":I
    if-eqz v2, :cond_1

    if-eq v5, v3, :cond_1

    .line 200
    iget v9, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v9}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 204
    :cond_1
    iget-boolean v9, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHasEmbeddedTabs:Z

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    if-eqz v9, :cond_3

    .line 205
    iget-object v9, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v11

    if-le v9, v11, :cond_a

    .line 206
    iget-object v9, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    .line 207
    .local v7, "view":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v7, :cond_2

    .line 208
    invoke-virtual {v7}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v6

    .line 209
    .local v6, "textView":Landroid/view/View;
    invoke-virtual {v7}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v9, v11

    shr-int/lit8 v4, v9, 0x1

    .line 210
    .local v4, "offset":I
    iget-object v9, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mFirstPaddingLeft:I

    sub-int/2addr v11, v4

    invoke-virtual {v9, v11, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 215
    .end local v4    # "offset":I
    .end local v6    # "textView":Landroid/view/View;
    .end local v7    # "view":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    :cond_2
    :goto_5
    iput-boolean v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mNeedComputingPadding:Z

    .line 218
    :cond_3
    return-void

    .end local v0    # "canCollapse":Z
    .end local v1    # "childCount":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v5    # "oldWidth":I
    :cond_4
    move v2, v10

    .line 159
    goto/16 :goto_0

    .line 168
    .restart local v1    # "childCount":I
    .restart local v2    # "lockedExpanded":Z
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    iput v11, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 172
    :cond_6
    const/4 v11, -0x1

    iput v11, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_7
    move v0, v10

    .line 177
    goto :goto_3

    .line 187
    .restart local v0    # "canCollapse":Z
    :cond_8
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 190
    :cond_9
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 213
    .restart local v3    # "newWidth":I
    .restart local v5    # "oldWidth":I
    :cond_a
    iget-object v9, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_5
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 520
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 526
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 510
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 513
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 516
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 1
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 268
    return-void
.end method

.method public setHasEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    .line 847
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mHasEmbeddedTabs:Z

    .line 848
    return-void
.end method

.method public setTabScroller(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 315
    iput p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mLeftItem:I

    .line 316
    iput p2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSliderOffset:F

    .line 317
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->invalidate()V

    .line 318
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 301
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 302
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 303
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 305
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 306
    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 302
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 310
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_3

    if-ltz p1, :cond_3

    .line 311
    iget-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 313
    :cond_3
    return-void
.end method

.method public setTabViewImageColor(II)V
    .locals 2
    .param p1, "tabIndex"    # I
    .param p2, "color"    # I

    .prologue
    .line 839
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    .line 840
    .local v0, "textView":Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setTextViewImageColor(I)V

    .line 843
    :cond_0
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 500
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 503
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 506
    :cond_1
    return-void
.end method
