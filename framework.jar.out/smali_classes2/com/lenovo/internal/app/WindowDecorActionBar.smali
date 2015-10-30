.class public Lcom/lenovo/internal/app/WindowDecorActionBar;
.super Llenovo/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;,
        Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;,
        Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field private final mChildIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Llenovo/view/ActionMode;

.field mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field mHasEmbeddedTabsSup:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mHideOnContentScroll:Z

.field mIsActionMode:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

.field private mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

.field mTabListener:Landroid/app/ActionBar$TabListener;

.field private mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mViewPager:Llenovo/view/ViewPager;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;ZZ)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z
    .param p3, "hasEmbededTabsSup"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    invoke-direct {p0}, Llenovo/app/ActionBar;-><init>()V

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 106
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 129
    iput v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 131
    iput-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 136
    iput-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 141
    iput-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    .line 142
    iput-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 143
    iput-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    .line 145
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$1;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$1;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 168
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$2;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$2;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 176
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$3;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$3;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    .line 1808
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$4;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$4;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 1840
    new-instance v2, Lcom/lenovo/internal/app/WindowDecorActionBar$5;

    invoke-direct {v2, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$5;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 190
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 191
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 192
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "decor":Landroid/view/View;
    iput-boolean p3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    .line 194
    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 195
    if-nez p2, :cond_0

    .line 196
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 198
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Llenovo/app/ActionBar;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 129
    iput v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 131
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 136
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 141
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    .line 142
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 143
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    .line 145
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$1;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 168
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$2;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 176
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$3;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    .line 1808
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$4;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 1840
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$5;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$5;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 201
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Llenovo/app/ActionBar;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 129
    iput v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 131
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 136
    iput-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 141
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    .line 142
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 143
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    .line 145
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$1;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 168
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$2;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 176
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$3;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    .line 1808
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$4;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$4;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    .line 1840
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$5;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$5;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 209
    sget-boolean v0, Lcom/lenovo/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mChildIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/internal/app/WindowDecorActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/internal/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 870
    if-eqz p2, :cond_1

    .line 875
    :cond_0
    :goto_0
    return v0

    .line 872
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 873
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 525
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 528
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 529
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 641
    move-object v3, p1

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 642
    .local v3, "tabi":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 644
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 645
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 648
    :cond_0
    invoke-virtual {v3, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 649
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 651
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 652
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 653
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    :cond_1
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "hasOptionMenu"    # Z

    .prologue
    .line 1914
    move-object v3, p1

    check-cast v3, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1915
    .local v3, "tabi":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 1917
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 1918
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1921
    :cond_0
    invoke-virtual {v3, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 1922
    const/4 v4, 0x1

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v3, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1802(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1923
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v3, p3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1902(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1925
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1927
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1928
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1929
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 1928
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1931
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 350
    :cond_0
    new-instance v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, "tabScroller":Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 354
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/lenovo/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 366
    :goto_1
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .line 368
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setHasEmbeddedTabs(Z)V

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 357
    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 358
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 364
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTabContainer(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 362
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/lenovo/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 270
    instance-of v0, p1, Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lcom/lenovo/internal/widget/DecorToolbar;

    .line 273
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 272
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Llenovo/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 273
    check-cast p1, Llenovo/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Llenovo/widget/Toolbar;->getWrapper()Lcom/lenovo/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 275
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 823
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 824
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 825
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 828
    :cond_0
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 830
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 13
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 214
    const v8, 0x90c0008

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    .line 215
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v8, :cond_0

    .line 216
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v8, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 218
    :cond_0
    const v8, 0x90c0016

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/lenovo/internal/widget/DecorToolbar;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    .line 219
    const v8, 0x90c000b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/internal/widget/ActionBarContextView;

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 221
    const v8, 0x90c0017

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/internal/widget/ActionBarContainer;

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    .line 224
    const v8, 0x90c0003

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/internal/widget/ActionBarContainer;

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    .line 225
    const v8, 0x90c0013

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 226
    .local v7, "view":Landroid/view/View;
    instance-of v8, v7, Llenovo/view/ViewPager;

    if-eqz v8, :cond_1

    check-cast v7, Llenovo/view/ViewPager;

    .end local v7    # "view":Landroid/view/View;
    iput-object v7, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    .line 228
    :cond_1
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-nez v8, :cond_3

    .line 229
    :cond_2
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " can only be used "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "with a compatible window decor layout"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 233
    :cond_3
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v8}, Lcom/lenovo/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 234
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    sget-object v11, Lcom/lenovo/internal/R$styleable;->Theme:[I

    invoke-virtual {v8, v11}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 235
    .local v2, "array":Landroid/content/res/TypedArray;
    const/4 v8, 0x2

    invoke-virtual {v2, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    .line 236
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v8}, Lcom/lenovo/internal/widget/DecorToolbar;->isSplitWhenNarrow()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x90a0005

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_8

    move v5, v9

    .line 243
    .local v5, "hasShowSplit":Z
    :goto_0
    if-eqz v5, :cond_9

    move v8, v9

    :goto_1
    iput v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    .line 248
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v8}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v3

    .line 249
    .local v3, "current":I
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_a

    move v6, v9

    .line 250
    .local v6, "homeAsUp":Z
    :goto_2
    if-eqz v6, :cond_4

    .line 251
    iput-boolean v9, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 254
    :cond_4
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 255
    .local v1, "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v6, :cond_b

    :cond_5
    move v8, v9

    :goto_3
    invoke-virtual {p0, v8}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 257
    invoke-virtual {v1}, Lcom/lenovo/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    if-eqz v8, :cond_c

    :cond_6
    :goto_4
    invoke-direct {p0, v9}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 259
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v11, Lcom/lenovo/internal/R$styleable;->ActionBar:[I

    const v12, 0x10102ce

    invoke-virtual {v8, v9, v11, v12, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 262
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x9080064

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 263
    .local v4, "elevation":I
    if-eqz v4, :cond_7

    .line 264
    int-to-float v8, v4

    invoke-virtual {p0, v8}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setElevation(F)V

    .line 266
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    .end local v3    # "current":I
    .end local v4    # "elevation":I
    .end local v5    # "hasShowSplit":Z
    .end local v6    # "homeAsUp":Z
    :cond_8
    move v5, v10

    .line 241
    goto :goto_0

    .restart local v5    # "hasShowSplit":Z
    :cond_9
    move v8, v10

    .line 243
    goto :goto_1

    .restart local v3    # "current":I
    :cond_a
    move v6, v10

    .line 249
    goto :goto_2

    .restart local v1    # "abp":Lcom/lenovo/internal/view/ActionBarPolicy;
    .restart local v6    # "homeAsUp":Z
    :cond_b
    move v8, v10

    .line 255
    goto :goto_3

    :cond_c
    move v9, v10

    .line 257
    goto :goto_4
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 323
    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v3, v4}, Lcom/lenovo/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 325
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTabContainer(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 330
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 331
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v3}, Lcom/lenovo/internal/widget/DecorToolbar;->isInExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 332
    if-eqz v0, :cond_3

    .line 333
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 334
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 335
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 341
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Lcom/lenovo/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 342
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 343
    return-void

    .line 327
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTabContainer(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    .line 328
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Lcom/lenovo/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 330
    goto :goto_1

    .line 338
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 341
    goto :goto_3

    :cond_5
    move v1, v2

    .line 342
    goto :goto_4
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 795
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 796
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 797
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 800
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 802
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 881
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 883
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 884
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 885
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 886
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->doShow(Z)V

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 890
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 891
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addFragmentTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "hasOptionMenu"    # Z

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addFragmentTab(Landroid/app/ActionBar$Tab;IZZ)V

    .line 1885
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;IZZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z
    .param p4, "hasOptionMenu"    # Z

    .prologue
    .line 1902
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1903
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 1904
    invoke-direct {p0, p1, p2, p4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 1905
    if-eqz p3, :cond_0

    .line 1906
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    .line 1909
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 1910
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setUpdateMenuWhenScroller(Z)V

    .line 1911
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "hasOptionMenu"    # Z

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addFragmentTab(Landroid/app/ActionBar$Tab;ZZ)V

    .line 1880
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;ZZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z
    .param p3, "hasOptionMenu"    # Z

    .prologue
    .line 1889
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1890
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 1891
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 1892
    if-eqz p2, :cond_0

    .line 1893
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    .line 1896
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 1897
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setUpdateMenuWhenScroller(Z)V

    .line 1898
    return-void
.end method

.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 660
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 665
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 681
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 682
    invoke-direct {p0, p1, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 683
    if-eqz p3, :cond_0

    .line 684
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 687
    :cond_1
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 670
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 671
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 672
    if-eqz p2, :cond_0

    .line 673
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->notifyDataSetChanged()V

    .line 676
    :cond_1
    return-void
.end method

.method public animateToMode(Z)V
    .locals 4
    .param p1, "toActionMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1009
    if-eqz p1, :cond_0

    .line 1010
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->showForActionMode()V

    .line 1015
    :goto_0
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/lenovo/internal/widget/DecorToolbar;->animateToVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    .line 1018
    return-void

    .line 1012
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1015
    goto :goto_1

    :cond_2
    move v2, v1

    .line 1016
    goto :goto_2
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->collapseActionView()V

    .line 1077
    const/4 v0, 0x1

    .line 1079
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Llenovo/view/ActionMode;

    invoke-interface {v0, v1}, Llenovo/view/ActionMode$Callback;->onDestroyActionMode(Llenovo/view/ActionMode;)V

    .line 374
    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Llenovo/view/ActionMode;

    .line 375
    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Llenovo/view/ActionMode$Callback;

    .line 377
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 445
    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 454
    :cond_0
    return-void

    .line 448
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 450
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 451
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 452
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v8, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 964
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 965
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 968
    :cond_0
    iget v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_5

    .line 970
    :cond_1
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 971
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 972
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 973
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 974
    .local v3, "endingY":F
    if-eqz p1, :cond_2

    .line 975
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 976
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 977
    aget v5, v4, v9

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 979
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 980
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 981
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 982
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 983
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 986
    :cond_3
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 987
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 988
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    iget-object v8, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 991
    :cond_4
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0x10a0005

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 993
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 994
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 995
    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 996
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1000
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :goto_0
    return-void

    .line 998
    :cond_5
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 975
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v11, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 897
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 898
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 900
    :cond_0
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 902
    iget v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_6

    .line 905
    :cond_1
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 906
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 907
    .local v3, "startingY":F
    if-eqz p1, :cond_2

    .line 908
    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 909
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 910
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 912
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 913
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 914
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 915
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 916
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 917
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 918
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v11, [F

    aput v3, v7, v9

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 922
    :cond_3
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_4

    .line 925
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 926
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 927
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 929
    :cond_4
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0x10a0006

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 931
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 939
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 940
    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 941
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 958
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :goto_0
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_5

    .line 959
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 961
    :cond_5
    return-void

    .line 943
    :cond_6
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 944
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 945
    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 946
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 949
    :cond_7
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_8

    .line 952
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/lenovo/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 953
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 954
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 956
    :cond_8
    iget-object v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 908
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 780
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 781
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 1937
    :cond_0
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1441
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1437
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1439
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    goto :goto_0

    .line 1435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1423
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1429
    :cond_0
    :goto_0
    return v0

    .line 1425
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1427
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 1423
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabFragmentAt(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->getItemAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 1021
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 1022
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1023
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1024
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1025
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 1027
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    .line 1028
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 1033
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 1030
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 813
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 815
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 816
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setShow(Z)V

    .line 820
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 833
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 834
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 835
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 837
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 1005
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockFragment(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->setLockViewPager(Z)V

    .line 1504
    :cond_0
    return-void
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 692
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v1, :cond_0

    .line 693
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    .line 694
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 698
    .end local v0    # "tab":Landroid/app/ActionBar$Tab;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    goto :goto_0
.end method

.method public newTab(Landroid/os/Bundle;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1858
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1859
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    .line 1860
    .local v0, "tab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$2102(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1861
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1864
    .end local v0    # "tab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 294
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/lenovo/internal/view/ActionBarPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabsSup:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mWindowNoTitle:Z

    if-eqz v2, :cond_3

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 295
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorToolbar;->isSplitWhenNarrow()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x90a0005

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 297
    .local v0, "hasShowSplit":Z
    :goto_1
    if-eqz v0, :cond_5

    move v2, v3

    :goto_2
    iput v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    .line 299
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->mRevertTag:Z
    invoke-static {v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;->access$702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;Z)Z

    .line 300
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    if-eqz v2, :cond_6

    .line 301
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 317
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v2, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->onActivityOrientationChange(Landroid/content/res/Configuration;)V

    .line 318
    return-void

    .end local v0    # "hasShowSplit":Z
    :cond_3
    move v2, v4

    .line 294
    goto :goto_0

    :cond_4
    move v0, v4

    .line 295
    goto :goto_1

    .restart local v0    # "hasShowSplit":Z
    :cond_5
    move v2, v4

    .line 297
    goto :goto_2

    .line 304
    :cond_6
    iget v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v2, :cond_2

    .line 305
    iget-boolean v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v6, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v2, v5, v6}, Lcom/lenovo/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v1

    .line 307
    .local v1, "shown":Z
    if-eqz v1, :cond_7

    .line 308
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v2, v3, :cond_2

    .line 309
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_3

    .line 312
    :cond_7
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_3
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1067
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 1071
    return-void
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 398
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 399
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result v0

    .line 429
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 413
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 414
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->hideOverflowMenu()Z

    :goto_1
    move v0, v1

    .line 419
    goto :goto_0

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_1

    .line 421
    :cond_4
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 422
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    :cond_5
    :goto_2
    move v0, v1

    .line 429
    goto :goto_0

    .line 424
    :cond_6
    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 425
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->show()V

    .line 426
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->openOptionsMenu()Z

    goto :goto_2
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 381
    return-void
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->cleanupTabs()V

    .line 518
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 442
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 703
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->removeTabAt(I)V

    .line 704
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 708
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v3

    .line 715
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 716
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 717
    .local v2, "removedTab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v2, :cond_2

    .line 718
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 721
    :cond_2
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 722
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 723
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 713
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    .line 726
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 727
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    const/4 v2, -0x1

    .line 733
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 734
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 767
    :cond_1
    :goto_0
    return-void

    .line 738
    :cond_2
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v3}, Lcom/lenovo/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    .line 741
    .local v1, "trans":Landroid/app/FragmentTransaction;
    :goto_1
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-ne v3, p1, :cond_5

    .line 742
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_3

    .line 743
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v2, v3, v1}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 744
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 764
    :cond_3
    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 765
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 738
    .end local v1    # "trans":Landroid/app/FragmentTransaction;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v1

    goto :goto_1

    .line 747
    .restart local v1    # "trans":Landroid/app/FragmentTransaction;
    :cond_5
    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_6
    invoke-virtual {v3, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 748
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_7

    .line 749
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v2, v3, v1}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_7
    move-object v2, p1

    .line 751
    check-cast v2, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    iput-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 752
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_3

    .line 753
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v2, v3, v1}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 756
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v2, :cond_3

    .line 757
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    .line 758
    .local v0, "position":I
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v2, v0}, Llenovo/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2
.end method

.method public setActionModeSeletedAllTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSeletedAllTitle(Ljava/lang/CharSequence;)V

    .line 1870
    return-void
.end method

.method public setActionModeTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1875
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 563
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setPrimaryBackgroundColor(I)V

    .line 564
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setBackgroundColor(I)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setBackgroundColor(I)V

    .line 570
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 561
    return-void
.end method

.method public setCanTabScroller(Z)V
    .locals 1
    .param p1, "scroller"    # Z

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->canViewpagerScroller(Z)V

    .line 1511
    :cond_0
    return-void
.end method

.method public setContainerBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setContainerBackground(Landroid/graphics/drawable/Drawable;)V

    .line 578
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 460
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1408
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 1412
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1413
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1414
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1541
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1542
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1544
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 474
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 475
    return-void

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 545
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 549
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 552
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 553
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 554
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/lenovo/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 557
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 484
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 485
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 469
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 470
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 479
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 480
    return-void

    .line 479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 464
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 465
    return-void

    .line 464
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 283
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 286
    :cond_0
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 861
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 866
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 841
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 846
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 847
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 1059
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 1054
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 1049
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 489
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 490
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setIcon(I)V

    .line 1515
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1520
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    new-instance v1, Lcom/lenovo/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/lenovo/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1419
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setLogo(I)V

    .line 1529
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1534
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1452
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1453
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 1460
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_0

    .line 1461
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 1462
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 1466
    packed-switch p1, :pswitch_data_1

    .line 1485
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    if-ne p1, v6, :cond_3

    iget-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Lcom/lenovo/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1486
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-ne p1, v6, :cond_4

    iget-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1487
    return-void

    .line 1455
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1456
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1457
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1469
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v1, :cond_2

    .line 1470
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v1, v3}, Llenovo/view/ViewPager;->setVisibility(I)V

    .line 1472
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOnPageChangeListener:Llenovo/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v4}, Llenovo/view/ViewPager;->setOnInternalPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V

    .line 1473
    new-instance v1, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    .line 1474
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    iget-object v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabsAdapter:Lcom/lenovo/internal/app/WindowDecorActionBar$TabsAdapter;

    invoke-virtual {v1, v4}, Llenovo/view/ViewPager;->setAdapter(Llenovo/view/PagerAdapter;)V

    .line 1477
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1478
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1479
    iget v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    if-eq v1, v5, :cond_1

    .line 1480
    iget v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1481
    iput v5, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    :cond_3
    move v1, v3

    .line 1485
    goto :goto_2

    :cond_4
    move v2, v3

    .line 1486
    goto :goto_3

    .line 1453
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1466
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setOffscreenPageLimit(I)V
    .locals 2
    .param p1, "limit"    # I

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1968
    :goto_0
    return-void

    .line 1965
    :cond_0
    const-string v0, "liqftest"

    const-string v1, "mViewPager was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V
    .locals 2
    .param p1, "onPageChangeListener"    # Llenovo/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1972
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v0, p1}, Llenovo/view/ViewPager;->setOnPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V

    .line 1977
    :goto_0
    return-void

    .line 1974
    :cond_0
    const-string v0, "liqftest"

    const-string v1, "mViewPager was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOptionMenuVisibility(IZ)V
    .locals 5
    .param p1, "tabIndex"    # I
    .param p2, "hasOptionMenu"    # Z

    .prologue
    .line 1944
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .line 1945
    .local v1, "tabi":Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v1, :cond_2

    .line 1946
    # setter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v1, p2}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1902(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z

    .line 1947
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;

    move-result-object v0

    .line 1948
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1949
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1950
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x90c0018

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1951
    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1800(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1952
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x90c0019

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z
    invoke-static {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->access$1900(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1954
    :cond_0
    invoke-static {v0, p2}, Lcom/lenovo/internal/widget/ViewUtils;->setFragmentMenuVisibility(Landroid/app/Fragment;Z)V

    .line 1957
    :cond_1
    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v2}, Llenovo/view/ViewPager;->requestLayout()V

    .line 1959
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 514
    :goto_0
    return-void

    .line 508
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 392
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 395
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 584
    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContainerView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 574
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 542
    return-void
.end method

.method public setTabImageColor(II)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "color"    # I

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setTabViewImageColor(II)V

    .line 1941
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 495
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 533
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 538
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 785
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 786
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 787
    invoke-direct {p0, v1}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 788
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->setShow(Z)V

    .line 792
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 807
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 809
    :cond_0
    return-void
.end method

.method public startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 5
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 607
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v1}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->setActivity(Landroid/app/Activity;)V

    .line 612
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v3}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 613
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->killMode()V

    .line 614
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/lenovo/internal/app/WindowDecorActionBar;Llenovo/view/ActionMode$Callback;)V

    .line 615
    .local v0, "mode":Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 617
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->initForMode(Llenovo/view/ActionMode;)V

    .line 618
    iput-boolean v4, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mIsActionMode:Z

    .line 619
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-interface {p1}, Llenovo/view/ActionMode$Callback;->isEditorCallBack()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->hideSelectedAll(Z)V

    .line 620
    invoke-virtual {p0, v4}, Lcom/lenovo/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 623
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mSplitView:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 628
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 629
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 634
    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar;->mActionMode:Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;

    .line 637
    .end local v0    # "mode":Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/lenovo/internal/app/WindowDecorActionBar$ActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
