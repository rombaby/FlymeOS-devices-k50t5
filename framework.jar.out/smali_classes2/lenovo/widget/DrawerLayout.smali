.class public Llenovo/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Llenovo/widget/DrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Llenovo/widget/DrawerLayout$AccessibilityDelegate;,
        Llenovo/widget/DrawerLayout$LayoutParams;,
        Llenovo/widget/DrawerLayout$ViewDragCallback;,
        Llenovo/widget/DrawerLayout$SavedState;,
        Llenovo/widget/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Llenovo/widget/DrawerLayout$DrawerLayoutCompatImplBase;,
        Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;,
        Llenovo/widget/DrawerLayout$SimpleDrawerListener;,
        Llenovo/widget/DrawerLayout$DrawerListener;,
        Llenovo/widget/DrawerLayout$EdgeGravity;,
        Llenovo/widget/DrawerLayout$LockMode;,
        Llenovo/widget/DrawerLayout$State;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field static final IMPL:Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Llenovo/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Llenovo/widget/ViewDragHelper;

.field private mListener:Llenovo/widget/DrawerLayout$DrawerListener;

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mMinDrawerMargin:I

.field private final mRightCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Llenovo/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Llenovo/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 293
    new-instance v0, Llenovo/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    invoke-direct {v0}, Llenovo/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v0, Llenovo/widget/DrawerLayout;->IMPL:Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llenovo/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 307
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    new-instance v2, Llenovo/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v2, p0}, Llenovo/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Llenovo/widget/DrawerLayout;)V

    iput-object v2, p0, Llenovo/widget/DrawerLayout;->mChildAccessibilityDelegate:Llenovo/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 161
    const/high16 v2, -0x67000000

    iput v2, p0, Llenovo/widget/DrawerLayout;->mScrimColor:I

    .line 163
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Llenovo/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 171
    iput-boolean v4, p0, Llenovo/widget/DrawerLayout;->mFirstLayout:Z

    .line 308
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Llenovo/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 309
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 310
    .local v0, "density":F
    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Llenovo/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 311
    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v1, v2, v0

    .line 313
    .local v1, "minVel":F
    new-instance v2, Llenovo/widget/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Llenovo/widget/DrawerLayout$ViewDragCallback;-><init>(Llenovo/widget/DrawerLayout;I)V

    iput-object v2, p0, Llenovo/widget/DrawerLayout;->mLeftCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

    .line 314
    new-instance v2, Llenovo/widget/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Llenovo/widget/DrawerLayout$ViewDragCallback;-><init>(Llenovo/widget/DrawerLayout;I)V

    iput-object v2, p0, Llenovo/widget/DrawerLayout;->mRightCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

    .line 316
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mLeftCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Llenovo/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLlenovo/widget/ViewDragHelper$Callback;)Llenovo/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    .line 317
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v2, v4}, Llenovo/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 318
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Llenovo/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 319
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mLeftCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v2, v3}, Llenovo/widget/DrawerLayout$ViewDragCallback;->setDragger(Llenovo/widget/ViewDragHelper;)V

    .line 321
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mRightCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Llenovo/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLlenovo/widget/ViewDragHelper$Callback;)Llenovo/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    .line 322
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Llenovo/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 323
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Llenovo/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 324
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mRightCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v2, v3}, Llenovo/widget/DrawerLayout$ViewDragCallback;->setDragger(Llenovo/widget/ViewDragHelper;)V

    .line 327
    invoke-virtual {p0, v4}, Llenovo/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 329
    invoke-virtual {p0, v4}, Llenovo/widget/DrawerLayout;->setImportantForAccessibility(I)V

    .line 331
    new-instance v2, Llenovo/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Llenovo/widget/DrawerLayout$AccessibilityDelegate;-><init>(Llenovo/widget/DrawerLayout;)V

    invoke-virtual {p0, v2}, Llenovo/widget/DrawerLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 332
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Llenovo/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 333
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getFitsSystemWindows()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    sget-object v2, Llenovo/widget/DrawerLayout;->IMPL:Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v2, p0}, Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    .line 336
    :cond_0
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 79
    sget-object v0, Llenovo/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$200(Llenovo/widget/DrawerLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/DrawerLayout;

    .prologue
    .line 79
    invoke-direct {p0}, Llenovo/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-static {p0}, Llenovo/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 4

    .prologue
    .line 1423
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1424
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1425
    invoke-virtual {p0, v2}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1426
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1430
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1424
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1430
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "gravity"    # I

    .prologue
    .line 743
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 744
    const-string v0, "LEFT"

    .line 749
    :goto_0
    return-object v0

    .line 746
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 747
    const-string v0, "RIGHT"

    goto :goto_0

    .line 749
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 960
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 961
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 964
    :cond_0
    return v1
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    .prologue
    .line 1384
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1385
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1386
    invoke-virtual {p0, v1}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 1387
    .local v2, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    iget-boolean v3, v2, Llenovo/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v3, :cond_0

    .line 1388
    const/4 v3, 0x1

    .line 1391
    .end local v2    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :goto_1
    return v3

    .line 1385
    .restart local v2    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1391
    .end local v2    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .prologue
    .line 1419
    invoke-direct {p0}, Llenovo/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 1533
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1515
    if-gtz p2, :cond_0

    if-gez p2, :cond_1

    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1516
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1519
    iget-object v0, p0, Llenovo/widget/DrawerLayout;->mChildAccessibilityDelegate:Llenovo/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1524
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1525
    return-void

    .line 1522
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 1435
    iget-boolean v2, p0, Llenovo/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v2, :cond_1

    .line 1436
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1437
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1439
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1440
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 1441
    invoke-virtual {p0, v10}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1440
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1443
    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1444
    const/4 v2, 0x1

    iput-boolean v2, p0, Llenovo/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1446
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v9    # "childCount":I
    .end local v10    # "i":I
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    .prologue
    .line 689
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 690
    .local v0, "absGravity":I
    and-int v1, v0, p2

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1410
    instance-of v0, p1, Llenovo/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 1310
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1311
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1312
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Llenovo/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1315
    :cond_0
    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1316
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1288
    :cond_0
    iget-boolean v1, p0, Llenovo/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1289
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 1290
    .local v0, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1291
    const/4 v1, 0x0

    iput-boolean v1, v0, Llenovo/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1300
    .end local v0    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->invalidate()V

    .line 1301
    return-void

    .line 1293
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1294
    iget-object v1, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Llenovo/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1297
    :cond_2
    iget-object v1, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Llenovo/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1198
    return-void
.end method

.method closeDrawers(Z)V
    .locals 9
    .param p1, "peekingOnly"    # Z

    .prologue
    .line 1201
    const/4 v5, 0x0

    .line 1202
    .local v5, "needsInvalidate":Z
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1203
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1204
    invoke-virtual {p0, v3}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1205
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 1207
    .local v4, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v6, v4, Llenovo/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_1

    .line 1203
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1211
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1213
    .local v2, "childWidth":I
    const/4 v6, 0x3

    invoke-virtual {p0, v0, v6}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1214
    iget-object v6, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    neg-int v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Llenovo/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1221
    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, v4, Llenovo/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    .line 1217
    :cond_2
    iget-object v6, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Llenovo/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_2

    .line 1224
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childWidth":I
    .end local v4    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Llenovo/widget/DrawerLayout;->mLeftCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Llenovo/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1225
    iget-object v6, p0, Llenovo/widget/DrawerLayout;->mRightCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Llenovo/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1227
    if-eqz v5, :cond_4

    .line 1228
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->invalidate()V

    .line 1230
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 945
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 946
    .local v0, "childCount":I
    const/4 v3, 0x0

    .line 947
    .local v3, "scrimOpacity":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 948
    invoke-virtual {p0, v1}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/widget/DrawerLayout$LayoutParams;

    iget v2, v4, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 949
    .local v2, "onscreen":F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 947
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 951
    .end local v2    # "onscreen":F
    :cond_0
    iput v3, p0, Llenovo/widget/DrawerLayout;->mScrimOpacity:F

    .line 954
    iget-object v4, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v4, v6}, Llenovo/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v4

    iget-object v5, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v5, v6}, Llenovo/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 955
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->postInvalidateOnAnimation()V

    .line 957
    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 612
    .local v1, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    iget-boolean v3, v1, Llenovo/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v3, :cond_2

    .line 613
    iput-boolean v4, v1, Llenovo/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 614
    iget-object v3, p0, Llenovo/widget/DrawerLayout;->mListener:Llenovo/widget/DrawerLayout$DrawerListener;

    if-eqz v3, :cond_0

    .line 615
    iget-object v3, p0, Llenovo/widget/DrawerLayout;->mListener:Llenovo/widget/DrawerLayout$DrawerListener;

    invoke-interface {v3, p1}, Llenovo/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 620
    :cond_0
    invoke-virtual {p0, v4}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 621
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 622
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 624
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 629
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 631
    .local v2, "rootView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 632
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 636
    .end local v0    # "content":Landroid/view/View;
    .end local v2    # "rootView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 639
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 640
    .local v1, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    iget-boolean v2, v1, Llenovo/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-nez v2, :cond_2

    .line 641
    iput-boolean v3, v1, Llenovo/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 642
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mListener:Llenovo/widget/DrawerLayout$DrawerListener;

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mListener:Llenovo/widget/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1}, Llenovo/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 648
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 649
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 650
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 652
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 654
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Llenovo/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 657
    .end local v0    # "content":Landroid/view/View;
    :cond_2
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 660
    iget-object v0, p0, Llenovo/widget/DrawerLayout;->mListener:Llenovo/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Llenovo/widget/DrawerLayout;->mListener:Llenovo/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Llenovo/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 663
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1012
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->getHeight()I

    move-result v18

    .line 1013
    .local v18, "height":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Llenovo/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    .line 1014
    .local v17, "drawingContent":Z
    const/4 v13, 0x0

    .local v13, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->getWidth()I

    move-result v14

    .line 1016
    .local v14, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1017
    .local v21, "restoreCount":I
    if-eqz v17, :cond_4

    .line 1018
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v10

    .line 1019
    .local v10, "childCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v10, :cond_3

    .line 1020
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1021
    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v25 .. v25}, Llenovo/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_1

    .line 1019
    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1027
    :cond_1
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1028
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v27

    .line 1029
    .local v27, "vright":I
    move/from16 v0, v27

    if-le v0, v13, :cond_0

    move/from16 v13, v27

    goto :goto_1

    .line 1031
    .end local v27    # "vright":I
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 1032
    .local v26, "vleft":I
    move/from16 v0, v26

    if-ge v0, v14, :cond_0

    move/from16 v14, v26

    goto :goto_1

    .line 1035
    .end local v25    # "v":Landroid/view/View;
    .end local v26    # "vleft":I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1037
    .end local v10    # "childCount":I
    .end local v19    # "i":I
    :cond_4
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    .line 1038
    .local v22, "result":Z
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1040
    move-object/from16 v0, p0

    iget v2, v0, Llenovo/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-eqz v17, :cond_6

    .line 1041
    move-object/from16 v0, p0

    iget v2, v0, Llenovo/widget/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v9, v2, 0x18

    .line 1042
    .local v9, "baseAlpha":I
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/DrawerLayout;->mScrimOpacity:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    .line 1043
    .local v20, "imag":I
    shl-int/lit8 v2, v20, 0x18

    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/DrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v15, v2, v3

    .line 1044
    .local v15, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1046
    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Llenovo/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1069
    .end local v9    # "baseAlpha":I
    .end local v15    # "color":I
    .end local v20    # "imag":I
    :cond_5
    :goto_2
    return v22

    .line 1047
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1049
    .local v23, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1050
    .local v12, "childRight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v2}, Llenovo/widget/ViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 1051
    .local v16, "drawerPeekDistance":I
    const/4 v2, 0x0

    int-to-float v3, v12

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1053
    .local v8, "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v4, v12, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1057
    .end local v8    # "alpha":F
    .end local v12    # "childRight":I
    .end local v16    # "drawerPeekDistance":I
    .end local v23    # "shadowWidth":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1059
    .restart local v23    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 1060
    .local v11, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int v24, v2, v11

    .line 1061
    .local v24, "showing":I
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v2}, Llenovo/widget/ViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 1062
    .restart local v16    # "drawerPeekDistance":I
    const/4 v2, 0x0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1064
    .restart local v8    # "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Llenovo/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6
    .param p1, "gravity"    # I

    .prologue
    .line 723
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getLayoutDirection()I

    move-result v5

    invoke-static {p1, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v0, v5, 0x7

    .line 725
    .local v0, "absHorizGravity":I
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 726
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 727
    invoke-virtual {p0, v4}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 728
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Llenovo/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    .line 729
    .local v2, "childAbsGravity":I
    and-int/lit8 v5, v2, 0x7

    if-ne v5, v0, :cond_0

    .line 733
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :goto_1
    return-object v1

    .line 726
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childAbsGravity":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 733
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 4

    .prologue
    .line 694
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 695
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 696
    invoke-virtual {p0, v2}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 697
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Llenovo/widget/DrawerLayout$LayoutParams;

    iget-boolean v3, v3, Llenovo/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v3, :cond_0

    .line 701
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 695
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1396
    new-instance v0, Llenovo/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Llenovo/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1415
    new-instance v0, Llenovo/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Llenovo/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1401
    instance-of v0, p1, Llenovo/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Llenovo/widget/DrawerLayout$LayoutParams;

    check-cast p1, Llenovo/widget/DrawerLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/widget/DrawerLayout$LayoutParams;-><init>(Llenovo/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Llenovo/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Llenovo/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Llenovo/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 2
    .param p1, "edgeGravity"    # I

    .prologue
    .line 508
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 509
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 510
    iget v1, p0, Llenovo/widget/DrawerLayout;->mLockModeLeft:I

    .line 514
    :goto_0
    return v1

    .line 511
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 512
    iget v1, p0, Llenovo/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 514
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 527
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 528
    iget v1, p0, Llenovo/widget/DrawerLayout;->mLockModeLeft:I

    .line 532
    :goto_0
    return v1

    .line 529
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 530
    iget v1, p0, Llenovo/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 532
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "edgeGravity"    # I
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 567
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 568
    iget-object v1, p0, Llenovo/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 572
    :goto_0
    return-object v1

    .line 569
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 570
    iget-object v1, p0, Llenovo/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0

    .line 572
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llenovo/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 685
    .local v0, "gravity":I
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 676
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1073
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1346
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    .line 1349
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    .line 1329
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1332
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/DrawerLayout$LayoutParams;

    iget-boolean v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    return v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1077
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/widget/DrawerLayout$LayoutParams;

    iget v1, v2, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1078
    .local v1, "gravity":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1080
    .local v0, "absGravity":I
    and-int/lit8 v2, v0, 0x7

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1376
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1377
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    .line 1380
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    .line 1361
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 705
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v2

    .line 706
    .local v2, "oldOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 707
    .local v4, "width":I
    int-to-float v5, v4

    mul-float/2addr v5, v2

    float-to-int v3, v5

    .line 708
    .local v3, "oldPos":I
    int-to-float v5, v4

    mul-float/2addr v5, p2

    float-to-int v1, v5

    .line 709
    .local v1, "newPos":I
    sub-int v0, v1, v3

    .line 711
    .local v0, "dx":I
    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v0    # "dx":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 713
    invoke-virtual {p0, p1, p2}, Llenovo/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 714
    return-void

    .line 711
    .restart local v0    # "dx":I
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 760
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/DrawerLayout;->mFirstLayout:Z

    .line 762
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 754
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/widget/DrawerLayout;->mFirstLayout:Z

    .line 756
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 1000
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1001
    iget-boolean v1, p0, Llenovo/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1002
    sget-object v1, Llenovo/widget/DrawerLayout;->IMPL:Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    move-result v0

    .line 1003
    .local v0, "inset":I
    if-lez v0, :cond_0

    .line 1004
    iget-object v1, p0, Llenovo/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1005
    iget-object v1, p0, Llenovo/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1008
    .end local v0    # "inset":I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1085
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1088
    .local v0, "action":I
    iget-object v7, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v7, p1}, Llenovo/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    iget-object v8, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v8, p1}, Llenovo/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    or-int v1, v7, v8

    .line 1091
    .local v1, "interceptForDrag":Z
    const/4 v2, 0x0

    .line 1093
    .local v2, "interceptForTap":Z
    packed-switch v0, :pswitch_data_0

    .line 1125
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-direct {p0}, Llenovo/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, p0, Llenovo/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v7, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    return v5

    .line 1095
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1096
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1097
    .local v4, "y":F
    iput v3, p0, Llenovo/widget/DrawerLayout;->mInitialMotionX:F

    .line 1098
    iput v4, p0, Llenovo/widget/DrawerLayout;->mInitialMotionY:F

    .line 1099
    iget v7, p0, Llenovo/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget-object v7, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    float-to-int v8, v3

    float-to-int v9, v4

    invoke-virtual {v7, v8, v9}, Llenovo/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Llenovo/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1101
    const/4 v2, 0x1

    .line 1103
    :cond_3
    iput-boolean v5, p0, Llenovo/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1104
    iput-boolean v5, p0, Llenovo/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1110
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_1
    iget-object v7, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Llenovo/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1111
    iget-object v7, p0, Llenovo/widget/DrawerLayout;->mLeftCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v7}, Llenovo/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1112
    iget-object v7, p0, Llenovo/widget/DrawerLayout;->mRightCallback:Llenovo/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v7}, Llenovo/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 1119
    :pswitch_2
    invoke-virtual {p0, v6}, Llenovo/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1120
    iput-boolean v5, p0, Llenovo/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1121
    iput-boolean v5, p0, Llenovo/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1093
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1450
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Llenovo/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1452
    const/4 v0, 0x1

    .line 1454
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1459
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1460
    invoke-direct {p0}, Llenovo/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 1461
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1462
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->closeDrawers()V

    .line 1464
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1466
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :goto_0
    return v1

    .line 1464
    .restart local v0    # "visibleDrawer":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1466
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 854
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llenovo/widget/DrawerLayout;->mInLayout:Z

    .line 855
    sub-int v17, p4, p2

    .line 856
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v6

    .line 857
    .local v6, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v6, :cond_9

    .line 858
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 860
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 857
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 866
    .local v13, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 867
    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v20, v20, v21

    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 871
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 872
    .local v10, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 876
    .local v7, "childHeight":I
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 877
    neg-int v0, v10

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v18, v19

    .line 878
    .local v8, "childLeft":I
    add-int v18, v10, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 884
    .local v14, "newOffset":F
    :goto_2
    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    cmpl-float v18, v14, v18

    if-eqz v18, :cond_5

    const/4 v4, 0x1

    .line 886
    .local v4, "changeOffset":Z
    :goto_3
    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0x70

    .line 888
    .local v16, "vgrav":I
    sparse-switch v16, :sswitch_data_0

    .line 891
    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v19, v8, v10

    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 922
    :goto_4
    if-eqz v4, :cond_3

    .line 923
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Llenovo/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 926
    :cond_3
    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    const/4 v15, 0x0

    .line 927
    .local v15, "newVisibility":I
    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    .line 928
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 880
    .end local v4    # "changeOffset":Z
    .end local v8    # "childLeft":I
    .end local v14    # "newOffset":F
    .end local v15    # "newVisibility":I
    .end local v16    # "vgrav":I
    :cond_4
    int-to-float v0, v10

    move/from16 v18, v0

    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v8, v17, v18

    .line 881
    .restart local v8    # "childLeft":I
    sub-int v18, v17, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .restart local v14    # "newOffset":F
    goto :goto_2

    .line 884
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 897
    .restart local v4    # "changeOffset":Z
    .restart local v16    # "vgrav":I
    :sswitch_0
    sub-int v11, p5, p3

    .line 898
    .local v11, "height":I
    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    add-int v19, v8, v10

    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 906
    .end local v11    # "height":I
    :sswitch_1
    sub-int v11, p5, p3

    .line 907
    .restart local v11    # "height":I
    sub-int v18, v11, v7

    div-int/lit8 v9, v18, 0x2

    .line 911
    .local v9, "childTop":I
    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_7

    .line 912
    iget v9, v13, Llenovo/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 916
    :cond_6
    :goto_6
    add-int v18, v8, v10

    add-int v19, v9, v7

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 913
    :cond_7
    add-int v18, v9, v7

    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 914
    iget v0, v13, Llenovo/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    sub-int v9, v18, v7

    goto :goto_6

    .line 926
    .end local v9    # "childTop":I
    .end local v11    # "height":I
    :cond_8
    const/4 v15, 0x4

    goto :goto_5

    .line 932
    .end local v4    # "changeOffset":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    .end local v14    # "newOffset":F
    .end local v16    # "vgrav":I
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llenovo/widget/DrawerLayout;->mInLayout:Z

    .line 933
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llenovo/widget/DrawerLayout;->mFirstLayout:Z

    .line 934
    return-void

    .line 888
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 766
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 767
    .local v18, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 768
    .local v13, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 769
    .local v19, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 771
    .local v14, "heightSize":I
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-eq v13, v0, :cond_2

    .line 772
    :cond_0
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->isInEditMode()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 777
    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 778
    const/high16 v18, 0x40000000    # 2.0f

    .line 783
    :cond_1
    :goto_0
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v13, v0, :cond_4

    .line 784
    const/high16 v13, 0x40000000    # 2.0f

    .line 796
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Llenovo/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->getFitsSystemWindows()Z

    move-result v20

    if-eqz v20, :cond_6

    const/4 v3, 0x1

    .line 799
    .local v3, "applyInsets":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->getLayoutDirection()I

    move-result v16

    .line 802
    .local v16, "layoutDirection":I
    const/4 v12, 0x0

    .line 803
    .local v12, "foundDrawers":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v6

    .line 804
    .local v6, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    if-ge v15, v6, :cond_d

    .line 805
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 807
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 804
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 779
    .end local v3    # "applyInsets":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v12    # "foundDrawers":I
    .end local v15    # "i":I
    .end local v16    # "layoutDirection":I
    :cond_3
    if-nez v18, :cond_1

    .line 780
    const/high16 v18, 0x40000000    # 2.0f

    .line 781
    const/16 v19, 0x12c

    goto :goto_0

    .line 786
    :cond_4
    if-nez v13, :cond_2

    .line 787
    const/high16 v13, 0x40000000    # 2.0f

    .line 788
    const/16 v14, 0x12c

    goto :goto_1

    .line 791
    :cond_5
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 798
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 811
    .restart local v3    # "applyInsets":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v12    # "foundDrawers":I
    .restart local v15    # "i":I
    .restart local v16    # "layoutDirection":I
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 813
    .local v17, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    if-eqz v3, :cond_8

    .line 814
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    .line 815
    .local v4, "cgrav":I
    invoke-virtual {v5}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 816
    sget-object v20, Llenovo/widget/DrawerLayout;->IMPL:Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v5, v1, v4}, Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 822
    .end local v4    # "cgrav":I
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 824
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 826
    .local v9, "contentWidthSpec":I
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    sub-int v20, v14, v20

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 828
    .local v8, "contentHeightSpec":I
    invoke-virtual {v5, v9, v8}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 818
    .end local v8    # "contentHeightSpec":I
    .end local v9    # "contentWidthSpec":I
    .restart local v4    # "cgrav":I
    :cond_9
    sget-object v20, Llenovo/widget/DrawerLayout;->IMPL:Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v4}, Llenovo/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_5

    .line 829
    .end local v4    # "cgrav":I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 830
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Llenovo/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v20

    and-int/lit8 v7, v20, 0x7

    .line 832
    .local v7, "childGravity":I
    and-int v20, v12, v7

    if-eqz v20, :cond_b

    .line 833
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Child drawer has absolute gravity "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v7}, Llenovo/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " but this "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "DrawerLayout"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " already has a "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "drawer view along that edge"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 837
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Llenovo/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v11

    .line 840
    .local v11, "drawerWidthSpec":I
    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Llenovo/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Llenovo/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 843
    .local v10, "drawerHeightSpec":I
    invoke-virtual {v5, v11, v10}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    .line 845
    .end local v7    # "childGravity":I
    .end local v10    # "drawerHeightSpec":I
    .end local v11    # "drawerWidthSpec":I
    :cond_c
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Child "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " at index "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 850
    .end local v5    # "child":Landroid/view/View;
    .end local v17    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :cond_d
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1471
    move-object v0, p1

    check-cast v0, Llenovo/widget/DrawerLayout$SavedState;

    .line 1472
    .local v0, "ss":Llenovo/widget/DrawerLayout$SavedState;
    invoke-virtual {v0}, Llenovo/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1474
    iget v2, v0, Llenovo/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v2, :cond_0

    .line 1475
    iget v2, v0, Llenovo/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v2}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 1476
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1477
    invoke-virtual {p0, v1}, Llenovo/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1481
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_0
    iget v2, v0, Llenovo/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Llenovo/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1482
    iget v2, v0, Llenovo/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Llenovo/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1483
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1487
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 1489
    .local v5, "superState":Landroid/os/Parcelable;
    new-instance v4, Llenovo/widget/DrawerLayout$SavedState;

    invoke-direct {v4, v5}, Llenovo/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1491
    .local v4, "ss":Llenovo/widget/DrawerLayout$SavedState;
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1492
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1493
    invoke-virtual {p0, v2}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1494
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1492
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1498
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 1499
    .local v3, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    iget-boolean v6, v3, Llenovo/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v6, :cond_0

    .line 1500
    iget v6, v3, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v6, v4, Llenovo/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1506
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :cond_2
    iget v6, p0, Llenovo/widget/DrawerLayout;->mLockModeLeft:I

    iput v6, v4, Llenovo/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1507
    iget v6, p0, Llenovo/widget/DrawerLayout;->mLockModeRight:I

    iput v6, v4, Llenovo/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1509
    return-object v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1130
    iget-object v10, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Llenovo/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1131
    iget-object v10, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Llenovo/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1134
    .local v0, "action":I
    const/4 v7, 0x1

    .line 1136
    .local v7, "wantTouchEvents":Z
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    .line 1177
    :goto_0
    :pswitch_0
    return v7

    .line 1138
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1139
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1140
    .local v9, "y":F
    iput v8, p0, Llenovo/widget/DrawerLayout;->mInitialMotionX:F

    .line 1141
    iput v9, p0, Llenovo/widget/DrawerLayout;->mInitialMotionY:F

    .line 1142
    const/4 v10, 0x0

    iput-boolean v10, p0, Llenovo/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1143
    const/4 v10, 0x0

    iput-boolean v10, p0, Llenovo/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1148
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1149
    .restart local v8    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1150
    .restart local v9    # "y":F
    const/4 v4, 0x1

    .line 1151
    .local v4, "peekingOnly":Z
    iget-object v10, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v10, v11, v12}, Llenovo/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v6

    .line 1152
    .local v6, "touchedView":Landroid/view/View;
    if-eqz v6, :cond_0

    invoke-virtual {p0, v6}, Llenovo/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1153
    iget v10, p0, Llenovo/widget/DrawerLayout;->mInitialMotionX:F

    sub-float v1, v8, v10

    .line 1154
    .local v1, "dx":F
    iget v10, p0, Llenovo/widget/DrawerLayout;->mInitialMotionY:F

    sub-float v2, v9, v10

    .line 1155
    .local v2, "dy":F
    iget-object v10, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v10}, Llenovo/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 1156
    .local v5, "slop":I
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    mul-int v11, v5, v5

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 1158
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v3

    .line 1159
    .local v3, "openDrawer":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1160
    invoke-virtual {p0, v3}, Llenovo/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    .line 1164
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v5    # "slop":I
    :cond_0
    :goto_1
    invoke-virtual {p0, v4}, Llenovo/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1165
    const/4 v10, 0x0

    iput-boolean v10, p0, Llenovo/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_0

    .line 1160
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v3    # "openDrawer":Landroid/view/View;
    .restart local v5    # "slop":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1170
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v4    # "peekingOnly":Z
    .end local v5    # "slop":I
    .end local v6    # "touchedView":Landroid/view/View;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Llenovo/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1171
    const/4 v10, 0x0

    iput-boolean v10, p0, Llenovo/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1172
    const/4 v10, 0x0

    iput-boolean v10, p0, Llenovo/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 1270
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1271
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1272
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Llenovo/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1275
    :cond_0
    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1276
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1238
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1239
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a sliding drawer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1242
    :cond_0
    iget-boolean v2, p0, Llenovo/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v2, :cond_2

    .line 1243
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 1244
    .local v1, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1245
    iput-boolean v3, v1, Llenovo/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1247
    invoke-virtual {p0, v4}, Llenovo/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1248
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1249
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1251
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1260
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->invalidate()V

    .line 1261
    return-void

    .line 1253
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Llenovo/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1254
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, p1, v4, v3}, Llenovo/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1256
    :cond_3
    iget-object v2, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Llenovo/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1185
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1187
    iput-boolean p1, p0, Llenovo/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1188
    if-eqz p1, :cond_0

    .line 1189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1191
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Llenovo/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 939
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 941
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "draw"    # Z

    .prologue
    .line 344
    iput-object p1, p0, Llenovo/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 345
    iput-boolean p2, p0, Llenovo/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 346
    if-nez p2, :cond_0

    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 347
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->requestLayout()V

    .line 348
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawerListener(Llenovo/widget/DrawerLayout$DrawerListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/widget/DrawerLayout$DrawerListener;

    .prologue
    .line 403
    iput-object p1, p0, Llenovo/widget/DrawerLayout;->mListener:Llenovo/widget/DrawerLayout$DrawerListener;

    .line 404
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    .prologue
    .line 420
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Llenovo/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 421
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Llenovo/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 422
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 6
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    .prologue
    const/4 v5, 0x3

    .line 444
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getLayoutDirection()I

    move-result v4

    invoke-static {p2, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 445
    .local v0, "absGravity":I
    if-ne v0, v5, :cond_3

    .line 446
    iput p1, p0, Llenovo/widget/DrawerLayout;->mLockModeLeft:I

    .line 450
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 452
    if-ne v0, v5, :cond_4

    iget-object v1, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    .line 453
    .local v1, "helper":Llenovo/widget/ViewDragHelper;
    :goto_1
    invoke-virtual {v1}, Llenovo/widget/ViewDragHelper;->cancel()V

    .line 455
    .end local v1    # "helper":Llenovo/widget/ViewDragHelper;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 470
    :cond_2
    :goto_2
    return-void

    .line 447
    :cond_3
    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    .line 448
    iput p1, p0, Llenovo/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 452
    :cond_4
    iget-object v1, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    goto :goto_1

    .line 457
    :pswitch_0
    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    .line 458
    .local v3, "toOpen":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 459
    invoke-virtual {p0, v3}, Llenovo/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 463
    .end local v3    # "toOpen":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0, v0}, Llenovo/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    .line 464
    .local v2, "toClose":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 465
    invoke-virtual {p0, v2}, Llenovo/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 4
    .param p1, "lockMode"    # I
    .param p2, "drawerView"    # Landroid/view/View;

    .prologue
    .line 491
    invoke-virtual {p0, p2}, Llenovo/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drawer with appropriate layout_gravity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llenovo/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Llenovo/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 496
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Llenovo/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 497
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 383
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Llenovo/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 384
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I

    .prologue
    .line 364
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {p2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 365
    .local v0, "absGravity":I
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 366
    iput-object p1, p0, Llenovo/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 367
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->invalidate()V

    .line 369
    :cond_0
    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 370
    iput-object p1, p0, Llenovo/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 371
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->invalidate()V

    .line 373
    :cond_1
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "edgeGravity"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 546
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 548
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 549
    iput-object p2, p0, Llenovo/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 551
    iput-object p2, p0, Llenovo/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 667
    .local v0, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 673
    :goto_0
    return-void

    .line 671
    :cond_0
    iput p2, v0, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 672
    invoke-virtual {p0, p1, p2}, Llenovo/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 392
    iput p1, p0, Llenovo/widget/DrawerLayout;->mScrimColor:I

    .line 393
    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->invalidate()V

    .line 394
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 984
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Llenovo/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Llenovo/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 985
    return-void

    .line 984
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 974
    iput-object p1, p0, Llenovo/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 975
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 995
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Llenovo/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 996
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 7
    .param p1, "forGravity"    # I
    .param p2, "activeState"    # I
    .param p3, "activeDrawer"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 580
    iget-object v4, p0, Llenovo/widget/DrawerLayout;->mLeftDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v4}, Llenovo/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    .line 581
    .local v0, "leftState":I
    iget-object v4, p0, Llenovo/widget/DrawerLayout;->mRightDragger:Llenovo/widget/ViewDragHelper;

    invoke-virtual {v4}, Llenovo/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    .line 584
    .local v2, "rightState":I
    if-eq v0, v5, :cond_0

    if-ne v2, v5, :cond_3

    .line 585
    :cond_0
    const/4 v3, 0x1

    .line 592
    .local v3, "state":I
    :goto_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 593
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llenovo/widget/DrawerLayout$LayoutParams;

    .line 594
    .local v1, "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    iget v4, v1, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    .line 595
    invoke-virtual {p0, p3}, Llenovo/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 601
    .end local v1    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :cond_1
    :goto_1
    iget v4, p0, Llenovo/widget/DrawerLayout;->mDrawerState:I

    if-eq v3, v4, :cond_2

    .line 602
    iput v3, p0, Llenovo/widget/DrawerLayout;->mDrawerState:I

    .line 604
    iget-object v4, p0, Llenovo/widget/DrawerLayout;->mListener:Llenovo/widget/DrawerLayout$DrawerListener;

    if-eqz v4, :cond_2

    .line 605
    iget-object v4, p0, Llenovo/widget/DrawerLayout;->mListener:Llenovo/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, v3}, Llenovo/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 608
    :cond_2
    return-void

    .line 586
    .end local v3    # "state":I
    :cond_3
    if-eq v0, v6, :cond_4

    if-ne v2, v6, :cond_5

    .line 587
    :cond_4
    const/4 v3, 0x2

    .restart local v3    # "state":I
    goto :goto_0

    .line 589
    .end local v3    # "state":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "state":I
    goto :goto_0

    .line 596
    .restart local v1    # "lp":Llenovo/widget/DrawerLayout$LayoutParams;
    :cond_6
    iget v4, v1, Llenovo/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 597
    invoke-virtual {p0, p3}, Llenovo/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1
.end method
