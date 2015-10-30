.class public Lcom/lenovo/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Llenovo/widget/PopupWindow$OnDismissListener;
.implements Lcom/lenovo/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;,
        Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x9040022

.field public static final LIST_TRANSLATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_TRANSLATION_Y_HIDE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isShowing:Z

.field private final mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field final mChildHeightSpec:I

.field final mChildWidthSpec:I

.field private final mContext:Landroid/content/Context;

.field mDissListener:Landroid/view/View$OnClickListener;

.field mForceShowIcon:Z

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mInflater:Landroid/view/LayoutInflater;

.field mListCount:I

.field private mListView:Landroid/widget/ListView;

.field private mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 522
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$2;

    const-string v1, "list_translationY"

    invoke-direct {v0, v1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->LIST_TRANSLATION_Y:Landroid/util/Property;

    .line 534
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$3;

    const-string v1, "list_translationY"

    invoke-direct {v0, v1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->LIST_TRANSLATION_Y_HIDE:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    .line 73
    const/4 v5, 0x0

    const v6, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/widget/ListView;ZI)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    .line 77
    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/widget/ListView;ZI)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/widget/ListView;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "list"    # Landroid/widget/ListView;
    .param p5, "overflowOnly"    # Z
    .param p6, "popupStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-boolean v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing:Z

    .line 483
    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListCount:I

    .line 516
    new-instance v1, Lcom/lenovo/internal/view/menu/MenuPopupHelper$1;

    invoke-direct {v1, p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$1;-><init>(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)V

    iput-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mDissListener:Landroid/view/View$OnClickListener;

    .line 82
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 84
    iput-object p4, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 86
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mChildWidthSpec:I

    .line 87
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mChildHeightSpec:I

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    iput-object p2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 91
    new-instance v1, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/lenovo/internal/view/menu/MenuPopupHelper;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    iput-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 92
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    :cond_0
    iput-boolean p5, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 95
    iput-object p3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 98
    invoke-virtual {p2, p0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 401
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing:Z

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 403
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 405
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mChildWidthSpec:I

    iget v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mChildHeightSpec:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->measure(II)V

    .line 408
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing:Z

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing:Z

    .line 155
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->initAnimator()V

    .line 156
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 160
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 161
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 163
    :cond_1
    return-void
.end method

.method public expandItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method getActionMenuView(Landroid/view/View;)Llenovo/widget/ActionMenuView;
    .locals 2
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 412
    move-object v0, p1

    .line 413
    .local v0, "localView":Landroid/view/View;
    :goto_0
    instance-of v1, v0, Llenovo/widget/ActionMenuView;

    if-nez v1, :cond_1

    .line 414
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "localView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "localView":Landroid/view/View;
    goto :goto_0

    .line 417
    :cond_0
    const/4 v0, 0x0

    .line 421
    :cond_1
    if-eqz v0, :cond_2

    .line 422
    check-cast v0, Llenovo/widget/ActionMenuView;

    .line 424
    .end local v0    # "localView":Landroid/view/View;
    :goto_1
    return-object v0

    .restart local v0    # "localView":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initAnimator()V
    .locals 12

    .prologue
    .line 485
    iget-object v8, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v8, :cond_2

    .line 486
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 487
    .local v6, "show":Landroid/animation/AnimatorSet;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 488
    .local v3, "hide":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 490
    .local v1, "animatorHelp":Llenovo/util/AnimatorHelp;
    iget-object v8, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    invoke-static {v8}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getActionBarOverlayLayout(Landroid/view/View;)Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    move-result-object v5

    .line 491
    .local v5, "overlayLayout":Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
    if-nez v5, :cond_4

    .line 492
    iget-object v8, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    invoke-static {v8}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getBottomBarOverlayout(Landroid/view/View;)Lcom/lenovo/internal/widget/BottomBarOverlayout;

    move-result-object v4

    .line 493
    .local v4, "layout":Lcom/lenovo/internal/widget/BottomBarOverlayout;
    if-eqz v4, :cond_0

    iget-object v8, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mDissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->getMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;

    move-result-object v1

    .line 497
    .end local v4    # "layout":Lcom/lenovo/internal/widget/BottomBarOverlayout;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 498
    invoke-interface {v1}, Llenovo/util/AnimatorHelp;->show()Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 499
    invoke-interface {v1}, Llenovo/util/AnimatorHelp;->hide()Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 502
    :cond_1
    new-instance v7, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;

    iget-object v8, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    invoke-direct {v7, p0, v8}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;-><init>(Lcom/lenovo/internal/view/menu/MenuPopupHelper;Landroid/view/View;)V

    .line 503
    .local v7, "viewAnimator":Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;
    invoke-virtual {v7}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->show()Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 504
    invoke-virtual {v7}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->hide()Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 506
    iput-object v6, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 507
    iput-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 509
    .end local v1    # "animatorHelp":Llenovo/util/AnimatorHelp;
    .end local v3    # "hide":Landroid/animation/AnimatorSet;
    .end local v5    # "overlayLayout":Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
    .end local v6    # "show":Landroid/animation/AnimatorSet;
    .end local v7    # "viewAnimator":Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;
    :cond_2
    iget-object v8, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v8}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result v2

    .line 510
    .local v2, "count":I
    iget v8, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListCount:I

    if-eq v8, v2, :cond_3

    .line 511
    const/16 v8, 0x12c

    mul-int/lit8 v9, v2, 0x14

    add-int/lit16 v9, v9, 0x96

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 512
    .local v0, "animTime":I
    iget-object v8, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v0

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 513
    iget-object v8, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v0

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 515
    .end local v0    # "animTime":I
    :cond_3
    return-void

    .line 495
    .end local v2    # "count":I
    .restart local v1    # "animatorHelp":Llenovo/util/AnimatorHelp;
    .restart local v3    # "hide":Landroid/animation/AnimatorSet;
    .restart local v5    # "overlayLayout":Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
    .restart local v6    # "show":Landroid/animation/AnimatorSet;
    :cond_4
    iget-object v8, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mDissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getMaskAnimator(Landroid/view/View$OnClickListener;)Llenovo/util/AnimatorHelp;

    move-result-object v1

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 208
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing:Z

    return v0
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 266
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->close()V

    .line 167
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 172
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 196
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 203
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 198
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->popshow()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 180
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 181
    .local v0, "adapter":Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;
    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/lenovo/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/lenovo/internal/view/menu/MenuPresenter;I)Z

    .line 182
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 296
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->setMenuBuilder(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 252
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 253
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 255
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popshow()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->buildDropDown()I

    .line 141
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing:Z

    if-nez v0, :cond_1

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->isShowing:Z

    .line 143
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->initAnimator()V

    .line 144
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 148
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 151
    :cond_1
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 109
    return-void
.end method

.method public setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .line 225
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 113
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ListView;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    .line 379
    return-void
.end method

.method public setMenuInit(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eq v0, p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->setMenuBuilder(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 104
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 106
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 124
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 125
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    move v0, v2

    .line 126
    .local v0, "addGlobalListener":Z
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 127
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->popshow()V

    .line 132
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 133
    .end local v0    # "addGlobalListener":Z
    :goto_0
    return v2

    :cond_2
    move v2, v0

    .line 129
    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 220
    :cond_0
    return-void
.end method
