.class public Llenovo/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/view/ViewPager$ViewPositionComparator;,
        Llenovo/view/ViewPager$LayoutParams;,
        Llenovo/view/ViewPager$PagerObserver;,
        Llenovo/view/ViewPager$MyAccessibilityDelegate;,
        Llenovo/view/ViewPager$SavedState;,
        Llenovo/view/ViewPager$Decor;,
        Llenovo/view/ViewPager$OnAdapterChangeListener;,
        Llenovo/view/ViewPager$PageTransformer;,
        Llenovo/view/ViewPager$SimpleOnPageChangeListener;,
        Llenovo/view/ViewPager$OnPageChangeListener;,
        Llenovo/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Llenovo/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x320

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Llenovo/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Llenovo/view/PagerAdapter;

.field private mAdapterChangeListener:Llenovo/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mCanScroller:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llenovo/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mLockViewPager:Z

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field mNewPopulate:I

.field private mObserver:Llenovo/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field mOldPopulate:I

.field private mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageMargin:I

.field private mPageTransformer:Llenovo/view/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private mSpecRect:Landroid/graphics/Rect;

.field private mSpecTab:I

.field private mSplitActionBarHeight:I

.field private final mTempItem:Llenovo/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mTouchSlopAdjust:I

.field private mUpdateMenuWhenScroller:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Llenovo/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 122
    new-instance v0, Llenovo/view/ViewPager$1;

    invoke-direct {v0}, Llenovo/view/ViewPager$1;-><init>()V

    sput-object v0, Llenovo/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 129
    new-instance v0, Llenovo/view/ViewPager$2;

    invoke-direct {v0}, Llenovo/view/ViewPager$2;-><init>()V

    sput-object v0, Llenovo/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 235
    new-instance v0, Llenovo/view/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Llenovo/view/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Llenovo/view/ViewPager;->sPositionComparator:Llenovo/view/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 356
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Llenovo/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Llenovo/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Llenovo/view/ViewPager;->mTempItem:Llenovo/view/ViewPager$ItemInfo;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 143
    iput v2, p0, Llenovo/view/ViewPager;->mRestoredCurItem:I

    .line 144
    iput-object v4, p0, Llenovo/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 145
    iput-object v4, p0, Llenovo/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 157
    const v0, -0x800001

    iput v0, p0, Llenovo/view/ViewPager;->mFirstOffset:F

    .line 158
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Llenovo/view/ViewPager;->mLastOffset:F

    .line 167
    iput v3, p0, Llenovo/view/ViewPager;->mOffscreenPageLimit:I

    .line 186
    iput v2, p0, Llenovo/view/ViewPager;->mActivePointerId:I

    .line 205
    iput v2, p0, Llenovo/view/ViewPager;->mTouchSlopAdjust:I

    .line 218
    iput-boolean v3, p0, Llenovo/view/ViewPager;->mFirstLayout:Z

    .line 219
    iput-boolean v1, p0, Llenovo/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 253
    new-instance v0, Llenovo/view/ViewPager$3;

    invoke-direct {v0, p0}, Llenovo/view/ViewPager$3;-><init>(Llenovo/view/ViewPager;)V

    iput-object v0, p0, Llenovo/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 260
    iput v1, p0, Llenovo/view/ViewPager;->mScrollState:I

    .line 3060
    iput-boolean v1, p0, Llenovo/view/ViewPager;->mLockViewPager:Z

    .line 3061
    iput-boolean v3, p0, Llenovo/view/ViewPager;->mCanScroller:Z

    .line 3063
    iput-boolean v1, p0, Llenovo/view/ViewPager;->mUpdateMenuWhenScroller:Z

    .line 357
    invoke-virtual {p0}, Llenovo/view/ViewPager;->initViewPager()V

    .line 358
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 361
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Llenovo/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Llenovo/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Llenovo/view/ViewPager;->mTempItem:Llenovo/view/ViewPager$ItemInfo;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 143
    iput v2, p0, Llenovo/view/ViewPager;->mRestoredCurItem:I

    .line 144
    iput-object v4, p0, Llenovo/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 145
    iput-object v4, p0, Llenovo/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 157
    const v0, -0x800001

    iput v0, p0, Llenovo/view/ViewPager;->mFirstOffset:F

    .line 158
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Llenovo/view/ViewPager;->mLastOffset:F

    .line 167
    iput v3, p0, Llenovo/view/ViewPager;->mOffscreenPageLimit:I

    .line 186
    iput v2, p0, Llenovo/view/ViewPager;->mActivePointerId:I

    .line 205
    iput v2, p0, Llenovo/view/ViewPager;->mTouchSlopAdjust:I

    .line 218
    iput-boolean v3, p0, Llenovo/view/ViewPager;->mFirstLayout:Z

    .line 219
    iput-boolean v1, p0, Llenovo/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 253
    new-instance v0, Llenovo/view/ViewPager$3;

    invoke-direct {v0, p0}, Llenovo/view/ViewPager$3;-><init>(Llenovo/view/ViewPager;)V

    iput-object v0, p0, Llenovo/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 260
    iput v1, p0, Llenovo/view/ViewPager;->mScrollState:I

    .line 3060
    iput-boolean v1, p0, Llenovo/view/ViewPager;->mLockViewPager:Z

    .line 3061
    iput-boolean v3, p0, Llenovo/view/ViewPager;->mCanScroller:Z

    .line 3063
    iput-boolean v1, p0, Llenovo/view/ViewPager;->mUpdateMenuWhenScroller:Z

    .line 362
    invoke-virtual {p0}, Llenovo/view/ViewPager;->initViewPager()V

    .line 363
    return-void
.end method

.method static synthetic access$000(Llenovo/view/ViewPager;I)V
    .locals 0
    .param p0, "x0"    # Llenovo/view/ViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Llenovo/view/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Llenovo/view/ViewPager;)Llenovo/view/PagerAdapter;
    .locals 1
    .param p0, "x0"    # Llenovo/view/ViewPager;

    .prologue
    .line 90
    iget-object v0, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Llenovo/view/ViewPager;)I
    .locals 1
    .param p0, "x0"    # Llenovo/view/ViewPager;

    .prologue
    .line 90
    iget v0, p0, Llenovo/view/ViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 90
    sget-object v0, Llenovo/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Llenovo/view/ViewPager$ItemInfo;ILlenovo/view/ViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Llenovo/view/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Llenovo/view/ViewPager$ItemInfo;

    .prologue
    .line 1165
    iget-object v12, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v12}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v1

    .line 1166
    .local v1, "N":I
    invoke-direct {p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v11

    .line 1167
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Llenovo/view/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1169
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1170
    move-object/from16 v0, p3

    iget v8, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    .line 1172
    .local v8, "oldCurPosition":I
    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 1173
    const/4 v5, 0x0

    .line 1174
    .local v5, "itemIndex":I
    const/4 v3, 0x0

    .line 1175
    .local v3, "ii":Llenovo/view/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Llenovo/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1176
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1177
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1178
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    check-cast v3, Llenovo/view/ViewPager$ItemInfo;

    .line 1179
    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1180
    add-int/lit8 v5, v5, 0x1

    .line 1181
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    check-cast v3, Llenovo/view/ViewPager$ItemInfo;

    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    goto :goto_2

    .line 1167
    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1183
    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1186
    iget-object v12, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v12, v9}, Llenovo/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1187
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1189
    :cond_2
    iput v7, v3, Llenovo/view/ViewPager$ItemInfo;->offset:F

    .line 1190
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1177
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1192
    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1193
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1194
    .restart local v5    # "itemIndex":I
    const/4 v3, 0x0

    .line 1195
    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Llenovo/view/ViewPager$ItemInfo;->offset:F

    .line 1196
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1197
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1198
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    check-cast v3, Llenovo/view/ViewPager$ItemInfo;

    .line 1199
    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1200
    add-int/lit8 v5, v5, -0x1

    .line 1201
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    check-cast v3, Llenovo/view/ViewPager$ItemInfo;

    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    goto :goto_5

    .line 1203
    :cond_4
    :goto_6
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1206
    iget-object v12, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v12, v9}, Llenovo/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1207
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1209
    :cond_5
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1210
    iput v7, v3, Llenovo/view/ViewPager$ItemInfo;->offset:F

    .line 1197
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1216
    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1217
    .local v4, "itemCount":I
    iget v7, p1, Llenovo/view/ViewPager$ItemInfo;->offset:F

    .line 1218
    .restart local v7    # "offset":F
    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1219
    .restart local v9    # "pos":I
    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Llenovo/view/ViewPager;->mFirstOffset:F

    .line 1220
    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Llenovo/view/ViewPager;->mLastOffset:F

    .line 1223
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 1224
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llenovo/view/ViewPager$ItemInfo;

    .line 1225
    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 1226
    iget-object v12, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Llenovo/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .line 1219
    .end local v2    # "i":I
    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1220
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1228
    .restart local v2    # "i":I
    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1229
    iput v7, v3, Llenovo/view/ViewPager$ItemInfo;->offset:F

    .line 1230
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Llenovo/view/ViewPager;->mFirstOffset:F

    .line 1223
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1232
    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1233
    iget v12, p1, Llenovo/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1235
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1236
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llenovo/view/ViewPager$ItemInfo;

    .line 1237
    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1238
    iget-object v12, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Llenovo/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1240
    :cond_c
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1241
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Llenovo/view/ViewPager;->mLastOffset:F

    .line 1243
    :cond_d
    iput v7, v3, Llenovo/view/ViewPager$ItemInfo;->offset:F

    .line 1244
    iget v12, v3, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1235
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1247
    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Llenovo/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1248
    return-void
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1836
    iget v8, p0, Llenovo/view/ViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1837
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1839
    invoke-direct {p0, v7}, Llenovo/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1840
    iget-object v8, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1841
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1842
    .local v3, "oldX":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1843
    .local v4, "oldY":I
    iget-object v8, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1844
    .local v5, "x":I
    iget-object v8, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1845
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1846
    :cond_0
    invoke-virtual {p0, v5, v6}, Llenovo/view/ViewPager;->scrollTo(II)V

    .line 1849
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Llenovo/view/ViewPager;->mPopulatePending:Z

    .line 1850
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1851
    iget-object v8, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llenovo/view/ViewPager$ItemInfo;

    .line 1852
    .local v1, "ii":Llenovo/view/ViewPager$ItemInfo;
    iget-boolean v8, v1, Llenovo/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    .line 1853
    const/4 v2, 0x1

    .line 1854
    iput-boolean v7, v1, Llenovo/view/ViewPager$ItemInfo;->scrolling:Z

    .line 1850
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v7

    .line 1836
    goto :goto_0

    .line 1857
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 1858
    if-eqz p1, :cond_6

    .line 1859
    iget-object v7, p0, Llenovo/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Llenovo/view/ViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1864
    :cond_5
    :goto_2
    return-void

    .line 1861
    :cond_6
    iget-object v7, p0, Llenovo/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    .line 2277
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Llenovo/view/ViewPager;->mFlingDistance:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Llenovo/view/ViewPager;->mMinimumVelocity:I

    if-le v4, v5, :cond_2

    .line 2278
    if-lez p3, :cond_1

    move v2, p1

    .line 2284
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2285
    iget-object v4, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llenovo/view/ViewPager$ItemInfo;

    .line 2286
    .local v0, "firstItem":Llenovo/view/ViewPager$ItemInfo;
    iget-object v4, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llenovo/view/ViewPager$ItemInfo;

    .line 2289
    .local v1, "lastItem":Llenovo/view/ViewPager$ItemInfo;
    iget v4, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    iget v5, v1, Llenovo/view/ViewPager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2292
    .end local v0    # "firstItem":Llenovo/view/ViewPager$ItemInfo;
    .end local v1    # "lastItem":Llenovo/view/ViewPager$ItemInfo;
    :cond_0
    return v2

    .line 2278
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2280
    :cond_2
    iget v4, p0, Llenovo/view/ViewPager;->mCurItem:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd    # 0.4f

    .line 2281
    .local v3, "truncator":F
    :goto_1
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2280
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1871
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1872
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1873
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1875
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1872
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1873
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1877
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2524
    iput-boolean v0, p0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    .line 2525
    iput-boolean v0, p0, Llenovo/view/ViewPager;->mIsUnableToDrag:Z

    .line 2527
    iget-object v0, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2529
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2531
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2704
    if-nez p1, :cond_0

    .line 2705
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2707
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2708
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2726
    :cond_1
    return-object p1

    .line 2711
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2712
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2713
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2714
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2716
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2717
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2718
    check-cast v0, Landroid/view/ViewGroup;

    .line 2719
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2720
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2721
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2722
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2724
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2725
    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 494
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Llenovo/view/ViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 2234
    invoke-direct {p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v12

    .line 2235
    .local v12, "width":I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2236
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Llenovo/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2237
    .local v8, "marginOffset":F
    :cond_0
    const/4 v5, -0x1

    .line 2238
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2239
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2240
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2242
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2243
    .local v3, "lastItem":Llenovo/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v13, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 2244
    iget-object v13, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llenovo/view/ViewPager$ItemInfo;

    .line 2246
    .local v2, "ii":Llenovo/view/ViewPager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Llenovo/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 2248
    iget-object v2, p0, Llenovo/view/ViewPager;->mTempItem:Llenovo/view/ViewPager$ItemInfo;

    .line 2249
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Llenovo/view/ViewPager$ItemInfo;->offset:F

    .line 2250
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Llenovo/view/ViewPager$ItemInfo;->position:I

    .line 2251
    iget-object v13, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    iget v14, v2, Llenovo/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Llenovo/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2252
    add-int/lit8 v1, v1, -0x1

    .line 2254
    :cond_1
    iget v9, v2, Llenovo/view/ViewPager$ItemInfo;->offset:F

    .line 2256
    .local v9, "offset":F
    move v7, v9

    .line 2257
    .local v7, "leftBound":F
    iget v13, v2, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2258
    .local v10, "rightBound":F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 2259
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 2272
    .end local v2    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v3    # "lastItem":Llenovo/view/ViewPager$ItemInfo;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_4
    return-object v3

    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v8    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_5
    move v11, v8

    .line 2235
    goto :goto_0

    .line 2265
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .restart local v3    # "lastItem":Llenovo/view/ViewPager$ItemInfo;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    .restart local v11    # "scrollOffset":F
    :cond_6
    const/4 v0, 0x0

    .line 2266
    iget v5, v2, Llenovo/view/ViewPager$ItemInfo;->position:I

    .line 2267
    move v4, v9

    .line 2268
    iget v6, v2, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2269
    move-object v3, v2

    .line 2243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v2, 0x0

    .line 1867
    iget v0, p0, Llenovo/view/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Llenovo/view/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2510
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2511
    .local v1, "pointerId":I
    iget v3, p0, Llenovo/view/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2514
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2515
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 2516
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Llenovo/view/ViewPager;->mActivePointerId:I

    .line 2517
    iget-object v3, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2518
    iget-object v3, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2521
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2514
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "xpos"    # I

    .prologue
    const/4 v7, 0x0

    .line 1703
    iget-object v8, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1704
    iput-boolean v7, p0, Llenovo/view/ViewPager;->mCalledSuper:Z

    .line 1705
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Llenovo/view/ViewPager;->onPageScrolled(IFI)V

    .line 1706
    iget-boolean v8, p0, Llenovo/view/ViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1707
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1712
    :cond_0
    invoke-direct {p0}, Llenovo/view/ViewPager;->infoForCurrentScrollPosition()Llenovo/view/ViewPager$ItemInfo;

    move-result-object v1

    .line 1713
    .local v1, "ii":Llenovo/view/ViewPager$ItemInfo;
    invoke-direct {p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v5

    .line 1714
    .local v5, "width":I
    iget v8, p0, Llenovo/view/ViewPager;->mPageMargin:I

    add-int v6, v5, v8

    .line 1715
    .local v6, "widthWithMargin":I
    iget v8, p0, Llenovo/view/ViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1716
    .local v2, "marginOffset":F
    iget v0, v1, Llenovo/view/ViewPager$ItemInfo;->position:I

    .line 1717
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Llenovo/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v1, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    .line 1719
    .local v4, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1721
    .local v3, "offsetPixels":I
    iput-boolean v7, p0, Llenovo/view/ViewPager;->mCalledSuper:Z

    .line 1722
    invoke-virtual {p0, v0, v4, v3}, Llenovo/view/ViewPager;->onPageScrolled(IFI)V

    .line 1723
    iget-boolean v7, p0, Llenovo/view/ViewPager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1724
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1727
    :cond_1
    const/4 v7, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "width":I
    .end local v6    # "widthWithMargin":I
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .param p1, "x"    # F

    .prologue
    .line 2183
    const/4 v7, 0x0

    .line 2185
    .local v7, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v14, v0, Llenovo/view/ViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    .line 2186
    .local v2, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 2188
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 2189
    .local v8, "oldScrollX":F
    add-float v12, v8, v2

    .line 2190
    .local v12, "scrollX":F
    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v13

    .line 2192
    .local v13, "width":I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Llenovo/view/ViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    .line 2193
    .local v6, "leftBound":F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Llenovo/view/ViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    .line 2194
    .local v11, "rightBound":F
    const/4 v5, 0x1

    .line 2195
    .local v5, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2197
    .local v10, "rightAbsolute":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llenovo/view/ViewPager$ItemInfo;

    .line 2198
    .local v3, "firstItem":Llenovo/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llenovo/view/ViewPager$ItemInfo;

    .line 2199
    .local v4, "lastItem":Llenovo/view/ViewPager$ItemInfo;
    iget v14, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 2200
    const/4 v5, 0x0

    .line 2201
    iget v14, v3, Llenovo/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 2203
    :cond_0
    iget v14, v4, Llenovo/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v15}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2204
    const/4 v10, 0x0

    .line 2205
    iget v14, v4, Llenovo/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 2208
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 2209
    if-eqz v5, :cond_2

    .line 2210
    sub-float v9, v6, v12

    .line 2211
    .local v9, "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Llenovo/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Llenovo/view/ViewPager;->supportOnPull(Landroid/widget/EdgeEffect;F)Z

    move-result v7

    .line 2213
    .end local v9    # "over":F
    :cond_2
    move v12, v6

    .line 2222
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Llenovo/view/ViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 2223
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Llenovo/view/ViewPager;->scrollTo(II)V

    .line 2224
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Llenovo/view/ViewPager;->pageScrolled(I)Z

    .line 2226
    return v7

    .line 2214
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 2215
    if-eqz v10, :cond_5

    .line 2216
    sub-float v9, v12, v11

    .line 2217
    .restart local v9    # "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Llenovo/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Llenovo/view/ViewPager;->supportOnPull(Landroid/widget/EdgeEffect;F)Z

    move-result v7

    .line 2219
    .end local v9    # "over":F
    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private pointInRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 3042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 3043
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 3044
    .local v1, "y":F
    const-string v3, "ViewPager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pointInRect x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    if-eqz p2, :cond_0

    iget v3, p0, Llenovo/view/ViewPager;->mCurItem:I

    iget v4, p0, Llenovo/view/ViewPager;->mSpecTab:I

    if-ne v3, v4, :cond_0

    .line 3046
    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    .line 3048
    :cond_0
    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1540
    if-lez p2, :cond_1

    iget-object v0, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1541
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1542
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1544
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v13

    .line 1545
    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1546
    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1548
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Llenovo/view/ViewPager;->scrollTo(II)V

    .line 1549
    iget-object v0, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1551
    iget-object v0, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1552
    .local v5, "newDuration":I
    iget v0, p0, Llenovo/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->infoForPosition(I)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v11

    .line 1553
    .local v11, "targetInfo":Llenovo/view/ViewPager$ItemInfo;
    iget-object v0, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Llenovo/view/ViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1566
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Llenovo/view/ViewPager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    :cond_0
    :goto_0
    return-void

    .line 1557
    :cond_1
    iget v0, p0, Llenovo/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->infoForPosition(I)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 1558
    .local v6, "ii":Llenovo/view/ViewPager$ItemInfo;
    if-eqz v6, :cond_2

    iget v0, v6, Llenovo/view/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Llenovo/view/ViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1559
    .local v9, "scrollOffset":F
    :goto_1
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1561
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    .line 1562
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llenovo/view/ViewPager;->completeScroll(Z)V

    .line 1563
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Llenovo/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1558
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 471
    invoke-virtual {p0, v1}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/view/ViewPager$LayoutParams;

    .line 473
    .local v2, "lp":Llenovo/view/ViewPager$LayoutParams;
    iget-boolean v3, v2, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 474
    invoke-virtual {p0, v1}, Llenovo/view/ViewPager;->removeViewAt(I)V

    .line 475
    add-int/lit8 v1, v1, -0x1

    .line 470
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Llenovo/view/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2176
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2177
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2178
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2180
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 583
    invoke-virtual {p0, p1}, Llenovo/view/ViewPager;->infoForPosition(I)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 584
    .local v0, "curInfo":Llenovo/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 585
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 586
    invoke-direct {p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 587
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Llenovo/view/ViewPager;->mFirstOffset:F

    iget v5, v0, Llenovo/view/ViewPager$ItemInfo;->offset:F

    iget v6, p0, Llenovo/view/ViewPager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 590
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_4

    .line 591
    if-eqz p4, :cond_3

    .line 592
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 593
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 595
    :cond_1
    iget-object v3, p0, Llenovo/view/ViewPager;->mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 596
    iget-object v3, p0, Llenovo/view/ViewPager;->mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 598
    :cond_2
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_3

    .line 599
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 603
    :cond_3
    invoke-virtual {p0, v1, v7, p3}, Llenovo/view/ViewPager;->smoothScrollTo(III)V

    .line 621
    :goto_0
    return-void

    .line 606
    :cond_4
    if-eqz p4, :cond_7

    .line 607
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 608
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 610
    :cond_5
    iget-object v3, p0, Llenovo/view/ViewPager;->mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_6

    .line 611
    iget-object v3, p0, Llenovo/view/ViewPager;->mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 613
    :cond_6
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_7

    .line 614
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 617
    :cond_7
    invoke-direct {p0, v7}, Llenovo/view/ViewPager;->completeScroll(Z)V

    .line 618
    invoke-virtual {p0, v1, v7}, Llenovo/view/ViewPager;->scrollTo(II)V

    .line 619
    invoke-direct {p0, v1}, Llenovo/view/ViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 401
    iget v0, p0, Llenovo/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iput p1, p0, Llenovo/view/ViewPager;->mScrollState:I

    .line 406
    iget-object v0, p0, Llenovo/view/ViewPager;->mPageTransformer:Llenovo/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 408
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Llenovo/view/ViewPager;->enableLayers(Z)V

    .line 410
    :cond_2
    iget-object v0, p0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 413
    :cond_3
    iget-object v0, p0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 408
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2534
    iget-boolean v0, p0, Llenovo/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2535
    iput-boolean p1, p0, Llenovo/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 2546
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1149
    iget v3, p0, Llenovo/view/ViewPager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    .line 1150
    iget-object v3, p0, Llenovo/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Llenovo/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1155
    :goto_0
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1156
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1157
    invoke-virtual {p0, v2}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1158
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Llenovo/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1153
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Llenovo/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1160
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Llenovo/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Llenovo/view/ViewPager;->sPositionComparator:Llenovo/view/ViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1162
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2750
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2752
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2754
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2755
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2756
    invoke-virtual {p0, v3}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2757
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2758
    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->infoForChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2759
    .local v4, "ii":Llenovo/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Llenovo/view/ViewPager$ItemInfo;->position:I

    iget v6, p0, Llenovo/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2760
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2755
    .end local v4    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2770
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2776
    :cond_2
    invoke-virtual {p0}, Llenovo/view/ViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2787
    :cond_3
    :goto_1
    return-void

    .line 2779
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Llenovo/view/ViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Llenovo/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2783
    :cond_5
    if-eqz p1, :cond_3

    .line 2784
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Llenovo/view/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 873
    new-instance v0, Llenovo/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Llenovo/view/ViewPager$ItemInfo;-><init>()V

    .line 874
    .local v0, "ii":Llenovo/view/ViewPager$ItemInfo;
    iput p1, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    .line 875
    iget-object v1, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Llenovo/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Llenovo/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 876
    iget-object v1, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v1, p1}, Llenovo/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    .line 877
    if-ltz p2, :cond_0

    iget-object v1, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 878
    :cond_0
    iget-object v1, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    :goto_0
    return-object v0

    .line 880
    :cond_1
    iget-object v1, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2797
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2798
    invoke-virtual {p0, v1}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2799
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2800
    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->infoForChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 2801
    .local v2, "ii":Llenovo/view/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Llenovo/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Llenovo/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2802
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2797
    .end local v2    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2806
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1340
    invoke-virtual {p0, p3}, Llenovo/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1341
    invoke-virtual {p0, p3}, Llenovo/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1343
    check-cast v0, Llenovo/view/ViewPager$LayoutParams;

    .line 1344
    .local v0, "lp":Llenovo/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Llenovo/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1345
    iget-boolean v1, p0, Llenovo/view/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1346
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1347
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1349
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Llenovo/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1350
    invoke-virtual {p0, p1, p2, p3}, Llenovo/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1362
    :goto_0
    return-void

    .line 1352
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2638
    invoke-virtual {p0}, Llenovo/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2639
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2640
    const/4 v1, 0x0

    .line 2664
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2666
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2668
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2669
    if-ne p1, v11, :cond_8

    .line 2672
    iget-object v8, p0, Llenovo/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Llenovo/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2673
    .local v5, "nextLeft":I
    iget-object v8, p0, Llenovo/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Llenovo/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2674
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2675
    invoke-virtual {p0}, Llenovo/view/ViewPager;->pageLeft()Z

    move-result v2

    .line 2697
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2698
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Llenovo/view/ViewPager;->playSoundEffect(I)V

    .line 2700
    :cond_2
    return v2

    .line 2641
    .end local v2    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2642
    const/4 v3, 0x0

    .line 2643
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 2645
    if-ne v6, p0, :cond_5

    .line 2646
    const/4 v3, 0x1

    .line 2650
    :cond_4
    if-nez v3, :cond_0

    .line 2652
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2653
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2654
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 2656
    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2655
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 2644
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2658
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2677
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_1

    .line 2679
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2682
    iget-object v8, p0, Llenovo/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Llenovo/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2683
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Llenovo/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Llenovo/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2684
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2685
    invoke-virtual {p0}, Llenovo/view/ViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1

    .line 2687
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_1

    .line 2690
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2692
    :cond_b
    invoke-virtual {p0}, Llenovo/view/ViewPager;->pageLeft()Z

    move-result v2

    goto/16 :goto_1

    .line 2693
    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2695
    :cond_d
    invoke-virtual {p0}, Llenovo/view/ViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2399
    iget-boolean v2, p0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2415
    :goto_0
    return v4

    .line 2402
    :cond_0
    iput-boolean v9, p0, Llenovo/view/ViewPager;->mFakeDragging:Z

    .line 2403
    invoke-direct {p0, v9}, Llenovo/view/ViewPager;->setScrollState(I)V

    .line 2404
    iput v5, p0, Llenovo/view/ViewPager;->mLastMotionX:F

    iput v5, p0, Llenovo/view/ViewPager;->mInitialMotionX:F

    .line 2405
    iget-object v2, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2406
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2410
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2411
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2412
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2413
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2414
    iput-wide v0, p0, Llenovo/view/ViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 2415
    goto :goto_0

    .line 2408
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2576
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2577
    check-cast v7, Landroid/view/ViewGroup;

    .line 2578
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2579
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2580
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2582
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2585
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2586
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Llenovo/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2590
    const/4 v0, 0x1

    .line 2595
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 2582
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2595
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2549
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    if-nez v4, :cond_1

    .line 2560
    :cond_0
    :goto_0
    return v3

    .line 2553
    :cond_1
    invoke-direct {p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v1

    .line 2554
    .local v1, "width":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v0

    .line 2555
    .local v0, "scrollX":I
    if-gez p1, :cond_3

    .line 2556
    int-to-float v4, v1

    iget v5, p0, Llenovo/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 2557
    :cond_3
    if-lez p1, :cond_0

    .line 2558
    int-to-float v4, v1

    iget v5, p0, Llenovo/view/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public canViewpagerScroller(Z)V
    .locals 0
    .param p1, "scroller"    # Z

    .prologue
    .line 3068
    iput-boolean p1, p0, Llenovo/view/ViewPager;->mCanScroller:Z

    .line 3069
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2876
    instance-of v0, p1, Llenovo/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1679
    iget-object v4, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1680
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1681
    .local v0, "oldX":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1682
    .local v1, "oldY":I
    iget-object v4, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1683
    .local v2, "x":I
    iget-object v4, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1685
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1686
    :cond_0
    invoke-virtual {p0, v2, v3}, Llenovo/view/ViewPager;->scrollTo(II)V

    .line 1687
    invoke-direct {p0, v2}, Llenovo/view/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1688
    iget-object v4, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1689
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Llenovo/view/ViewPager;->scrollTo(II)V

    .line 1694
    :cond_1
    invoke-virtual {p0}, Llenovo/view/ViewPager;->postInvalidateOnAnimation()V

    .line 1700
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1699
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Llenovo/view/ViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 888
    iget-object v12, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v12}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v0

    .line 889
    .local v0, "adapterCount":I
    iput v0, p0, Llenovo/view/ViewPager;->mExpectedAdapterCount:I

    .line 890
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Llenovo/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_1

    move v7, v10

    .line 892
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Llenovo/view/ViewPager;->mCurItem:I

    .line 894
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 895
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 896
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llenovo/view/ViewPager$ItemInfo;

    .line 897
    .local v4, "ii":Llenovo/view/ViewPager$ItemInfo;
    iget-object v12, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    iget-object v13, v4, Llenovo/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Llenovo/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 899
    .local v9, "newPos":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_2

    .line 895
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    move v7, v11

    .line 890
    goto :goto_0

    .line 903
    .restart local v3    # "i":I
    .restart local v4    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v7    # "needPopulate":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_2
    const/4 v12, -0x2

    if-ne v9, v12, :cond_4

    .line 904
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 905
    add-int/lit8 v3, v3, -0x1

    .line 907
    if-nez v5, :cond_3

    .line 908
    iget-object v12, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v12, p0}, Llenovo/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 909
    const/4 v5, 0x1

    .line 912
    :cond_3
    iget-object v12, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    iget v13, v4, Llenovo/view/ViewPager$ItemInfo;->position:I

    iget-object v14, v4, Llenovo/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Llenovo/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 913
    const/4 v7, 0x1

    .line 915
    iget v12, p0, Llenovo/view/ViewPager;->mCurItem:I

    iget v13, v4, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    .line 917
    iget v12, p0, Llenovo/view/ViewPager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 918
    const/4 v7, 0x1

    goto :goto_2

    .line 923
    :cond_4
    iget v12, v4, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-eq v12, v9, :cond_0

    .line 924
    iget v12, v4, Llenovo/view/ViewPager$ItemInfo;->position:I

    iget v13, p0, Llenovo/view/ViewPager;->mCurItem:I

    if-ne v12, v13, :cond_5

    .line 926
    move v8, v9

    .line 929
    :cond_5
    iput v9, v4, Llenovo/view/ViewPager$ItemInfo;->position:I

    .line 930
    const/4 v7, 0x1

    goto :goto_2

    .line 934
    .end local v4    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_6
    if-eqz v5, :cond_7

    .line 935
    iget-object v12, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v12, p0}, Llenovo/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 938
    :cond_7
    iget-object v12, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Llenovo/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 940
    if-eqz v7, :cond_a

    .line 942
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v2

    .line 943
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    .line 944
    invoke-virtual {p0, v3}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 945
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Llenovo/view/ViewPager$LayoutParams;

    .line 946
    .local v6, "lp":Llenovo/view/ViewPager$LayoutParams;
    iget-boolean v12, v6, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_8

    .line 947
    const/4 v12, 0x0

    iput v12, v6, Llenovo/view/ViewPager$LayoutParams;->widthFactor:F

    .line 943
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 951
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Llenovo/view/ViewPager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v8, v11, v10}, Llenovo/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 952
    invoke-virtual {p0}, Llenovo/view/ViewPager;->requestLayout()V

    .line 954
    .end local v2    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2601
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Llenovo/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2844
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2845
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2861
    :goto_0
    return v4

    .line 2849
    :cond_0
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2850
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2851
    invoke-virtual {p0, v2}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2852
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2853
    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->infoForChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 2854
    .local v3, "ii":Llenovo/view/ViewPager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Llenovo/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2856
    const/4 v4, 0x1

    goto :goto_0

    .line 2850
    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2861
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 810
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 811
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 812
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2297
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2298
    const/4 v1, 0x0

    .line 2300
    .local v1, "needsInvalidate":Z
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getOverScrollMode()I

    move-result v2

    .line 2301
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v5}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2304
    :cond_0
    iget-object v5, p0, Llenovo/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2305
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2306
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2307
    .local v0, "height":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getWidth()I

    move-result v4

    .line 2309
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2310
    neg-int v5, v0

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Llenovo/view/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2311
    iget-object v5, p0, Llenovo/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2312
    iget-object v5, p0, Llenovo/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2313
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2315
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Llenovo/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2317
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getWidth()I

    move-result v4

    .line 2318
    .restart local v4    # "width":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2320
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2321
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Llenovo/view/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2322
    iget-object v5, p0, Llenovo/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2323
    iget-object v5, p0, Llenovo/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2324
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2331
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2333
    invoke-virtual {p0}, Llenovo/view/ViewPager;->postInvalidateOnAnimation()V

    .line 2335
    :cond_3
    return-void

    .line 2327
    :cond_4
    iget-object v5, p0, Llenovo/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 2328
    iget-object v5, p0, Llenovo/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 798
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 799
    iget-object v0, p0, Llenovo/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 800
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 803
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2425
    iget-boolean v9, p0, Llenovo/view/ViewPager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2426
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2429
    :cond_0
    iget-object v7, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2430
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Llenovo/view/ViewPager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2431
    iget v9, p0, Llenovo/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v7, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v2, v9

    .line 2432
    .local v2, "initialVelocity":I
    iput-boolean v11, p0, Llenovo/view/ViewPager;->mPopulatePending:Z

    .line 2433
    invoke-direct {p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v8

    .line 2434
    .local v8, "width":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v5

    .line 2435
    .local v5, "scrollX":I
    invoke-direct {p0}, Llenovo/view/ViewPager;->infoForCurrentScrollPosition()Llenovo/view/ViewPager$ItemInfo;

    move-result-object v1

    .line 2436
    .local v1, "ii":Llenovo/view/ViewPager$ItemInfo;
    iget v0, v1, Llenovo/view/ViewPager$ItemInfo;->position:I

    .line 2437
    .local v0, "currentPage":I
    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Llenovo/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    .line 2438
    .local v4, "pageOffset":F
    iget v9, p0, Llenovo/view/ViewPager;->mLastMotionX:F

    iget v10, p0, Llenovo/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 2439
    .local v6, "totalDelta":I
    invoke-direct {p0, v0, v4, v2, v6}, Llenovo/view/ViewPager;->determineTargetPage(IFII)I

    move-result v3

    .line 2441
    .local v3, "nextPage":I
    invoke-virtual {p0, v3, v11, v11, v2}, Llenovo/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2442
    invoke-direct {p0}, Llenovo/view/ViewPager;->endDrag()V

    .line 2444
    const/4 v9, 0x0

    iput-boolean v9, p0, Llenovo/view/ViewPager;->mFakeDragging:Z

    .line 2445
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 2613
    const/4 v0, 0x0

    .line 2614
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2615
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2634
    :cond_0
    :goto_0
    return v0

    .line 2617
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Llenovo/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2618
    goto :goto_0

    .line 2620
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Llenovo/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2621
    goto :goto_0

    .line 2625
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2626
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Llenovo/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2627
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2628
    invoke-virtual {p0, v2}, Llenovo/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2615
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    .prologue
    .line 2455
    move-object/from16 v0, p0

    iget-boolean v2, v0, Llenovo/view/ViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 2456
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2459
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Llenovo/view/ViewPager;->mLastMotionX:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 2461
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v14, v2

    .line 2462
    .local v14, "oldScrollX":F
    sub-float v16, v14, p1

    .line 2463
    .local v16, "scrollX":F
    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v17

    .line 2465
    .local v17, "width":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Llenovo/view/ViewPager;->mFirstOffset:F

    mul-float v13, v2, v3

    .line 2466
    .local v13, "leftBound":F
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Llenovo/view/ViewPager;->mLastOffset:F

    mul-float v15, v2, v3

    .line 2468
    .local v15, "rightBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Llenovo/view/ViewPager$ItemInfo;

    .line 2469
    .local v11, "firstItem":Llenovo/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Llenovo/view/ViewPager$ItemInfo;

    .line 2470
    .local v12, "lastItem":Llenovo/view/ViewPager$ItemInfo;
    iget v2, v11, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-eqz v2, :cond_1

    .line 2471
    iget v2, v11, Llenovo/view/ViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v13, v2, v3

    .line 2473
    :cond_1
    iget v2, v12, Llenovo/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v3}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2474
    iget v2, v12, Llenovo/view/ViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v15, v2, v3

    .line 2477
    :cond_2
    cmpg-float v2, v16, v13

    if-gez v2, :cond_4

    .line 2478
    move/from16 v16, v13

    .line 2483
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Llenovo/view/ViewPager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 2484
    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Llenovo/view/ViewPager;->scrollTo(II)V

    .line 2485
    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Llenovo/view/ViewPager;->pageScrolled(I)Z

    .line 2488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2489
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Llenovo/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Llenovo/view/ViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 2491
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2492
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 2493
    return-void

    .line 2479
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v2, v16, v15

    if-lez v2, :cond_3

    .line 2480
    move/from16 v16, v15

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2866
    new-instance v0, Llenovo/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Llenovo/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2881
    new-instance v0, Llenovo/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Llenovo/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Llenovo/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2871
    invoke-virtual {p0}, Llenovo/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Llenovo/view/PagerAdapter;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 686
    iget v2, p0, Llenovo/view/ViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 687
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Llenovo/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/view/ViewPager$LayoutParams;

    iget v1, v2, Llenovo/view/ViewPager$LayoutParams;->childIndex:I

    .line 688
    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .line 686
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Llenovo/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Llenovo/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Llenovo/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1385
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1386
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1387
    :cond_0
    const/4 v1, 0x0

    .line 1391
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1389
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1391
    :cond_2
    invoke-virtual {p0, p1}, Llenovo/view/ViewPager;->infoForChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1375
    iget-object v2, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llenovo/view/ViewPager$ItemInfo;

    .line 1376
    .local v1, "ii":Llenovo/view/ViewPager$ItemInfo;
    iget-object v2, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    iget-object v3, v1, Llenovo/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Llenovo/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1380
    .end local v1    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1374
    .restart local v1    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1380
    .end local v1    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Llenovo/view/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1396
    iget-object v2, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llenovo/view/ViewPager$ItemInfo;

    .line 1397
    .local v1, "ii":Llenovo/view/ViewPager$ItemInfo;
    iget v2, v1, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1401
    .end local v1    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1395
    .restart local v1    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1401
    .end local v1    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 366
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Llenovo/view/ViewPager;->mOrientation:I

    .line 367
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x908006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Llenovo/view/ViewPager;->mSplitActionBarHeight:I

    .line 368
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Llenovo/view/ViewPager;->setWillNotDraw(Z)V

    .line 369
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Llenovo/view/ViewPager;->setDescendantFocusability(I)V

    .line 370
    invoke-virtual {p0, v5}, Llenovo/view/ViewPager;->setFocusable(Z)V

    .line 371
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 372
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Llenovo/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 373
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 374
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 376
    .local v2, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Llenovo/view/ViewPager;->mTouchSlop:I

    .line 377
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Llenovo/view/ViewPager;->mMinimumVelocity:I

    .line 378
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Llenovo/view/ViewPager;->mMaximumVelocity:I

    .line 379
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Llenovo/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 380
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Llenovo/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 382
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Llenovo/view/ViewPager;->mFlingDistance:I

    .line 383
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Llenovo/view/ViewPager;->mCloseEnough:I

    .line 384
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Llenovo/view/ViewPager;->mDefaultGutterSize:I

    .line 386
    new-instance v3, Llenovo/view/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Llenovo/view/ViewPager$MyAccessibilityDelegate;-><init>(Llenovo/view/ViewPager;)V

    invoke-virtual {p0, v3}, Llenovo/view/ViewPager;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 388
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 390
    invoke-virtual {p0, v5}, Llenovo/view/ViewPager;->setImportantForAccessibility(I)V

    .line 392
    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2505
    iget-boolean v0, p0, Llenovo/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method public isUpdateMenuWhenScroller()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3074
    iget-boolean v1, p0, Llenovo/view/ViewPager;->mUpdateMenuWhenScroller:Z

    if-eqz v1, :cond_0

    iget v1, p0, Llenovo/view/ViewPager;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1406
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1407
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/view/ViewPager;->mFirstLayout:Z

    .line 1409
    iget-object v0, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v0, p0}, Llenovo/view/PagerAdapter;->hideActionMenu(Landroid/view/ViewGroup;)V

    .line 1413
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3079
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3080
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Llenovo/view/ViewPager;->mOrientation:I

    .line 3081
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Llenovo/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 397
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 398
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2339
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2342
    move-object/from16 v0, p0

    iget v13, v0, Llenovo/view/ViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    if-eqz v13, :cond_2

    .line 2343
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v10

    .line 2344
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getWidth()I

    move-result v11

    .line 2346
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Llenovo/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2347
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2348
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llenovo/view/ViewPager$ItemInfo;

    .line 2349
    .local v3, "ii":Llenovo/view/ViewPager$ItemInfo;
    iget v8, v3, Llenovo/view/ViewPager$ItemInfo;->offset:F

    .line 2350
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2351
    .local v4, "itemCount":I
    iget v2, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    .line 2352
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Llenovo/view/ViewPager$ItemInfo;

    iget v6, v13, Llenovo/view/ViewPager$ItemInfo;->position:I

    .line 2353
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2354
    :goto_1
    iget v13, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2355
    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    check-cast v3, Llenovo/view/ViewPager$ItemInfo;

    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    goto :goto_1

    .line 2359
    :cond_0
    iget v13, v3, Llenovo/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2360
    iget v13, v3, Llenovo/view/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2361
    .local v1, "drawAt":F
    iget v13, v3, Llenovo/view/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2368
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Llenovo/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2369
    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Llenovo/view/ViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2371
    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2374
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2379
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    return-void

    .line 2363
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v13, v9}, Llenovo/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2364
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2365
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2353
    .end local v12    # "widthFactor":F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1881
    iget-boolean v0, p0, Llenovo/view/ViewPager;->mLockViewPager:Z

    if-eqz v0, :cond_0

    iget v0, p0, Llenovo/view/ViewPager;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1882
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2036
    :goto_0
    return v0

    .line 1890
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1893
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    .line 1896
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    .line 1897
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/view/ViewPager;->mIsUnableToDrag:Z

    .line 1898
    const/4 v0, -0x1

    iput v0, p0, Llenovo/view/ViewPager;->mActivePointerId:I

    .line 1899
    iget-object v0, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 1900
    iget-object v0, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1901
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1903
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1908
    :cond_3
    if-eqz v6, :cond_5

    .line 1909
    iget-boolean v0, p0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 1911
    const/4 v0, 0x1

    goto :goto_0

    .line 1913
    :cond_4
    iget-boolean v0, p0, Llenovo/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_5

    .line 1915
    const/4 v0, 0x0

    goto :goto_0

    .line 1919
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 2027
    :cond_6
    :goto_1
    iget-object v0, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_7

    .line 2028
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2030
    :cond_7
    iget-object v0, p0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2036
    iget-boolean v0, p0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1930
    :sswitch_0
    iget v7, p0, Llenovo/view/ViewPager;->mActivePointerId:I

    .line 1931
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    .line 1936
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1938
    .local v9, "pointerIndex":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_8

    .line 1939
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent ACTION_MOVE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1943
    :cond_8
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1944
    .local v10, "x":F
    iget v0, p0, Llenovo/view/ViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1945
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1946
    .local v11, "xDiff":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 1947
    .local v12, "y":F
    iget v0, p0, Llenovo/view/ViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1950
    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_9

    iget v0, p0, Llenovo/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Llenovo/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Llenovo/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1953
    iput v10, p0, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 1954
    iput v12, p0, Llenovo/view/ViewPager;->mLastMotionY:F

    .line 1955
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/view/ViewPager;->mIsUnableToDrag:Z

    .line 1956
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1960
    :cond_9
    iget v0, p0, Llenovo/view/ViewPager;->mTouchSlopAdjust:I

    int-to-float v0, v0

    cmpg-float v0, v11, v0

    if-gez v0, :cond_a

    iget v0, p0, Llenovo/view/ViewPager;->mTouchSlopAdjust:I

    int-to-float v0, v0

    cmpg-float v0, v13, v0

    if-gez v0, :cond_a

    iget-object v0, p0, Llenovo/view/ViewPager;->mSpecRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Llenovo/view/ViewPager;->pointInRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1962
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xDiff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yDiff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTouchSlopAdj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llenovo/view/ViewPager;->mTouchSlopAdjust:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1965
    :cond_a
    iget v0, p0, Llenovo/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_d

    .line 1967
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    .line 1968
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Llenovo/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1969
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Llenovo/view/ViewPager;->setScrollState(I)V

    .line 1970
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_c

    iget v0, p0, Llenovo/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Llenovo/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 1972
    iput v12, p0, Llenovo/view/ViewPager;->mLastMotionY:F

    .line 1973
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Llenovo/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1982
    :cond_b
    :goto_3
    iget-boolean v0, p0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 1984
    invoke-direct {p0, v10}, Llenovo/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1985
    invoke-virtual {p0}, Llenovo/view/ViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 1970
    :cond_c
    iget v0, p0, Llenovo/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Llenovo/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1974
    :cond_d
    iget v0, p0, Llenovo/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_b

    .line 1980
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1996
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Llenovo/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 1997
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Llenovo/view/ViewPager;->mInitialMotionY:F

    iput v0, p0, Llenovo/view/ViewPager;->mLastMotionY:F

    .line 1998
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Llenovo/view/ViewPager;->mActivePointerId:I

    .line 1999
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/view/ViewPager;->mIsUnableToDrag:Z

    .line 2001
    iget-object v0, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2002
    iget v0, p0, Llenovo/view/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Llenovo/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_e

    .line 2005
    iget-object v0, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2006
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/view/ViewPager;->mPopulatePending:Z

    .line 2007
    invoke-virtual {p0}, Llenovo/view/ViewPager;->populate()V

    .line 2008
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    .line 2009
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Llenovo/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2010
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Llenovo/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 2012
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llenovo/view/ViewPager;->completeScroll(Z)V

    .line 2013
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 2023
    :sswitch_2
    invoke-direct {p0, p1}, Llenovo/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1919
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1570
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1571
    .local v9, "count":I
    sub-int v24, p4, p2

    .line 1572
    .local v24, "width":I
    sub-int v11, p5, p3

    .line 1573
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingLeft()I

    move-result v19

    .line 1574
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingTop()I

    move-result v21

    .line 1575
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingRight()I

    move-result v20

    .line 1576
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingBottom()I

    move-result v18

    .line 1577
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v22

    .line 1579
    .local v22, "scrollX":I
    const/4 v10, 0x0

    .line 1583
    .local v10, "decorCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_1

    .line 1584
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1585
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1586
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Llenovo/view/ViewPager$LayoutParams;

    .line 1587
    .local v17, "lp":Llenovo/view/ViewPager$LayoutParams;
    const/4 v6, 0x0

    .line 1588
    .local v6, "childLeft":I
    const/4 v7, 0x0

    .line 1589
    .local v7, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1590
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1591
    .local v13, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1592
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    .line 1594
    :pswitch_0
    move/from16 v6, v19

    .line 1609
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1611
    move/from16 v7, v21

    .line 1626
    :goto_2
    add-int v6, v6, v22

    .line 1627
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1630
    add-int/lit8 v10, v10, 0x1

    .line 1583
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1597
    .restart local v6    # "childLeft":I
    .restart local v7    # "childTop":I
    .restart local v13    # "hgrav":I
    .restart local v17    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    .line 1598
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1599
    goto :goto_1

    .line 1601
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1603
    goto :goto_1

    .line 1605
    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    .line 1606
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_1

    .line 1614
    :sswitch_0
    move/from16 v7, v21

    .line 1615
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1616
    goto :goto_2

    .line 1618
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1620
    goto :goto_2

    .line 1622
    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1623
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_2

    .line 1635
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_1
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    .line 1637
    .local v8, "childWidth":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_4

    .line 1638
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1639
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1640
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Llenovo/view/ViewPager$LayoutParams;

    .line 1642
    .restart local v17    # "lp":Llenovo/view/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/view/ViewPager;->infoForChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v15

    .local v15, "ii":Llenovo/view/ViewPager$ItemInfo;
    if-eqz v15, :cond_3

    .line 1643
    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Llenovo/view/ViewPager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1644
    .local v16, "loff":I
    add-int v6, v19, v16

    .line 1645
    .restart local v6    # "childLeft":I
    move/from16 v7, v21

    .line 1646
    .restart local v7    # "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Llenovo/view/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1649
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Llenovo/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1650
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1653
    .local v25, "widthSpec":I
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1656
    .local v12, "heightSpec":I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1661
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1637
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v15    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v16    # "loff":I
    .end local v17    # "lp":Llenovo/view/ViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1667
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mTopPageBounds:I

    .line 1668
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mBottomPageBounds:I

    .line 1669
    move-object/from16 v0, p0

    iput v10, v0, Llenovo/view/ViewPager;->mDecorChildCount:I

    .line 1671
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/view/ViewPager;->mFirstLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1672
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Llenovo/view/ViewPager;->scrollToItem(IZIZ)V

    .line 1674
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llenovo/view/ViewPager;->mFirstLayout:Z

    .line 1675
    return-void

    .line 1592
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1609
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1422
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Llenovo/view/ViewPager;->getDefaultSize(II)I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Llenovo/view/ViewPager;->getDefaultSize(II)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Llenovo/view/ViewPager;->setMeasuredDimension(II)V

    .line 1425
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getMeasuredWidth()I

    move-result v17

    .line 1426
    .local v17, "measuredWidth":I
    div-int/lit8 v16, v17, 0xa

    .line 1427
    .local v16, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mDefaultGutterSize:I

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mGutterSize:I

    .line 1430
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingLeft()I

    move-result v24

    sub-int v24, v17, v24

    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingRight()I

    move-result v25

    sub-int v5, v24, v25

    .line 1431
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getMeasuredHeight()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingTop()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingBottom()I

    move-result v25

    sub-int v4, v24, v25

    .line 1438
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v19

    .line 1439
    .local v19, "size":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 1440
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1441
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 1442
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Llenovo/view/ViewPager$LayoutParams;

    .line 1443
    .local v15, "lp":Llenovo/view/ViewPager$LayoutParams;
    if-eqz v15, :cond_5

    iget-boolean v0, v15, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1444
    iget v0, v15, Llenovo/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v24, v0

    and-int/lit8 v12, v24, 0x7

    .line 1445
    .local v12, "hgrav":I
    iget v0, v15, Llenovo/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v24, v0

    and-int/lit8 v20, v24, 0x70

    .line 1446
    .local v20, "vgrav":I
    const/high16 v21, -0x80000000

    .line 1447
    .local v21, "widthMode":I
    const/high16 v9, -0x80000000

    .line 1448
    .local v9, "heightMode":I
    const/16 v24, 0x30

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/16 v24, 0x50

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1449
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v24, 0x3

    move/from16 v0, v24

    if-eq v12, v0, :cond_1

    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v12, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1451
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1452
    const/high16 v21, 0x40000000    # 2.0f

    .line 1457
    :cond_2
    :goto_3
    move/from16 v22, v5

    .line 1458
    .local v22, "widthSize":I
    move v10, v4

    .line 1459
    .local v10, "heightSize":I
    iget v0, v15, Llenovo/view/ViewPager$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 1460
    const/high16 v21, 0x40000000    # 2.0f

    .line 1461
    iget v0, v15, Llenovo/view/ViewPager$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 1462
    iget v0, v15, Llenovo/view/ViewPager$LayoutParams;->width:I

    move/from16 v22, v0

    .line 1465
    :cond_3
    iget v0, v15, Llenovo/view/ViewPager$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 1466
    const/high16 v9, 0x40000000    # 2.0f

    .line 1467
    iget v0, v15, Llenovo/view/ViewPager$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 1468
    iget v10, v15, Llenovo/view/ViewPager$LayoutParams;->height:I

    .line 1471
    :cond_4
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1472
    .local v23, "widthSpec":I
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1473
    .local v11, "heightSpec":I
    move/from16 v0, v23

    invoke-virtual {v3, v0, v11}, Landroid/view/View;->measure(II)V

    .line 1475
    if-eqz v7, :cond_9

    .line 1476
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v4, v4, v24

    .line 1439
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v9    # "heightMode":I
    .end local v10    # "heightSize":I
    .end local v11    # "heightSpec":I
    .end local v12    # "hgrav":I
    .end local v15    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .end local v20    # "vgrav":I
    .end local v21    # "widthMode":I
    .end local v22    # "widthSize":I
    .end local v23    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1448
    .restart local v9    # "heightMode":I
    .restart local v12    # "hgrav":I
    .restart local v15    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .restart local v20    # "vgrav":I
    .restart local v21    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1449
    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1453
    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1454
    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_3

    .line 1477
    .restart local v10    # "heightSize":I
    .restart local v11    # "heightSpec":I
    .restart local v22    # "widthSize":I
    .restart local v23    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1478
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    sub-int v5, v5, v24

    goto :goto_4

    .line 1484
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v9    # "heightMode":I
    .end local v10    # "heightSize":I
    .end local v11    # "heightSpec":I
    .end local v12    # "hgrav":I
    .end local v15    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .end local v20    # "vgrav":I
    .end local v21    # "widthMode":I
    .end local v22    # "widthSize":I
    .end local v23    # "widthSpec":I
    :cond_a
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1485
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1488
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llenovo/view/ViewPager;->mInLayout:Z

    .line 1489
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->populate()V

    .line 1490
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llenovo/view/ViewPager;->mInLayout:Z

    .line 1493
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v19

    .line 1494
    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v13, v0, :cond_11

    .line 1495
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1502
    .restart local v3    # "child":Landroid/view/View;
    const/4 v8, 0x0

    .line 1503
    .local v8, "hasOptionMenu":Z
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mOrientation:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/view/ViewPager;->mUpdateMenuWhenScroller:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 1504
    const v24, 0x90c0018

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    .line 1505
    .local v14, "index_tag":Ljava/lang/Object;
    const v24, 0x90c0019

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    .line 1506
    .local v18, "option_tag":Ljava/lang/Object;
    if-nez v18, :cond_f

    if-nez v14, :cond_e

    const/4 v8, 0x0

    .line 1511
    .end local v14    # "index_tag":Ljava/lang/Object;
    .end local v18    # "option_tag":Ljava/lang/Object;
    :cond_b
    :goto_6
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 1515
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Llenovo/view/ViewPager$LayoutParams;

    .line 1516
    .restart local v15    # "lp":Llenovo/view/ViewPager$LayoutParams;
    if-eqz v15, :cond_c

    iget-boolean v0, v15, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v24, v0

    if-nez v24, :cond_d

    .line 1517
    :cond_c
    int-to-float v0, v5

    move/from16 v24, v0

    iget v0, v15, Llenovo/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1519
    .restart local v23    # "widthSpec":I
    if-nez v8, :cond_10

    .line 1520
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mChildHeightMeasureSpec:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1494
    .end local v15    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .end local v23    # "widthSpec":I
    :cond_d
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1506
    .restart local v14    # "index_tag":Ljava/lang/Object;
    .restart local v18    # "option_tag":Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v24, v0

    check-cast v14, Ljava/lang/Integer;

    .end local v14    # "index_tag":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Llenovo/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v8

    goto :goto_6

    .restart local v14    # "index_tag":Ljava/lang/Object;
    :cond_f
    check-cast v18, Ljava/lang/Boolean;

    .end local v18    # "option_tag":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_6

    .line 1522
    .end local v14    # "index_tag":Ljava/lang/Object;
    .restart local v15    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .restart local v23    # "widthSpec":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mChildHeightMeasureSpec:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mSplitActionBarHeight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 1527
    .end local v3    # "child":Landroid/view/View;
    .end local v8    # "hasOptionMenu":Z
    .end local v15    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .end local v23    # "widthSpec":I
    :cond_11
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 23
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mDecorChildCount:I

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 1745
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v17

    .line 1746
    .local v17, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingLeft()I

    move-result v15

    .line 1747
    .local v15, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingRight()I

    move-result v16

    .line 1748
    .local v16, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getWidth()I

    move-result v19

    .line 1749
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1750
    .local v6, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v6, :cond_2

    .line 1751
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1752
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Llenovo/view/ViewPager$LayoutParams;

    .line 1753
    .local v14, "lp":Llenovo/view/ViewPager$LayoutParams;
    iget-boolean v0, v14, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 1750
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1754
    :cond_1
    iget v0, v14, Llenovo/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v20, v0

    and-int/lit8 v11, v20, 0x7

    .line 1755
    .local v11, "hgrav":I
    const/4 v7, 0x0

    .line 1756
    .local v7, "childLeft":I
    packed-switch v11, :pswitch_data_0

    .line 1758
    :pswitch_0
    move v7, v15

    .line 1773
    :goto_2
    add-int v7, v7, v17

    .line 1775
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v8, v7, v20

    .line 1776
    .local v8, "childOffset":I
    if-eqz v8, :cond_0

    .line 1777
    invoke-virtual {v5, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1761
    .end local v8    # "childOffset":I
    :pswitch_1
    move v7, v15

    .line 1762
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v20

    add-int v15, v15, v20

    .line 1763
    goto :goto_2

    .line 1765
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v20, v19, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1767
    goto :goto_2

    .line 1769
    :pswitch_3
    sub-int v20, v19, v16

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v7, v20, v21

    .line 1770
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v16, v16, v20

    goto :goto_2

    .line 1782
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v7    # "childLeft":I
    .end local v11    # "hgrav":I
    .end local v12    # "i":I
    .end local v14    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .end local v15    # "paddingLeft":I
    .end local v16    # "paddingRight":I
    .end local v17    # "scrollX":I
    .end local v19    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1785
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/view/ViewPager;->mUpdateMenuWhenScroller:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1786
    const/high16 v20, 0x3f000000    # 0.5f

    cmpl-float v20, p2, v20

    if-lez v20, :cond_8

    .line 1787
    add-int/lit8 v20, p1, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mNewPopulate:I

    .line 1791
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mOldPopulate:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mNewPopulate:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mNewPopulate:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 1792
    const/4 v10, 0x0

    .line 1793
    .local v10, "curItem":Llenovo/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v4

    .line 1795
    .local v4, "N":I
    const/4 v9, 0x0

    .local v9, "curIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_3

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Llenovo/view/ViewPager$ItemInfo;

    .line 1797
    .local v13, "ii":Llenovo/view/ViewPager$ItemInfo;
    iget v0, v13, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mNewPopulate:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    .line 1798
    iget v0, v13, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mNewPopulate:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object v10, v13

    .line 1802
    .end local v13    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_3
    if-nez v10, :cond_4

    if-lez v4, :cond_4

    .line 1803
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Llenovo/view/ViewPager;->addNewItem(II)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v10

    .line 1805
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mNewPopulate:I

    move/from16 v22, v0

    if-eqz v10, :cond_a

    iget-object v0, v10, Llenovo/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v20, v0

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Llenovo/view/PagerAdapter;->setMenuPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1806
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mNewPopulate:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mOldPopulate:I

    .line 1811
    .end local v4    # "N":I
    .end local v9    # "curIndex":I
    .end local v10    # "curItem":Llenovo/view/ViewPager$ItemInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1814
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1818
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mPageTransformer:Llenovo/view/ViewPager$PageTransformer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1819
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v17

    .line 1820
    .restart local v17    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1821
    .restart local v6    # "childCount":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    if-ge v12, v6, :cond_c

    .line 1822
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1823
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Llenovo/view/ViewPager$LayoutParams;

    .line 1825
    .restart local v14    # "lp":Llenovo/view/ViewPager$LayoutParams;
    iget-boolean v0, v14, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1821
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1789
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v12    # "i":I
    .end local v14    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .end local v17    # "scrollX":I
    :cond_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mNewPopulate:I

    goto/16 :goto_3

    .line 1795
    .restart local v4    # "N":I
    .restart local v9    # "curIndex":I
    .restart local v10    # "curItem":Llenovo/view/ViewPager$ItemInfo;
    .restart local v13    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 1805
    .end local v13    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_a
    const/16 v20, 0x0

    goto :goto_5

    .line 1827
    .end local v4    # "N":I
    .end local v9    # "curIndex":I
    .end local v10    # "curItem":Llenovo/view/ViewPager$ItemInfo;
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v12    # "i":I
    .restart local v14    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .restart local v17    # "scrollX":I
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, v20, v17

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v18, v20, v21

    .line 1828
    .local v18, "transformPos":F
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mPageTransformer:Llenovo/view/ViewPager$PageTransformer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v5, v1}, Llenovo/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_7

    .line 1832
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v12    # "i":I
    .end local v14    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .end local v17    # "scrollX":I
    .end local v18    # "transformPos":F
    :cond_c
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llenovo/view/ViewPager;->mCalledSuper:Z

    .line 1833
    return-void

    .line 1756
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2817
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2818
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2819
    const/4 v6, 0x0

    .line 2820
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2821
    .local v5, "increment":I
    move v2, v1

    .line 2827
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2828
    invoke-virtual {p0, v3}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2829
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2830
    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->infoForChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2831
    .local v4, "ii":Llenovo/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Llenovo/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Llenovo/view/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2832
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2833
    const/4 v7, 0x1

    .line 2838
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :goto_2
    return v7

    .line 2823
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2824
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2825
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2827
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2838
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1320
    instance-of v1, p1, Llenovo/view/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1321
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1336
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1325
    check-cast v0, Llenovo/view/ViewPager$SavedState;

    .line 1326
    .local v0, "ss":Llenovo/view/ViewPager$SavedState;
    invoke-virtual {v0}, Llenovo/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1328
    iget-object v1, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1329
    iget-object v1, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    iget-object v2, v0, Llenovo/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Llenovo/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Llenovo/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1330
    iget v1, v0, Llenovo/view/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Llenovo/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1332
    :cond_1
    iget v1, v0, Llenovo/view/ViewPager$SavedState;->position:I

    iput v1, p0, Llenovo/view/ViewPager;->mRestoredCurItem:I

    .line 1333
    iget-object v1, v0, Llenovo/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Llenovo/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1334
    iget-object v1, v0, Llenovo/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Llenovo/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1309
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1310
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Llenovo/view/ViewPager$SavedState;

    invoke-direct {v0, v1}, Llenovo/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1311
    .local v0, "ss":Llenovo/view/ViewPager$SavedState;
    iget v2, p0, Llenovo/view/ViewPager;->mCurItem:I

    iput v2, v0, Llenovo/view/ViewPager$SavedState;->position:I

    .line 1312
    iget-object v2, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1313
    iget-object v2, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v2}, Llenovo/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Llenovo/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1315
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1531
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1534
    if-eq p1, p3, :cond_0

    .line 1535
    iget v0, p0, Llenovo/view/ViewPager;->mPageMargin:I

    iget v1, p0, Llenovo/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Llenovo/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1537
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2041
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/view/ViewPager;->mLockViewPager:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mScrollState:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 2042
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    .line 2172
    :goto_0
    return v27

    .line 2045
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/view/ViewPager;->mFakeDragging:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 2049
    const/16 v27, 0x1

    goto :goto_0

    .line 2052
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    if-nez v27, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v27

    if-eqz v27, :cond_2

    .line 2055
    const/16 v27, 0x0

    goto :goto_0

    .line 2058
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v27

    if-nez v27, :cond_4

    .line 2060
    :cond_3
    const/16 v27, 0x0

    goto :goto_0

    .line 2063
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    if-nez v27, :cond_5

    .line 2064
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2066
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2068
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 2069
    .local v5, "action":I
    const/4 v12, 0x0

    .line 2071
    .local v12, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    .line 2169
    :cond_6
    :goto_1
    :pswitch_0
    if-eqz v12, :cond_7

    .line 2170
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->postInvalidateOnAnimation()V

    .line 2172
    :cond_7
    const/16 v27, 0x1

    goto :goto_0

    .line 2073
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2074
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llenovo/view/ViewPager;->mPopulatePending:Z

    .line 2075
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->populate()V

    .line 2078
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mInitialMotionX:F

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 2079
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mInitialMotionY:F

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mLastMotionY:F

    .line 2080
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mActivePointerId:I

    goto :goto_1

    .line 2084
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-nez v27, :cond_8

    .line 2085
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 2087
    .local v16, "pointerIndex":I
    const/16 v23, 0x0

    .local v23, "xTmp":F
    const/16 v26, 0x0

    .line 2089
    .local v26, "yTmp":F
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    .line 2090
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    .line 2094
    :goto_2
    move/from16 v21, v23

    .line 2095
    .local v21, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mLastMotionX:F

    move/from16 v27, v0

    sub-float v27, v21, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 2096
    .local v22, "xDiff":F
    move/from16 v24, v26

    .line 2098
    .local v24, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mLastMotionY:F

    move/from16 v27, v0

    sub-float v27, v24, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v25

    .line 2100
    .local v25, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mTouchSlop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v27, v22, v27

    if-lez v27, :cond_8

    cmpl-float v27, v22, v25

    if-lez v27, :cond_8

    .line 2102
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    .line 2103
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Llenovo/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2104
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mInitialMotionX:F

    move/from16 v27, v0

    sub-float v27, v21, v27

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mInitialMotionX:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mTouchSlop:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    :goto_3
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 2106
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mLastMotionY:F

    .line 2107
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Llenovo/view/ViewPager;->setScrollState(I)V

    .line 2108
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Llenovo/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2111
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 2112
    .local v15, "parent":Landroid/view/ViewParent;
    if-eqz v15, :cond_8

    .line 2113
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-interface {v15, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2118
    .end local v15    # "parent":Landroid/view/ViewParent;
    .end local v16    # "pointerIndex":I
    .end local v21    # "x":F
    .end local v22    # "xDiff":F
    .end local v23    # "xTmp":F
    .end local v24    # "y":F
    .end local v25    # "yDiff":F
    .end local v26    # "yTmp":F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 2120
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2121
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    .line 2122
    .restart local v21    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Llenovo/view/ViewPager;->performDrag(F)Z

    move-result v27

    or-int v12, v12, v27

    .line 2123
    goto/16 :goto_1

    .line 2091
    .end local v6    # "activePointerIndex":I
    .end local v21    # "x":F
    .restart local v16    # "pointerIndex":I
    .restart local v23    # "xTmp":F
    .restart local v26    # "yTmp":F
    :catch_0
    move-exception v8

    .line 2092
    .local v8, "e":Ljava/lang/Exception;
    const-string v27, "liqftest"

    const-string v28, "ViewPageronTouchEvent :excepeion has been thrown"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 2104
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v21    # "x":F
    .restart local v22    # "xDiff":F
    .restart local v24    # "y":F
    .restart local v25    # "yDiff":F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mInitialMotionX:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mTouchSlop:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    goto :goto_3

    .line 2126
    .end local v16    # "pointerIndex":I
    .end local v21    # "x":F
    .end local v22    # "xDiff":F
    .end local v23    # "xTmp":F
    .end local v24    # "y":F
    .end local v25    # "yDiff":F
    .end local v26    # "yTmp":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 2128
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v27, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mMaximumVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2129
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v11, v0

    .line 2130
    .local v11, "initialVelocity":I
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llenovo/view/ViewPager;->mPopulatePending:Z

    .line 2131
    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v20

    .line 2132
    .local v20, "width":I
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v17

    .line 2133
    .local v17, "scrollX":I
    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->infoForCurrentScrollPosition()Llenovo/view/ViewPager$ItemInfo;

    move-result-object v9

    .line 2134
    .local v9, "ii":Llenovo/view/ViewPager$ItemInfo;
    iget v7, v9, Llenovo/view/ViewPager$ItemInfo;->position:I

    .line 2135
    .local v7, "currentPage":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    iget v0, v9, Llenovo/view/ViewPager$ItemInfo;->offset:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    iget v0, v9, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    div-float v14, v27, v28

    .line 2136
    .local v14, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2138
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    .line 2139
    .restart local v21    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mInitialMotionX:F

    move/from16 v27, v0

    sub-float v27, v21, v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2140
    .local v18, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v14, v11, v1}, Llenovo/view/ViewPager;->determineTargetPage(IFII)I

    move-result v13

    .line 2142
    .local v13, "nextPage":I
    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v13, v1, v2, v11}, Llenovo/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2144
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mActivePointerId:I

    .line 2145
    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->endDrag()V

    .line 2146
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->supportOnRelease(Landroid/widget/EdgeEffect;)Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->supportOnRelease(Landroid/widget/EdgeEffect;)Z

    move-result v28

    or-int v12, v27, v28

    .line 2147
    goto/16 :goto_1

    .line 2150
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v9    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v11    # "initialVelocity":I
    .end local v13    # "nextPage":I
    .end local v14    # "pageOffset":F
    .end local v17    # "scrollX":I
    .end local v18    # "totalDelta":I
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v20    # "width":I
    .end local v21    # "x":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 2151
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Llenovo/view/ViewPager;->scrollToItem(IZIZ)V

    .line 2152
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mActivePointerId:I

    .line 2153
    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->endDrag()V

    .line 2154
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->supportOnRelease(Landroid/widget/EdgeEffect;)Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->supportOnRelease(Landroid/widget/EdgeEffect;)Z

    move-result v28

    or-int v12, v27, v28

    goto/16 :goto_1

    .line 2158
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    .line 2159
    .local v10, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    .line 2160
    .restart local v21    # "x":F
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mLastMotionX:F

    .line 2161
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2165
    .end local v10    # "index":I
    .end local v21    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Llenovo/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2166
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2071
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2730
    iget v1, p0, Llenovo/view/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2731
    iget v1, p0, Llenovo/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Llenovo/view/ViewPager;->setCurrentItem(IZ)V

    .line 2734
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2738
    iget-object v1, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Llenovo/view/ViewPager;->mCurItem:I

    iget-object v2, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v2}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2739
    iget v1, p0, Llenovo/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Llenovo/view/ViewPager;->setCurrentItem(IZ)V

    .line 2742
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Llenovo/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->populate(I)V

    .line 958
    return-void
.end method

.method populate(I)V
    .locals 30
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 961
    const/16 v21, 0x0

    .line 962
    .local v21, "oldCurInfo":Llenovo/view/ViewPager$ItemInfo;
    const/4 v15, 0x2

    .line 963
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 964
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v15, 0x42

    .line 965
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->infoForPosition(I)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v21

    .line 966
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Llenovo/view/ViewPager;->mCurItem:I

    .line 969
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    .line 970
    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->sortChildDrawingOrder()V

    .line 1146
    :cond_1
    :goto_1
    return-void

    .line 964
    :cond_2
    const/16 v15, 0x11

    goto :goto_0

    .line 978
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llenovo/view/ViewPager;->mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 980
    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->sortChildDrawingOrder()V

    goto :goto_1

    .line 987
    :cond_4
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llenovo/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 993
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mOffscreenPageLimit:I

    move/from16 v22, v0

    .line 994
    .local v22, "pageLimit":I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 995
    .local v26, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v4

    .line 996
    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 998
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    .line 1001
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 1005
    .local v24, "resName":Ljava/lang/String;
    :goto_2
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mExpectedAdapterCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1002
    .end local v24    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1003
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_2

    .line 1014
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    .line 1015
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 1016
    .local v9, "curItem":Llenovo/view/ViewPager$ItemInfo;
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Llenovo/view/ViewPager$ItemInfo;

    .line 1018
    .local v17, "ii":Llenovo/view/ViewPager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_c

    .line 1019
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v17

    .line 1024
    .end local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_6
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    .line 1025
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Llenovo/view/ViewPager;->addNewItem(II)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v9

    .line 1031
    :cond_7
    if-eqz v9, :cond_a

    .line 1032
    const/4 v13, 0x0

    .line 1033
    .local v13, "extraWidthLeft":F
    add-int/lit8 v18, v8, -0x1

    .line 1034
    .local v18, "itemIndex":I
    if-ltz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Llenovo/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1035
    .restart local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :goto_4
    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v7

    .line 1036
    .local v7, "clientWidth":I
    if-gtz v7, :cond_e

    const/16 v19, 0x0

    .line 1038
    .local v19, "leftWidthNeeded":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, "pos":I
    :goto_6
    if-ltz v23, :cond_8

    .line 1039
    cmpl-float v27, v13, v19

    if-ltz v27, :cond_12

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    .line 1040
    if-nez v17, :cond_f

    .line 1066
    :cond_8
    iget v14, v9, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1067
    .local v14, "extraWidthRight":F
    add-int/lit8 v18, v8, 0x1

    .line 1068
    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_9

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Llenovo/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1070
    :goto_7
    if-gtz v7, :cond_17

    const/16 v25, 0x0

    .line 1072
    .local v25, "rightWidthNeeded":F
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_9
    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 1073
    cmpl-float v27, v14, v25

    if-ltz v27, :cond_1b

    move/from16 v0, v23

    if-le v0, v12, :cond_1b

    .line 1074
    if-nez v17, :cond_18

    .line 1099
    .end local v25    # "rightWidthNeeded":F
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, Llenovo/view/ViewPager;->calculatePageOffsets(Llenovo/view/ViewPager$ItemInfo;ILlenovo/view/ViewPager$ItemInfo;)V

    .line 1109
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v29, v0

    if-eqz v9, :cond_1f

    iget-object v0, v9, Llenovo/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_a
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Llenovo/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llenovo/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1115
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1116
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v6, :cond_20

    .line 1117
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1118
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Llenovo/view/ViewPager$LayoutParams;

    .line 1119
    .local v20, "lp":Llenovo/view/ViewPager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Llenovo/view/ViewPager$LayoutParams;->childIndex:I

    .line 1120
    move-object/from16 v0, v20

    iget-boolean v0, v0, Llenovo/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Llenovo/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_b

    .line 1122
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/view/ViewPager;->infoForChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v17

    .line 1123
    .restart local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    if-eqz v17, :cond_b

    .line 1124
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Llenovo/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1125
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Llenovo/view/ViewPager$LayoutParams;->position:I

    .line 1116
    .end local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 1016
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v16    # "i":I
    .end local v20    # "lp":Llenovo/view/ViewPager$LayoutParams;
    .restart local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1034
    .end local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v18    # "itemIndex":I
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1036
    .restart local v7    # "clientWidth":I
    .restart local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_e
    const/high16 v27, 0x40000000    # 2.0f

    iget v0, v9, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    goto/16 :goto_5

    .line 1043
    .restart local v19    # "leftWidthNeeded":F
    .restart local v23    # "pos":I
    :cond_f
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Llenovo/view/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_10

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Llenovo/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Llenovo/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1050
    add-int/lit8 v18, v18, -0x1

    .line 1051
    add-int/lit8 v8, v8, -0x1

    .line 1052
    if-ltz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Llenovo/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1038
    :cond_10
    :goto_c
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_6

    .line 1052
    :cond_11
    const/16 v17, 0x0

    goto :goto_c

    .line 1054
    :cond_12
    if-eqz v17, :cond_14

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 1055
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1056
    add-int/lit8 v18, v18, -0x1

    .line 1057
    if-ltz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Llenovo/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_d
    goto :goto_c

    :cond_13
    const/16 v17, 0x0

    goto :goto_d

    .line 1059
    :cond_14
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Llenovo/view/ViewPager;->addNewItem(II)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v17

    .line 1060
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1061
    add-int/lit8 v8, v8, 0x1

    .line 1062
    if-ltz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Llenovo/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_e
    goto :goto_c

    :cond_15
    const/16 v17, 0x0

    goto :goto_e

    .line 1069
    .restart local v14    # "extraWidthRight":F
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 1070
    :cond_17
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    add-float v25, v27, v28

    goto/16 :goto_8

    .line 1077
    .restart local v25    # "rightWidthNeeded":F
    :cond_18
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    move-object/from16 v0, v17

    iget-boolean v0, v0, Llenovo/view/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_19

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Llenovo/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Llenovo/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Llenovo/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1072
    :cond_19
    :goto_f
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 1084
    :cond_1a
    const/16 v17, 0x0

    goto :goto_f

    .line 1086
    :cond_1b
    if-eqz v17, :cond_1d

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 1087
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1088
    add-int/lit8 v18, v18, 0x1

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Llenovo/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_10
    goto :goto_f

    :cond_1c
    const/16 v17, 0x0

    goto :goto_10

    .line 1091
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Llenovo/view/ViewPager;->addNewItem(II)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v17

    .line 1092
    add-int/lit8 v18, v18, 0x1

    .line 1093
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Llenovo/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_11
    goto :goto_f

    :cond_1e
    const/16 v17, 0x0

    goto :goto_11

    .line 1109
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    .end local v25    # "rightWidthNeeded":F
    :cond_1f
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 1129
    .restart local v6    # "childCount":I
    .restart local v16    # "i":I
    :cond_20
    invoke-direct/range {p0 .. p0}, Llenovo/view/ViewPager;->sortChildDrawingOrder()V

    .line 1131
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1132
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1133
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_23

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Llenovo/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v17

    .line 1134
    .restart local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :goto_12
    if-eqz v17, :cond_21

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1135
    :cond_21
    const/16 v16, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 1136
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1137
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/view/ViewPager;->infoForChild(Landroid/view/View;)Llenovo/view/ViewPager$ItemInfo;

    move-result-object v17

    .line 1138
    if-eqz v17, :cond_22

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/view/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/view/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    .line 1139
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-nez v27, :cond_1

    .line 1135
    :cond_22
    add-int/lit8 v16, v16, 0x1

    goto :goto_13

    .line 1133
    .end local v5    # "child":Landroid/view/View;
    .end local v17    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_23
    const/16 v17, 0x0

    goto :goto_12
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1366
    iget-boolean v0, p0, Llenovo/view/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1367
    invoke-virtual {p0, p1}, Llenovo/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1371
    :goto_0
    return-void

    .line 1369
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Llenovo/view/PagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Llenovo/view/PagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 424
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    if-eqz v4, :cond_1

    .line 425
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    iget-object v5, p0, Llenovo/view/ViewPager;->mObserver:Llenovo/view/ViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Llenovo/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 426
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v4, p0}, Llenovo/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 428
    iget-object v4, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llenovo/view/ViewPager$ItemInfo;

    .line 429
    .local v1, "ii":Llenovo/view/ViewPager$ItemInfo;
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    iget v5, v1, Llenovo/view/ViewPager$ItemInfo;->position:I

    iget-object v6, v1, Llenovo/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Llenovo/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    .end local v1    # "ii":Llenovo/view/ViewPager$ItemInfo;
    :cond_0
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v4, p0}, Llenovo/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 432
    iget-object v4, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 433
    invoke-direct {p0}, Llenovo/view/ViewPager;->removeNonDecorViews()V

    .line 434
    iput v7, p0, Llenovo/view/ViewPager;->mCurItem:I

    .line 435
    invoke-virtual {p0, v7, v7}, Llenovo/view/ViewPager;->scrollTo(II)V

    .line 438
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    .line 439
    .local v2, "oldAdapter":Llenovo/view/PagerAdapter;
    iput-object p1, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    .line 440
    iput v7, p0, Llenovo/view/ViewPager;->mExpectedAdapterCount:I

    .line 442
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    if-eqz v4, :cond_3

    .line 443
    iget-object v4, p0, Llenovo/view/ViewPager;->mObserver:Llenovo/view/ViewPager$PagerObserver;

    if-nez v4, :cond_2

    .line 444
    new-instance v4, Llenovo/view/ViewPager$PagerObserver;

    invoke-direct {v4, p0, v8}, Llenovo/view/ViewPager$PagerObserver;-><init>(Llenovo/view/ViewPager;Llenovo/view/ViewPager$1;)V

    iput-object v4, p0, Llenovo/view/ViewPager;->mObserver:Llenovo/view/ViewPager$PagerObserver;

    .line 446
    :cond_2
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    iget-object v5, p0, Llenovo/view/ViewPager;->mObserver:Llenovo/view/ViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Llenovo/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 447
    iput-boolean v7, p0, Llenovo/view/ViewPager;->mPopulatePending:Z

    .line 448
    iget-boolean v3, p0, Llenovo/view/ViewPager;->mFirstLayout:Z

    .line 449
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Llenovo/view/ViewPager;->mFirstLayout:Z

    .line 450
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v4}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Llenovo/view/ViewPager;->mExpectedAdapterCount:I

    .line 451
    iget v4, p0, Llenovo/view/ViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 452
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    iget-object v5, p0, Llenovo/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Llenovo/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Llenovo/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 453
    iget v4, p0, Llenovo/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Llenovo/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 454
    const/4 v4, -0x1

    iput v4, p0, Llenovo/view/ViewPager;->mRestoredCurItem:I

    .line 455
    iput-object v8, p0, Llenovo/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 456
    iput-object v8, p0, Llenovo/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 464
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapterChangeListener:Llenovo/view/ViewPager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    .line 465
    iget-object v4, p0, Llenovo/view/ViewPager;->mAdapterChangeListener:Llenovo/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Llenovo/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Llenovo/view/PagerAdapter;Llenovo/view/PagerAdapter;)V

    .line 467
    :cond_4
    return-void

    .line 457
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    .line 458
    invoke-virtual {p0}, Llenovo/view/ViewPager;->populate()V

    goto :goto_1

    .line 460
    :cond_6
    invoke-virtual {p0}, Llenovo/view/ViewPager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 668
    iget-object v1, p0, Llenovo/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 670
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Llenovo/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Llenovo/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 682
    :goto_1
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 678
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 505
    iput-boolean v1, p0, Llenovo/view/ViewPager;->mPopulatePending:Z

    .line 508
    iget-boolean v0, p0, Llenovo/view/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Llenovo/view/ViewPager;->mCanScroller:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Llenovo/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 509
    return-void

    :cond_0
    move v0, v1

    .line 508
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 518
    iput-boolean v0, p0, Llenovo/view/ViewPager;->mPopulatePending:Z

    .line 519
    invoke-virtual {p0, p1, p2, v0}, Llenovo/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 520
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Llenovo/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 528
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 6
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 531
    iget-object v3, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v3}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 532
    :cond_0
    invoke-direct {p0, v4}, Llenovo/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 579
    :goto_0
    return-void

    .line 535
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Llenovo/view/ViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 536
    invoke-direct {p0, v4}, Llenovo/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 540
    :cond_2
    if-gez p1, :cond_5

    .line 541
    const/4 p1, 0x0

    .line 545
    :cond_3
    :goto_1
    iget v2, p0, Llenovo/view/ViewPager;->mOffscreenPageLimit:I

    .line 546
    .local v2, "pageLimit":I
    iget v3, p0, Llenovo/view/ViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Llenovo/view/ViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    .line 550
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 551
    iget-object v3, p0, Llenovo/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llenovo/view/ViewPager$ItemInfo;

    iput-boolean v5, v3, Llenovo/view/ViewPager$ItemInfo;->scrolling:Z

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 542
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v3}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 543
    iget-object v3, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    invoke-virtual {v3}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 556
    .restart local v2    # "pageLimit":I
    :cond_6
    const/4 v0, 0x1

    .line 559
    .local v0, "dispatchSelected":Z
    iget-boolean v3, p0, Llenovo/view/ViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_a

    .line 562
    iput p1, p0, Llenovo/view/ViewPager;->mCurItem:I

    .line 564
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_7

    .line 565
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 567
    :cond_7
    iget-object v3, p0, Llenovo/view/ViewPager;->mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_8

    .line 568
    iget-object v3, p0, Llenovo/view/ViewPager;->mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 570
    :cond_8
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_9

    .line 571
    iget-object v3, p0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Llenovo/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 574
    :cond_9
    invoke-virtual {p0}, Llenovo/view/ViewPager;->requestLayout()V

    goto :goto_0

    .line 576
    :cond_a
    invoke-virtual {p0, p1}, Llenovo/view/ViewPager;->populate(I)V

    .line 577
    invoke-direct {p0, p1, p2, p4, v5}, Llenovo/view/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method setInternalPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)Llenovo/view/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Llenovo/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 698
    iget-object v0, p0, Llenovo/view/ViewPager;->mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 699
    .local v0, "oldListener":Llenovo/view/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Llenovo/view/ViewPager;->mInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 700
    return-object v0
.end method

.method public setLockViewPager(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 3065
    iput-boolean p1, p0, Llenovo/view/ViewPager;->mLockViewPager:Z

    .line 3066
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 732
    if-ge p1, v3, :cond_0

    .line 733
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 p1, 0x1

    .line 737
    :cond_0
    iget v0, p0, Llenovo/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 738
    iput p1, p0, Llenovo/view/ViewPager;->mOffscreenPageLimit:I

    .line 739
    invoke-virtual {p0}, Llenovo/view/ViewPager;->populate()V

    .line 741
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Llenovo/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/view/ViewPager$OnAdapterChangeListener;

    .prologue
    .line 490
    iput-object p1, p0, Llenovo/view/ViewPager;->mAdapterChangeListener:Llenovo/view/ViewPager$OnAdapterChangeListener;

    .line 491
    return-void
.end method

.method public setOnInternalPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 638
    iput-object p1, p0, Llenovo/view/ViewPager;->mOnInternalPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 639
    return-void
.end method

.method public setOnPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 630
    iput-object p1, p0, Llenovo/view/ViewPager;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 631
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 752
    iget v0, p0, Llenovo/view/ViewPager;->mPageMargin:I

    .line 753
    .local v0, "oldMargin":I
    iput p1, p0, Llenovo/view/ViewPager;->mPageMargin:I

    .line 755
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getWidth()I

    move-result v1

    .line 756
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Llenovo/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 758
    invoke-virtual {p0}, Llenovo/view/ViewPager;->requestLayout()V

    .line 759
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 788
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 789
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 776
    iput-object p1, p0, Llenovo/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 777
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Llenovo/view/ViewPager;->refreshDrawableState()V

    .line 778
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->setWillNotDraw(Z)V

    .line 779
    invoke-virtual {p0}, Llenovo/view/ViewPager;->invalidate()V

    .line 780
    return-void

    .line 778
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLlenovo/view/ViewPager$PageTransformer;)V
    .locals 5
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Llenovo/view/ViewPager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 655
    if-eqz p2, :cond_2

    move v0, v2

    .line 656
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v4, p0, Llenovo/view/ViewPager;->mPageTransformer:Llenovo/view/ViewPager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    if-eq v0, v4, :cond_4

    move v1, v2

    .line 657
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Llenovo/view/ViewPager;->mPageTransformer:Llenovo/view/ViewPager$PageTransformer;

    .line 658
    invoke-virtual {p0, v0}, Llenovo/view/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 659
    if-eqz v0, :cond_5

    .line 660
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Llenovo/view/ViewPager;->mDrawingOrder:I

    .line 664
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Llenovo/view/ViewPager;->populate()V

    .line 665
    :cond_1
    return-void

    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_2
    move v0, v3

    .line 655
    goto :goto_0

    .restart local v0    # "hasTransformer":Z
    :cond_3
    move v4, v3

    .line 656
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 662
    .restart local v1    # "needsPopulate":Z
    :cond_5
    iput v3, p0, Llenovo/view/ViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method public setRectSlopScaleInTab(IIIIFI)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "coef"    # F
    .param p6, "specTab"    # I

    .prologue
    .line 3030
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/view/ViewPager;->mSpecRect:Landroid/graphics/Rect;

    .line 3031
    iget-object v0, p0, Llenovo/view/ViewPager;->mSpecRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 3032
    iget-object v0, p0, Llenovo/view/ViewPager;->mSpecRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 3033
    iget-object v0, p0, Llenovo/view/ViewPager;->mSpecRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 3034
    iget-object v0, p0, Llenovo/view/ViewPager;->mSpecRect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 3035
    iget v0, p0, Llenovo/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Llenovo/view/ViewPager;->mTouchSlopAdjust:I

    .line 3036
    iput p6, p0, Llenovo/view/ViewPager;->mSpecTab:I

    .line 3037
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRectSlopScaleInTab mSpecRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llenovo/view/ViewPager;->mSpecRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", coef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", specTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llenovo/view/ViewPager;->mSpecTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    return-void
.end method

.method public setUpdateMenuWhenScroller(Z)V
    .locals 0
    .param p1, "update"    # Z

    .prologue
    .line 3071
    iput-boolean p1, p0, Llenovo/view/ViewPager;->mUpdateMenuWhenScroller:Z

    .line 3072
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 822
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Llenovo/view/ViewPager;->smoothScrollTo(III)V

    .line 823
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 833
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 835
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Llenovo/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 870
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollX()I

    move-result v2

    .line 839
    .local v2, "sx":I
    invoke-virtual {p0}, Llenovo/view/ViewPager;->getScrollY()I

    move-result v3

    .line 840
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 841
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 842
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 843
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Llenovo/view/ViewPager;->completeScroll(Z)V

    .line 844
    invoke-virtual {p0}, Llenovo/view/ViewPager;->populate()V

    .line 845
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Llenovo/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 849
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Llenovo/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 850
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Llenovo/view/ViewPager;->setScrollState(I)V

    .line 852
    invoke-direct {p0}, Llenovo/view/ViewPager;->getClientWidth()I

    move-result v12

    .line 853
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .line 854
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 855
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Llenovo/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 858
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 859
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 860
    if-lez p3, :cond_2

    .line 861
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 867
    :goto_1
    const/16 v1, 0x320

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 868
    iget-object v1, p0, Llenovo/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 869
    invoke-virtual {p0}, Llenovo/view/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 863
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Llenovo/view/ViewPager;->mAdapter:Llenovo/view/PagerAdapter;

    iget v14, p0, Llenovo/view/ViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Llenovo/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 864
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Llenovo/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 865
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x437a0000    # 250.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method supportOnPull(Landroid/widget/EdgeEffect;F)Z
    .locals 1
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;
    .param p2, "deltaDistance"    # F

    .prologue
    .line 3056
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3057
    const/4 v0, 0x1

    return v0
.end method

.method supportOnRelease(Landroid/widget/EdgeEffect;)Z
    .locals 1
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;

    .prologue
    .line 3052
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3053
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 793
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llenovo/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
