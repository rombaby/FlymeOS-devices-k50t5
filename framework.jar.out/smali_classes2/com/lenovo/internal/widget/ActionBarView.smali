.class public Lcom/lenovo/internal/widget/ActionBarView;
.super Lcom/lenovo/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcom/lenovo/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/lenovo/internal/widget/ActionBarView$HomeView;,
        Lcom/lenovo/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x9f


# instance fields
.field private mBackItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsible:Z

.field private mIsMode:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v3, 0x9040012

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/lenovo/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 138
    const v0, 0x9090010

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 142
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarView$1;-><init>(Lcom/lenovo/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 153
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarView$2;-><init>(Lcom/lenovo/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 1864
    iput-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIsMode:Z

    .line 164
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 169
    sget-object v0, Lcom/lenovo/internal/R$styleable;->ActionBar:[I

    const v1, 0x10102ce

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 172
    .local v7, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0x9

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mNavigationMode:I

    .line 174
    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 175
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 176
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 183
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x9040012

    .line 185
    .local v9, "homeResId":I
    const v0, 0x9040015

    invoke-virtual {v10, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 187
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v10, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    .line 189
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v10, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    .line 190
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 198
    .local v11, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_0

    .line 200
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 205
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 206
    const/16 v0, 0xe

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 207
    const/4 v0, 0x2

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressStyle:I

    .line 208
    const/16 v0, 0x10

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 211
    const/16 v0, 0x11

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 213
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9080065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mItemPadding:I

    .line 215
    const/16 v0, 0xa

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 217
    const/16 v0, 0xc

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 218
    .local v8, "customNavId":I
    if-eqz v8, :cond_1

    .line 219
    invoke-virtual {v10, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 220
    iput v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mNavigationMode:I

    .line 221
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 224
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContentHeight:I

    .line 226
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    new-instance v0, Lcom/lenovo/internal/view/menu/ActionMenuItem;

    const v3, 0x102002c

    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mLogoNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    .line 229
    new-instance v0, Lcom/lenovo/internal/view/menu/ActionMenuItem;

    const v3, 0x1020027

    iget-object v6, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mBackItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    .line 234
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 236
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 239
    invoke-virtual {p0, v12}, Lcom/lenovo/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 242
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mBackItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/internal/widget/ActionBarView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lenovo/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lenovo/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mLogoNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 633
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 634
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 643
    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 644
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 645
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 647
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 648
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9090012

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v2, v6, v8

    aput-object v0, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 657
    :goto_1
    return-object v1

    .line 636
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    .end local v2    # "subtitle":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 637
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 639
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x909000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 652
    .restart local v2    # "subtitle":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9090011

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 657
    goto :goto_1
.end method

.method private configPresenters(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 491
    if-eqz p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 493
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 500
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Llenovo/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 496
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 497
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Llenovo/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 498
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 873
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    .line 874
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 875
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x9040014

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 877
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x90c000d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 878
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x90c0015

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 880
    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 884
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    :cond_1
    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_2

    .line 888
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 890
    :cond_2
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 891
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 906
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    invoke-static {p0}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 907
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 908
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 911
    :cond_4
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_5
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .prologue
    .line 598
    if-eqz p2, :cond_0

    .line 599
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 613
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 610
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 612
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-static {p0}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 558
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 559
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 560
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_4

    iget v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 564
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mLogoNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mLogoNavItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/lenovo/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mBackItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_3

    .line 570
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mBackItem:Lcom/lenovo/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/lenovo/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 572
    :cond_3
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 573
    return-void

    :cond_4
    move v0, v1

    .line 561
    goto :goto_0

    .line 564
    .restart local v0    # "visible":Z
    :cond_5
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .param p1, "homeEnabled"    # Z

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 623
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 621
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 508
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 510
    .local v0, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 513
    :cond_0
    return-void

    .line 508
    .end local v0    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 851
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1359
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1364
    if-nez p1, :cond_0

    .line 1365
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1367
    :cond_0
    return-object p1
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 844
    return-object p0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 307
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 308
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x90c0006

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 309
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 311
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 299
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 300
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x90c0007

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 301
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 302
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 304
    return-void
.end method

.method public isInExpanded()Z
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isSplitWhenNarrow()Z
    .locals 1

    .prologue
    .line 1870
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitWhenNarrow:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 929
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 944
    :cond_0
    :goto_0
    return v3

    .line 933
    :cond_1
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 934
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 938
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 939
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 940
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 941
    const/4 v3, 0x1

    goto :goto_0

    .line 939
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onActivityOrientationChange(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1879
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/ActionBarView;->onOrientationChange(Landroid/content/res/Configuration;)V

    .line 1880
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    iput-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 249
    iput-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 250
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    .line 251
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 253
    :cond_0
    iput-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 254
    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarView;->initTitle()V

    .line 258
    :cond_1
    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v1, :cond_2

    .line 259
    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_4

    .line 263
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 264
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_3

    .line 265
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 266
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 270
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 271
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 275
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 285
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 286
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 288
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 290
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 856
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 858
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 859
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 861
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 863
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 864
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 865
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 870
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 39
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1178
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v7, v3, v4

    .line 1179
    .local v7, "contentHeight":I
    if-gtz v7, :cond_1

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/lenovo/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 1185
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_b

    const/16 v22, 0x1

    .line 1186
    .local v22, "direction":I
    :goto_1
    if-eqz v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v11

    .line 1189
    .local v11, "menuStart":I
    :goto_2
    if-eqz v8, :cond_d

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v36, v3, v4

    .line 1190
    .local v36, "x":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v6

    .line 1192
    .local v6, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    .line 1193
    .local v26, "homeLayout":Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_f

    const/16 v32, 0x1

    .line 1195
    .local v32, "showTitle":Z
    :goto_5
    const/16 v33, 0x0

    .line 1196
    .local v33, "startOffset":I
    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    .line 1197
    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_10

    .line 1198
    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v33

    .line 1211
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move/from16 v0, v36

    move/from16 v1, v33

    invoke-static {v0, v1, v8}, Lcom/lenovo/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/lenovo/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int v5, v36, v3

    .line 1213
    .end local v36    # "x":I
    .local v5, "x":I
    move/from16 v0, v33

    invoke-static {v5, v0, v8}, Lcom/lenovo/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1216
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 1249
    :cond_3
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v3}, Llenovo/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_4

    .line 1250
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-nez v8, :cond_15

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/lenovo/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v3}, Llenovo/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1254
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 1256
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v8, :cond_16

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/lenovo/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1260
    :cond_5
    const/16 v20, 0x0

    .line 1261
    .local v20, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_17

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1267
    :cond_6
    :goto_a
    if-eqz v20, :cond_a

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v27

    .line 1269
    .local v27, "layoutDirection":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 1270
    .local v28, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v28

    instance-of v3, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_18

    check-cast v28, Landroid/app/ActionBar$LayoutParams;

    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v15, v28

    .line 1272
    .local v15, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_b
    if-eqz v15, :cond_19

    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v23, v0

    .line 1273
    .local v23, "gravity":I
    :goto_c
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1275
    .local v29, "navWidth":I
    const/16 v34, 0x0

    .line 1276
    .local v34, "topMargin":I
    const/16 v16, 0x0

    .line 1277
    .local v16, "bottomMargin":I
    if-eqz v15, :cond_7

    .line 1278
    invoke-virtual {v15}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v5, v3, v8}, Lcom/lenovo/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1279
    invoke-virtual {v15}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1280
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v34, v0

    .line 1281
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    .line 1284
    :cond_7
    const v3, 0x800007

    and-int v25, v23, v3

    .line 1286
    .local v25, "hgravity":I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_1d

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v18, v3, 0x2

    .line 1288
    .local v18, "centeredLeft":I
    if-eqz v8, :cond_1b

    .line 1289
    add-int v19, v18, v29

    .line 1290
    .local v19, "centeredStart":I
    move/from16 v17, v18

    .line 1291
    .local v17, "centeredEnd":I
    move/from16 v0, v19

    if-le v0, v5, :cond_1a

    .line 1292
    const/16 v25, 0x5

    .line 1309
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_8
    :goto_d
    const/16 v37, 0x0

    .line 1310
    .local v37, "xpos":I
    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1322
    :goto_e
    :pswitch_1
    and-int/lit8 v35, v23, 0x70

    .line 1324
    .local v35, "vgravity":I
    if-nez v23, :cond_9

    .line 1325
    const/16 v35, 0x10

    .line 1328
    :cond_9
    const/16 v38, 0x0

    .line 1329
    .local v38, "ypos":I
    sparse-switch v35, :sswitch_data_0

    .line 1343
    :goto_f
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1344
    .local v21, "customWidth":I
    add-int v3, v37, v21

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v38

    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1346
    move/from16 v0, v21

    invoke-static {v5, v0, v8}, Lcom/lenovo/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1349
    .end local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v16    # "bottomMargin":I
    .end local v21    # "customWidth":I
    .end local v23    # "gravity":I
    .end local v25    # "hgravity":I
    .end local v27    # "layoutDirection":I
    .end local v29    # "navWidth":I
    .end local v34    # "topMargin":I
    .end local v35    # "vgravity":I
    .end local v37    # "xpos":I
    .end local v38    # "ypos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v24, v3, 0x2

    .line 1352
    .local v24, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v0, v24

    neg-int v9, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    move/from16 v0, v24

    invoke-virtual {v3, v4, v9, v10, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1185
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v11    # "menuStart":I
    .end local v20    # "customView":Landroid/view/View;
    .end local v22    # "direction":I
    .end local v24    # "halfProgressHeight":I
    .end local v26    # "homeLayout":Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    .end local v32    # "showTitle":Z
    .end local v33    # "startOffset":I
    :cond_b
    const/16 v22, -0x1

    goto/16 :goto_1

    .line 1186
    .restart local v22    # "direction":I
    :cond_c
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v11, v3, v4

    goto/16 :goto_2

    .line 1189
    .restart local v11    # "menuStart":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v36

    goto/16 :goto_3

    .line 1192
    .restart local v6    # "y":I
    .restart local v36    # "x":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    goto/16 :goto_4

    .line 1193
    .restart local v26    # "homeLayout":Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_5

    .line 1199
    .restart local v32    # "showTitle":Z
    .restart local v33    # "startOffset":I
    :cond_10
    if-eqz v32, :cond_2

    .line 1204
    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getStartOffset2()I

    move-result v3

    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v4

    sub-int v33, v3, v4

    goto/16 :goto_6

    .line 1220
    .end local v36    # "x":I
    .restart local v5    # "x":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 1221
    if-eqz v32, :cond_11

    .line 1222
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/lenovo/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1224
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/lenovo/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1225
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/lenovo/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1229
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_3

    .line 1230
    if-eqz v32, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/lenovo/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1232
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_13

    .line 1235
    if-eqz v8, :cond_14

    .line 1236
    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int v5, p4, v3

    .line 1243
    :cond_13
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/lenovo/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1244
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/lenovo/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1238
    :cond_14
    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v3, v4

    goto :goto_10

    .line 1250
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 1256
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 1263
    .restart local v20    # "customView":Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v20, v0

    goto/16 :goto_a

    .line 1270
    .restart local v27    # "layoutDirection":I
    .restart local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 1272
    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_19
    const v23, 0x800013

    goto/16 :goto_c

    .line 1293
    .restart local v16    # "bottomMargin":I
    .restart local v17    # "centeredEnd":I
    .restart local v18    # "centeredLeft":I
    .restart local v19    # "centeredStart":I
    .restart local v23    # "gravity":I
    .restart local v25    # "hgravity":I
    .restart local v29    # "navWidth":I
    .restart local v34    # "topMargin":I
    :cond_1a
    move/from16 v0, v17

    if-ge v0, v11, :cond_8

    .line 1294
    const/16 v25, 0x3

    goto/16 :goto_d

    .line 1297
    .end local v17    # "centeredEnd":I
    .end local v19    # "centeredStart":I
    :cond_1b
    move/from16 v19, v18

    .line 1298
    .restart local v19    # "centeredStart":I
    add-int v17, v18, v29

    .line 1299
    .restart local v17    # "centeredEnd":I
    move/from16 v0, v19

    if-ge v0, v5, :cond_1c

    .line 1300
    const/16 v25, 0x3

    goto/16 :goto_d

    .line 1301
    :cond_1c
    move/from16 v0, v17

    if-le v0, v11, :cond_8

    .line 1302
    const/16 v25, 0x5

    goto/16 :goto_d

    .line 1305
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_1d
    if-nez v23, :cond_8

    .line 1306
    const v25, 0x800003

    goto/16 :goto_d

    .line 1312
    .restart local v37    # "xpos":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v37, v3, 0x2

    .line 1313
    goto/16 :goto_e

    .line 1315
    :pswitch_5
    if-eqz v8, :cond_1e

    move/from16 v37, v11

    .line 1316
    :goto_11
    goto/16 :goto_e

    :cond_1e
    move/from16 v37, v5

    .line 1315
    goto :goto_11

    .line 1318
    :pswitch_6
    if-eqz v8, :cond_1f

    sub-int v37, v5, v29

    :goto_12
    goto/16 :goto_e

    :cond_1f
    sub-int v37, v11, v29

    goto :goto_12

    .line 1331
    .restart local v35    # "vgravity":I
    .restart local v38    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v31

    .line 1332
    .local v31, "paddedTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v30, v3, v4

    .line 1333
    .local v30, "paddedBottom":I
    sub-int v3, v30, v31

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v38, v3, 0x2

    .line 1334
    goto/16 :goto_f

    .line 1336
    .end local v30    # "paddedBottom":I
    .end local v31    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    add-int v38, v3, v34

    .line 1337
    goto/16 :goto_f

    .line 1339
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v38, v3, v16

    goto/16 :goto_f

    .line 1216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1310
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1329
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 49
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getChildCount()I

    move-result v8

    .line 950
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mIsCollapsible:Z

    move/from16 v45, v0

    if-eqz v45, :cond_6

    .line 951
    const/16 v43, 0x0

    .line 952
    .local v43, "visibleChildren":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v0, v8, :cond_2

    .line 953
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 954
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v45

    if-eqz v45, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-eq v7, v0, :cond_1

    .line 957
    add-int/lit8 v43, v43, 0x1

    .line 952
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 961
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v39

    .line 962
    .local v39, "upChildCount":I
    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 964
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_3

    .line 965
    add-int/lit8 v43, v43, 0x1

    .line 962
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 969
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    if-nez v43, :cond_6

    .line 971
    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1174
    .end local v26    # "i":I
    .end local v39    # "upChildCount":I
    .end local v43    # "visibleChildren":I
    :cond_5
    :goto_2
    return-void

    .line 976
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v44

    .line 977
    .local v44, "widthMode":I
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_7

    .line 978
    new-instance v45, Ljava/lang/IllegalStateException;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " can only be used "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 982
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 983
    .local v18, "heightMode":I
    const/high16 v45, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v45

    if-eq v0, v1, :cond_8

    .line 984
    new-instance v45, Ljava/lang/IllegalStateException;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " can only be used "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 988
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 990
    .local v10, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-ltz v45, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v31, v0

    .line 993
    .local v31, "maxHeight":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v46

    add-int v42, v45, v46

    .line 994
    .local v42, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v34

    .line 995
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v35

    .line 996
    .local v35, "paddingRight":I
    sub-int v17, v31, v42

    .line 997
    .local v17, "height":I
    const/high16 v45, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 998
    .local v9, "childSpecHeight":I
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1000
    .local v16, "exactHeightSpec":I
    sub-int v45, v10, v34

    sub-int v6, v45, v35

    .line 1001
    .local v6, "availableWidth":I
    div-int/lit8 v28, v6, 0x2

    .line 1002
    .local v28, "leftOfCenter":I
    move/from16 v36, v28

    .line 1004
    .local v36, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x8

    if-eqz v45, :cond_18

    const/16 v37, 0x1

    .line 1007
    .local v37, "showTitle":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    .line 1009
    .local v20, "homeLayout":Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 1011
    .local v21, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    if-gez v45, :cond_1a

    .line 1012
    const/high16 v45, -0x80000000

    move/from16 v0, v45

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1025
    .local v24, "homeWidthSpec":I
    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 1027
    const/16 v23, 0x0

    .line 1028
    .local v23, "homeWidth":I
    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_a

    :cond_9
    if-eqz v37, :cond_b

    .line 1030
    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v23

    .line 1031
    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v45

    add-int v22, v23, v45

    .line 1032
    .local v22, "homeOffsetWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v22

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1033
    const/16 v45, 0x0

    sub-int v46, v6, v22

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1036
    .end local v22    # "homeOffsetWidth":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Llenovo/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_c

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v16

    move/from16 v3, v46

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/lenovo/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1038
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Llenovo/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v36, v46

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1041
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    if-eqz v45, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_d

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v6, v9, v2}, Lcom/lenovo/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1045
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v36, v46

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1049
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-nez v45, :cond_e

    .line 1050
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v45, v0

    packed-switch v45, :pswitch_data_0

    .line 1082
    :cond_e
    :goto_7
    const/4 v15, 0x0

    .line 1083
    .local v15, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_1c

    .line 1084
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1090
    :cond_f
    :goto_8
    if-eqz v15, :cond_14

    .line 1091
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .line 1092
    .local v30, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v45, v0

    if-eqz v45, :cond_1d

    move-object/from16 v45, v30

    check-cast v45, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v5, v45

    .line 1095
    .local v5, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_9
    const/16 v25, 0x0

    .line 1096
    .local v25, "horizontalMargin":I
    const/16 v41, 0x0

    .line 1097
    .local v41, "verticalMargin":I
    if-eqz v5, :cond_10

    .line 1098
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v45, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v46, v0

    add-int v25, v45, v46

    .line 1099
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v45, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v41, v45, v46

    .line 1105
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-gtz v45, :cond_1e

    .line 1106
    const/high16 v12, -0x80000000

    .line 1111
    .local v12, "customNavHeightMode":I
    :goto_a
    const/16 v45, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v46, v0

    if-ltz v46, :cond_11

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v46, v0

    move/from16 v0, v46

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .end local v17    # "height":I
    :cond_11
    sub-int v46, v17, v41

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1114
    .local v11, "customNavHeight":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/16 v46, -0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_20

    const/high16 v14, 0x40000000    # 2.0f

    .line 1116
    .local v14, "customNavWidthMode":I
    :goto_b
    const/16 v46, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    if-ltz v45, :cond_21

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    move/from16 v0, v45

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v45

    :goto_c
    sub-int v45, v45, v25

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1119
    .local v13, "customNavWidth":I
    if-eqz v5, :cond_22

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v45, v0

    :goto_d
    and-int/lit8 v19, v45, 0x7

    .line 1124
    .local v19, "hgrav":I
    const/16 v45, 0x1

    move/from16 v0, v19

    move/from16 v1, v45

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_12

    .line 1125
    move/from16 v0, v28

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v45

    mul-int/lit8 v13, v45, 0x2

    .line 1128
    :cond_12
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    move/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1132
    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-ne v15, v0, :cond_13

    .line 1133
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v45

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    move/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1138
    :cond_13
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v45

    add-int v45, v45, v25

    sub-int v6, v6, v45

    .line 1145
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v19    # "hgrav":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    add-int v46, v6, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_15

    .line 1148
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v28, v46

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1151
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-gtz v45, :cond_25

    .line 1152
    const/16 v32, 0x0

    .line 1153
    .local v32, "measuredHeight":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_e
    move/from16 v0, v26

    if-ge v0, v8, :cond_23

    .line 1154
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    .line 1155
    .local v40, "v":Landroid/view/View;
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getMeasuredHeight()I

    move-result v45

    add-int v33, v45, v42

    .line 1156
    .local v33, "paddedViewHeight":I
    move/from16 v0, v33

    move/from16 v1, v32

    if-le v0, v1, :cond_16

    .line 1157
    move/from16 v32, v33

    .line 1153
    :cond_16
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 990
    .end local v6    # "availableWidth":I
    .end local v9    # "childSpecHeight":I
    .end local v15    # "customView":Landroid/view/View;
    .end local v16    # "exactHeightSpec":I
    .end local v20    # "homeLayout":Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    .end local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "homeWidth":I
    .end local v24    # "homeWidthSpec":I
    .end local v26    # "i":I
    .end local v28    # "leftOfCenter":I
    .end local v31    # "maxHeight":I
    .end local v32    # "measuredHeight":I
    .end local v33    # "paddedViewHeight":I
    .end local v34    # "paddingLeft":I
    .end local v35    # "paddingRight":I
    .end local v36    # "rightOfCenter":I
    .end local v37    # "showTitle":Z
    .end local v40    # "v":Landroid/view/View;
    .end local v42    # "verticalPadding":I
    :cond_17
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    goto/16 :goto_3

    .line 1004
    .restart local v6    # "availableWidth":I
    .restart local v9    # "childSpecHeight":I
    .restart local v16    # "exactHeightSpec":I
    .restart local v17    # "height":I
    .restart local v28    # "leftOfCenter":I
    .restart local v31    # "maxHeight":I
    .restart local v34    # "paddingLeft":I
    .restart local v35    # "paddingRight":I
    .restart local v36    # "rightOfCenter":I
    .restart local v42    # "verticalPadding":I
    :cond_18
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1007
    .restart local v37    # "showTitle":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    goto/16 :goto_5

    .line 1014
    .restart local v20    # "homeLayout":Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    .restart local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1a
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/high16 v46, 0x40000000    # 2.0f

    invoke-static/range {v45 .. v46}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "homeWidthSpec":I
    goto/16 :goto_6

    .line 1052
    .restart local v23    # "homeWidth":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_e

    .line 1053
    if-eqz v37, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v45, v0

    mul-int/lit8 v27, v45, 0x2

    .line 1054
    .local v27, "itemPaddingSize":I
    :goto_f
    const/16 v45, 0x0

    sub-int v46, v6, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1055
    const/16 v45, 0x0

    sub-int v46, v28, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v29

    .line 1060
    .local v29, "listNavWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v29

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1061
    const/16 v45, 0x0

    sub-int v46, v28, v29

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1062
    goto/16 :goto_7

    .line 1053
    .end local v27    # "itemPaddingSize":I
    .end local v29    # "listNavWidth":I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_f

    .line 1065
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v45

    if-nez v45, :cond_e

    .line 1068
    const/16 v27, 0x0

    .line 1069
    .restart local v27    # "itemPaddingSize":I
    const/16 v45, 0x0

    add-int/lit8 v46, v6, 0x0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1070
    const/16 v45, 0x0

    add-int/lit8 v46, v28, 0x0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v38

    .line 1075
    .local v38, "tabWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v38

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1076
    const/16 v45, 0x0

    sub-int v46, v28, v38

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_7

    .line 1085
    .end local v27    # "itemPaddingSize":I
    .end local v38    # "tabWidth":I
    .restart local v15    # "customView":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x10

    if-eqz v45, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_f

    .line 1087
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_8

    .line 1092
    .restart local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1108
    .restart local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .restart local v25    # "horizontalMargin":I
    .restart local v41    # "verticalMargin":I
    :cond_1e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v45, v0

    const/16 v46, -0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1f

    const/high16 v12, 0x40000000    # 2.0f

    .restart local v12    # "customNavHeightMode":I
    :goto_10
    goto/16 :goto_a

    .end local v12    # "customNavHeightMode":I
    :cond_1f
    const/high16 v12, -0x80000000

    goto :goto_10

    .line 1114
    .end local v17    # "height":I
    .restart local v11    # "customNavHeight":I
    .restart local v12    # "customNavHeightMode":I
    :cond_20
    const/high16 v14, -0x80000000

    goto/16 :goto_b

    .restart local v14    # "customNavWidthMode":I
    :cond_21
    move/from16 v45, v6

    .line 1116
    goto/16 :goto_c

    .line 1119
    .restart local v13    # "customNavWidth":I
    :cond_22
    const v45, 0x800013

    goto/16 :goto_d

    .line 1160
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    .restart local v26    # "i":I
    .restart local v32    # "measuredHeight":I
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcom/lenovo/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1165
    .end local v26    # "i":I
    .end local v32    # "measuredHeight":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_24

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/lenovo/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1169
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    if-eqz v45, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_5

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v46, v0

    mul-int/lit8 v46, v46, 0x2

    sub-int v46, v10, v46

    const/high16 v47, 0x40000000    # 2.0f

    invoke-static/range {v46 .. v47}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v47

    const/high16 v48, -0x80000000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_2

    .line 1162
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Lcom/lenovo/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_11

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1386
    move-object v1, p1

    check-cast v1, Lcom/lenovo/internal/widget/ActionBarView$SavedState;

    .line 1388
    .local v1, "state":Lcom/lenovo/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/lenovo/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1390
    iget v2, v1, Lcom/lenovo/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1392
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/lenovo/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/view/SupportMenuItem;

    .line 1394
    .local v0, "item":Lcom/lenovo/internal/view/SupportMenuItem;
    if-eqz v0, :cond_0

    .line 1395
    invoke-interface {v0}, Lcom/lenovo/internal/view/SupportMenuItem;->expandActionView()Z

    .line 1399
    .end local v0    # "item":Lcom/lenovo/internal/view/SupportMenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/lenovo/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1400
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1402
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1372
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1373
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1375
    .local v0, "state":Lcom/lenovo/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1376
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/lenovo/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1379
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/lenovo/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1381
    return-object v0
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method setActionMode(Z)V
    .locals 0
    .param p1, "isMode"    # Z

    .prologue
    .line 1866
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIsMode:Z

    .line 1867
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .prologue
    .line 922
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIsCollapsible:Z

    .line 923
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setContextView(Lcom/lenovo/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/internal/widget/ActionBarContextView;

    .prologue
    .line 918
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 919
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 516
    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 517
    .local v0, "showCustom":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 518
    invoke-static {p0}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 521
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 523
    :cond_1
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 524
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 525
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 527
    :cond_2
    return-void

    .line 516
    .end local v0    # "showCustom":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 1430
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDefaultUpDescription:I

    if-ne v0, p1, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1433
    :cond_0
    iput p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 1434
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1411
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 11
    .param p1, "options"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v0, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 661
    iget v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_7

    .line 662
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 664
    and-int/lit16 v9, v0, 0x9f

    if-eqz v9, :cond_11

    .line 665
    invoke-static {p0}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 666
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_0

    .line 667
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_8

    move v4, v7

    .line 668
    .local v4, "setUp":Z
    :goto_1
    iget-object v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v4}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 673
    if-eqz v4, :cond_0

    .line 674
    invoke-virtual {p0, v7}, Lcom/lenovo/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 678
    .end local v4    # "setUp":Z
    :cond_0
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_1

    .line 679
    iget-object v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_9

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_9

    move v3, v7

    .line 680
    .local v3, "logoVis":Z
    :goto_2
    iget-object v10, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_a

    iget-object v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v10, v9}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 683
    .end local v3    # "logoVis":Z
    :cond_1
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_2

    .line 684
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_b

    .line 685
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarView;->initTitle()V

    .line 690
    :cond_2
    :goto_4
    iget-object v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v9, :cond_3

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_3

    .line 691
    and-int/lit16 v9, p1, 0x80

    if-eqz v9, :cond_c

    .line 692
    iget-object v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v9, v8}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 698
    :cond_3
    :goto_5
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_d

    move v5, v7

    .line 699
    .local v5, "showHome":Z
    :goto_6
    iget v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_e

    move v1, v7

    .line 700
    .local v1, "homeAsUp":Z
    :goto_7
    if-nez v5, :cond_f

    if-eqz v1, :cond_f

    move v6, v7

    .line 701
    .local v6, "titleUp":Z
    :goto_8
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v5}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 703
    if-nez v5, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v7, :cond_5

    move v2, v8

    .line 705
    .local v2, "homeVis":I
    :cond_5
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v2}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 707
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 708
    and-int/lit8 v7, p1, 0x10

    if-eqz v7, :cond_10

    .line 709
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 715
    :cond_6
    :goto_9
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->requestLayout()V

    .line 721
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :goto_a
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/lenovo/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 722
    return-void

    .line 661
    .end local v0    # "flagsChanged":I
    :cond_7
    iget v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_8
    move v4, v8

    .line 667
    goto/16 :goto_1

    :cond_9
    move v3, v8

    .line 679
    goto :goto_2

    .line 680
    .restart local v3    # "logoVis":Z
    :cond_a
    iget-object v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 687
    .end local v3    # "logoVis":Z
    :cond_b
    iget-object v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 694
    :cond_c
    iget-object v9, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v9, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_5

    :cond_d
    move v5, v8

    .line 698
    goto :goto_6

    .restart local v5    # "showHome":Z
    :cond_e
    move v1, v8

    .line 699
    goto :goto_7

    .restart local v1    # "homeAsUp":Z
    :cond_f
    move v6, v8

    .line 700
    goto :goto_8

    .line 711
    .restart local v2    # "homeVis":I
    .restart local v6    # "titleUp":Z
    :cond_10
    iget-object v7, p0, Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/lenovo/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 717
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :cond_11
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->invalidate()V

    goto :goto_a
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 811
    iput-object p2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 812
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 814
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 816
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 823
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 824
    return-void
.end method

.method public setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .param p1, "tabs"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v2, 0x1

    .line 393
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 396
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .line 397
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 398
    iget-boolean v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 399
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 400
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 401
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 402
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 403
    invoke-virtual {p1, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 404
    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 406
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 397
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 594
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 595
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 736
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 737
    return-void

    .line 736
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 726
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 733
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 751
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 752
    return-void

    .line 751
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 745
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 748
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 413
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    .line 488
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 418
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    .line 419
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 422
    check-cast v0, Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 423
    .local v0, "builder":Lcom/lenovo/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mOptionsMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 424
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v4, :cond_2

    .line 425
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v4}, Llenovo/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 426
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 427
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 430
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-nez v4, :cond_3

    .line 431
    new-instance v4, Llenovo/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Llenovo/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 432
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Llenovo/widget/ActionMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 433
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    const v5, 0x90c0005

    invoke-virtual {v4, v5}, Llenovo/widget/ActionMenuPresenter;->setId(I)V

    .line 434
    new-instance v4, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/lenovo/internal/widget/ActionBarView;Lcom/lenovo/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 438
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 440
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_6

    .line 441
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x90a0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Llenovo/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 444
    invoke-direct {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->configPresenters(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 445
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Llenovo/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Llenovo/widget/ActionMenuView;

    .line 446
    .local v2, "menuView":Llenovo/widget/ActionMenuView;
    invoke-virtual {v2}, Llenovo/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 451
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eq v3, p0, :cond_5

    .line 452
    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 453
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_5
    :goto_1
    iput-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    goto/16 :goto_0

    .line 456
    .end local v2    # "menuView":Llenovo/widget/ActionMenuView;
    :cond_6
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Llenovo/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 458
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Llenovo/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 462
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x90b0000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v4, v5}, Llenovo/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 464
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 465
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 466
    invoke-direct {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->configPresenters(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 467
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Llenovo/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Llenovo/widget/ActionMenuView;

    .line 468
    .restart local v2    # "menuView":Llenovo/widget/ActionMenuView;
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 469
    invoke-virtual {v2}, Llenovo/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 475
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_5

    .line 476
    if-eqz v3, :cond_7

    .line 477
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Llenovo/widget/ActionMenuView;->setVisibility(I)V

    .line 480
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 484
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_8
    invoke-virtual {v2, v1}, Llenovo/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuPrepared:Z

    .line 410
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1423
    iput p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 1424
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1425
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1426
    return-void

    .line 1424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1419
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1420
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1415
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1406
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 759
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mNavigationMode:I

    .line 760
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_2

    .line 761
    invoke-static {p0}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 762
    packed-switch v0, :pswitch_data_0

    .line 774
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 802
    :cond_1
    :goto_1
    iput p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mNavigationMode:I

    .line 803
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->requestLayout()V

    .line 805
    :cond_2
    return-void

    .line 764
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 765
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 769
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 770
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 776
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    .line 777
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 778
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    const v3, 0x90c0001

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setId(I)V

    .line 779
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 780
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 782
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 788
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 791
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 793
    :cond_4
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 794
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 797
    :pswitch_3
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 798
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 762
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 774
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 4
    .param p1, "splitActionBar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x90a0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 317
    iget-boolean v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_5

    iget-boolean v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mIsMode:Z

    if-nez v1, :cond_5

    .line 318
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v1, :cond_2

    .line 334
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 335
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz p1, :cond_6

    .line 336
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1

    .line 337
    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 342
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 354
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuView;->requestLayout()V

    .line 356
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 357
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->isShow()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v1, :cond_4

    .line 361
    if-nez p1, :cond_9

    .line 362
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 375
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 377
    :cond_5
    return-void

    .line 346
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_6
    if-eq v0, p0, :cond_1

    .line 347
    if-eqz v0, :cond_7

    .line 348
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 350
    :cond_7
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 351
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 357
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_8
    const/16 v1, 0x8

    goto :goto_1

    .line 366
    :cond_9
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 368
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Llenovo/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 372
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x90b0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 580
    invoke-static {p0}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 581
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 582
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 588
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 591
    return-void

    :cond_2
    move v1, v3

    .line 584
    goto :goto_0

    :cond_3
    move v0, v2

    .line 585
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_4
    move v2, v3

    .line 588
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUserTitle:Z

    .line 541
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 542
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/app/WindowCallback;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    .line 280
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 552
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 554
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
