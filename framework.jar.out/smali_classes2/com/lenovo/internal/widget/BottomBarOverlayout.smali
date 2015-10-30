.class public Lcom/lenovo/internal/widget/BottomBarOverlayout;
.super Landroid/view/ViewGroup;
.source "BottomBarOverlayout.java"

# interfaces
.implements Lcom/lenovo/internal/widget/OverlayLayoutHelp;
.implements Lcom/lenovo/internal/widget/FitWindowsViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;,
        Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I


# instance fields
.field private mActionBarBottom:Landroid/view/View;

.field private mActionBarContextView:Landroid/view/View;

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mBottomBarHeight:I

.field private mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mListMaxHeigt:I

.field private mMaskView:Landroid/view/View;

.field mOptionMenuListView:Landroid/widget/ListView;

.field private mOverlayMode:Z

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10102eb
        0x1010059
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContentInsets:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 378
    new-instance v0, Lcom/lenovo/internal/widget/BottomBarOverlayout$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout$1;-><init>(Lcom/lenovo/internal/widget/BottomBarOverlayout;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 71
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContentInsets:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 378
    new-instance v0, Lcom/lenovo/internal/widget/BottomBarOverlayout$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout$1;-><init>(Lcom/lenovo/internal/widget/BottomBarOverlayout;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 76
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/BottomBarOverlayout;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/BottomBarOverlayout;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    return-object v0
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    .line 114
    .local v1, "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 116
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->leftMargin:I

    .line 118
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 119
    const/4 v0, 0x1

    .line 120
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->topMargin:I

    .line 122
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 123
    const/4 v0, 0x1

    .line 124
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->rightMargin:I

    .line 126
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 127
    const/4 v0, 0x1

    .line 128
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->bottomMargin:I

    .line 130
    :cond_3
    return v0
.end method

.method public static getBottomBarOverlayout(Landroid/view/View;)Lcom/lenovo/internal/widget/BottomBarOverlayout;
    .locals 2
    .param p0, "paramView"    # Landroid/view/View;

    .prologue
    .line 386
    move-object v0, p0

    .line 387
    .local v0, "localView":Landroid/view/View;
    :goto_0
    instance-of v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;

    if-nez v1, :cond_1

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "localView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "localView":Landroid/view/View;
    goto :goto_0

    .line 391
    :cond_0
    const/4 v0, 0x0

    .line 395
    :cond_1
    if-eqz v0, :cond_2

    .line 396
    check-cast v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;

    .line 398
    .end local v0    # "localView":Landroid/view/View;
    :goto_1
    return-object v0

    .restart local v0    # "localView":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/lenovo/internal/widget/BottomBarOverlayout;->ATTRS:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x908006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBottomBarHeight:I

    .line 82
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x908004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mListMaxHeigt:I

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v2, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->setWillNotDraw(Z)V

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 189
    instance-of v0, p1, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    return v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 14
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->pullChildren()V

    .line 137
    move-object v2, p1

    .line 141
    .local v2, "systemInsets":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    if-nez v0, :cond_4

    move v13, v5

    .line 143
    .local v13, "changed":Z
    :goto_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 144
    iget-object v7, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    move-object v6, p0

    move-object v8, v2

    move v9, v3

    move v10, v5

    move v11, v3

    move v12, v3

    invoke-direct/range {v6 .. v12}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v13, v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOptionMenuListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOptionMenuListView:Landroid/widget/ListView;

    move-object v0, p0

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v13, v0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 155
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 156
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    const/4 v13, 0x1

    .line 158
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    :cond_2
    if-eqz v13, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->requestLayout()V

    .line 169
    :cond_3
    return v3

    .line 141
    .end local v13    # "changed":Z
    :cond_4
    iget-object v1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    move-object v0, p0

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v13

    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->generateDefaultLayoutParams()Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 174
    new-instance v0, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 184
    new-instance v0, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 179
    new-instance v0, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 402
    new-instance v0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;-><init>(Lcom/lenovo/internal/widget/BottomBarOverlayout;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public initBottomBar()V
    .locals 0

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->pullChildren()V

    .line 347
    return-void
.end method

.method public isInOverlayMode()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOverlayMode:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->init(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->requestApplyInsets()V

    .line 108
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 92
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getChildCount()I

    move-result v3

    .line 318
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getPaddingLeft()I

    move-result v8

    .line 320
    .local v8, "parentLeft":I
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getPaddingTop()I

    move-result v9

    .line 321
    .local v9, "parentTop":I
    sub-int v11, p5, p3

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getPaddingBottom()I

    move-result v12

    sub-int v7, v11, v12

    .line 323
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 324
    invoke-virtual {p0, v5}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    .line 328
    .local v6, "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 329
    .local v10, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 331
    .local v4, "height":I
    iget v11, v6, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v11

    .line 333
    .local v1, "childLeft":I
    iget-object v11, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    if-ne v0, v11, :cond_1

    .line 334
    sub-int v11, v7, v4

    iget v12, v6, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->bottomMargin:I

    sub-int v2, v11, v12

    .line 340
    .local v2, "childTop":I
    :goto_1
    add-int v11, v1, v10

    add-int v12, v2, v4

    invoke-virtual {v0, v1, v2, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 323
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    .end local v10    # "width":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 335
    .restart local v1    # "childLeft":I
    .restart local v4    # "height":I
    .restart local v6    # "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    .restart local v10    # "width":I
    :cond_1
    iget-object v11, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOptionMenuListView:Landroid/widget/ListView;

    if-ne v0, v11, :cond_2

    .line 336
    sub-int v11, v7, v4

    iget-object v12, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v6, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->bottomMargin:I

    sub-int v2, v11, v12

    .restart local v2    # "childTop":I
    goto :goto_1

    .line 338
    .end local v2    # "childTop":I
    :cond_2
    iget v11, v6, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->topMargin:I

    add-int v2, v9, v11

    .restart local v2    # "childTop":I
    goto :goto_1

    .line 343
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    .end local v10    # "width":I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->pullChildren()V

    .line 196
    const/4 v12, 0x0

    .line 197
    .local v12, "maxHeight":I
    const/4 v13, 0x0

    .line 198
    .local v13, "maxWidth":I
    const/4 v9, 0x0

    .line 200
    .local v9, "childState":I
    const/4 v15, 0x0

    .line 201
    .local v15, "topInset":I
    const/4 v8, 0x0

    .line 204
    .local v8, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    .line 207
    .local v11, "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 216
    .end local v11    # "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    .line 219
    .restart local v11    # "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 227
    .end local v11    # "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getWindowSystemUiVisibility()I

    move-result v16

    .line 228
    .local v16, "vis":I
    move/from16 v0, v16

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    const/4 v14, 0x1

    .line 229
    .local v14, "stable":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 233
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 234
    if-eqz v14, :cond_8

    .line 235
    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBottomBarHeight:I

    .line 251
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 253
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOverlayMode:Z

    if-nez v1, :cond_a

    if-nez v14, :cond_a

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 264
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 275
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;

    .line 277
    .restart local v11    # "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ContentFrameLayout;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 288
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOptionMenuListView:Landroid/widget/ListView;

    if-eqz v1, :cond_6

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOptionMenuListView:Landroid/widget/ListView;

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->measure(II)V

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOptionMenuListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mListMaxHeigt:I

    if-le v1, v2, :cond_6

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOptionMenuListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mListMaxHeigt:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->measure(II)V

    .line 301
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 308
    move/from16 v0, p1

    invoke-static {v13, v0, v9}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v9, 0x10

    move/from16 v0, p2

    invoke-static {v12, v0, v2}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->setMeasuredDimension(II)V

    .line 312
    return-void

    .line 228
    .end local v11    # "lp":Lcom/lenovo/internal/widget/BottomBarOverlayout$LayoutParams;
    .end local v14    # "stable":Z
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 237
    .restart local v14    # "stable":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 238
    .local v10, "height":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBottomBarHeight:I

    if-lt v10, v1, :cond_9

    .line 239
    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mBottomBarHeight:I

    goto/16 :goto_1

    .line 241
    :cond_9
    move v8, v10

    goto/16 :goto_1

    .line 261
    .end local v10    # "height":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 350
    const v0, 0x90c0002

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ContentFrameLayout;

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    .line 351
    const v0, 0x90c0003

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;

    .line 352
    const v0, 0x90c000a

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    .line 353
    const v0, 0x90c0032

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;

    .line 355
    :cond_0
    return-void
.end method

.method public setBottomBarOverlayout(Lcom/lenovo/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "mActionModeView"    # Lcom/lenovo/internal/widget/ActionBarContextView;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarContextView:Landroid/view/View;

    .line 472
    return-void
.end method

.method public setOnFitSystemWindowsListener(Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .prologue
    .line 486
    return-void
.end method

.method public setOptionMenuList(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "list"    # Landroid/widget/ListView;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOptionMenuListView:Landroid/widget/ListView;

    .line 479
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOptionMenuListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOptionMenuListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->addView(Landroid/view/View;)V

    .line 482
    :cond_0
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 0
    .param p1, "overlayMode"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout;->mOverlayMode:Z

    .line 97
    return-void
.end method
