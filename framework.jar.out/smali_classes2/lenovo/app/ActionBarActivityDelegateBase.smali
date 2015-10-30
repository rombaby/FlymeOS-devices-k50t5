.class Llenovo/app/ActionBarActivityDelegateBase;
.super Llenovo/app/ActionBarActivityDelegate;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;,
        Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;,
        Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;,
        Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

.field mActionMode:Llenovo/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

.field private mBottomBarOverlayout:Lcom/lenovo/internal/widget/BottomBarOverlayout;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

.field private mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

.field private mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleToSet:Ljava/lang/CharSequence;

.field private mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

.field private mWindowDecor:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 113
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase$1;

    invoke-direct {v0, p0}, Llenovo/app/ActionBarActivityDelegateBase$1;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 135
    return-void
.end method

.method static synthetic access$000(Llenovo/app/ActionBarActivityDelegateBase;)I
    .locals 1
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;

    .prologue
    .line 82
    iget v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic access$002(Llenovo/app/ActionBarActivityDelegateBase;I)I
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$100(Llenovo/app/ActionBarActivityDelegateBase;I)V
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->doInvalidatePanelMenu(I)V

    return-void
.end method

.method static synthetic access$1000(Llenovo/app/ActionBarActivityDelegateBase;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic access$1100(Llenovo/app/ActionBarActivityDelegateBase;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic access$202(Llenovo/app/ActionBarActivityDelegateBase;Z)Z
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$300(Llenovo/app/ActionBarActivityDelegateBase;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Landroid/view/WindowInsets;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Llenovo/app/ActionBarActivityDelegateBase;Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 1
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Llenovo/app/ActionBarActivityDelegateBase;ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Llenovo/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$800(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    .locals 0
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic access$900(Llenovo/app/ActionBarActivityDelegateBase;)Lcom/lenovo/internal/widget/DecorContentParent;
    .locals 1
    .param p0, "x0"    # Llenovo/app/ActionBarActivityDelegateBase;

    .prologue
    .line 82
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    return-object v0
.end method

.method private applyFixedSizeWindow()V
    .locals 13

    .prologue
    .line 353
    iget-object v11, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    sget-object v12, Lcom/lenovo/internal/R$styleable;->Theme:[I

    invoke-virtual {v11, v12}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 355
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 356
    .local v5, "mFixedWidthMajor":Landroid/util/TypedValue;
    const/4 v6, 0x0

    .line 357
    .local v6, "mFixedWidthMinor":Landroid/util/TypedValue;
    const/4 v3, 0x0

    .line 358
    .local v3, "mFixedHeightMajor":Landroid/util/TypedValue;
    const/4 v4, 0x0

    .line 377
    .local v4, "mFixedHeightMinor":Landroid/util/TypedValue;
    iget-object v11, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 378
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v11, v12, :cond_4

    const/4 v2, 0x1

    .line 379
    .local v2, "isPortrait":Z
    :goto_0
    const/4 v10, -0x1

    .line 380
    .local v10, "w":I
    const/4 v1, -0x1

    .line 382
    .local v1, "h":I
    if-eqz v2, :cond_5

    move-object v9, v6

    .line 383
    .local v9, "tvw":Ljava/lang/Object;
    :goto_1
    if-eqz v9, :cond_0

    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_0

    .line 384
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_6

    .line 385
    invoke-virtual {v9, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v10, v11

    .line 391
    :cond_0
    :goto_2
    if-eqz v2, :cond_7

    move-object v8, v3

    .line 392
    .local v8, "tvh":Ljava/lang/Object;
    :goto_3
    if-eqz v8, :cond_1

    iget v11, v8, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_1

    .line 393
    iget v11, v8, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_8

    .line 394
    invoke-virtual {v8, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v1, v11

    .line 400
    :cond_1
    :goto_4
    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    const/4 v11, -0x1

    if-eq v1, v11, :cond_3

    .line 401
    :cond_2
    iget-object v11, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v10, v1}, Landroid/view/Window;->setLayout(II)V

    .line 404
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 405
    return-void

    .line 378
    .end local v1    # "h":I
    .end local v2    # "isPortrait":Z
    .end local v8    # "tvh":Ljava/lang/Object;
    .end local v9    # "tvw":Ljava/lang/Object;
    .end local v10    # "w":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1    # "h":I
    .restart local v2    # "isPortrait":Z
    .restart local v10    # "w":I
    :cond_5
    move-object v9, v5

    .line 382
    goto :goto_1

    .line 386
    .restart local v9    # "tvw":Ljava/lang/Object;
    :cond_6
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    .line 387
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v10, v11

    goto :goto_2

    :cond_7
    move-object v8, v4

    .line 391
    goto :goto_3

    .line 395
    .restart local v8    # "tvh":Ljava/lang/Object;
    :cond_8
    iget v11, v8, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_1

    .line 396
    iget v11, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v1, v11

    goto :goto_4
.end method

.method private callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "panel"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1213
    if-nez p3, :cond_1

    .line 1215
    if-nez p2, :cond_0

    .line 1216
    if-ltz p1, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1217
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1221
    :cond_0
    if-eqz p2, :cond_1

    .line 1223
    iget-object p3, p2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 1228
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v0, p2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_2

    .line 1232
    :goto_0
    return-void

    .line 1231
    :cond_2
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1158
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1162
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1163
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1164
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1165
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1166
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1168
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method private checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1712
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1723
    :goto_0
    return-void

    .line 1716
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1717
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/SplitActionBarView;->dismissPopups()V

    .line 1718
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 1719
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1720
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/lenovo/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1722
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method private closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    .locals 3
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1178
    if-eqz p2, :cond_2

    iget v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-nez v0, :cond_2

    .line 1179
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    iget-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->checkCloseSplitActionMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 1189
    :cond_2
    iget-boolean v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-eqz v0, :cond_3

    .line 1190
    if-eqz p2, :cond_3

    .line 1191
    iget v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    invoke-direct {p0, v0, p1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILlenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    .line 1195
    :cond_3
    iput-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1196
    iput-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 1197
    iput-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    .line 1200
    iput-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1204
    const/4 v0, 0x1

    iput-boolean v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1206
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-ne v0, p1, :cond_0

    .line 1207
    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    goto :goto_0
.end method

.method private doInvalidatePanelMenu(I)V
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1304
    invoke-direct {p0, p1, v4}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1305
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    const/4 v0, 0x0

    .line 1306
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 1307
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1308
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1309
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1310
    iput-object v0, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1313
    :cond_0
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1314
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->clear()V

    .line 1316
    :cond_1
    iput-boolean v4, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    .line 1317
    iput-boolean v4, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1323
    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_4

    :cond_2
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_4

    .line 1326
    :cond_3
    invoke-direct {p0, v3, v3}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1327
    if-eqz v1, :cond_4

    .line 1328
    iput-boolean v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1329
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1332
    :cond_4
    return-void
.end method

.method private ensureToolbarListMenuPresenter()V
    .locals 3

    .prologue
    .line 1406
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_0

    .line 1407
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x90302e7

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1409
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    const v2, 0x9040020

    invoke-direct {v1, v0, v2}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .line 1412
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1235
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1236
    .local v3, "panels":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1237
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1238
    aget-object v2, v3, v1

    .line 1239
    .local v2, "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1243
    .end local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :goto_2
    return-object v2

    .line 1236
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1237
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1243
    .end local v2    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .prologue
    .line 957
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x90c0006

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 958
    .local v0, "pb":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 959
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 961
    :cond_0
    return-object v0
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .prologue
    .line 965
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x90c0007

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 966
    .local v0, "pb":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 967
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 969
    :cond_0
    return-object v0
.end method

.method private getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1248
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .local v0, "ar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gt v3, p1, :cond_2

    .line 1249
    :cond_0
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1250
    .local v1, "nar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_1

    .line 1251
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1253
    :cond_1
    move-object v0, v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanels:[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .line 1256
    .end local v1    # "nar":[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    aget-object v2, v0, p1

    .line 1257
    .local v2, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-nez v2, :cond_3

    .line 1258
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .end local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-direct {v2, p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;-><init>(I)V

    .restart local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    aput-object v2, v0, p1

    .line 1260
    :cond_3
    return-object v2
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v1, 0x4

    .line 948
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 949
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 951
    :cond_0
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 952
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 954
    :cond_1
    return-void
.end method

.method private initializePanelContent(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 4
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    const/4 v1, 0x0

    .line 1017
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return v1

    .line 1021
    :cond_1
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    if-nez v2, :cond_2

    .line 1022
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$1;)V

    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    .line 1025
    :cond_2
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->getListMenuView(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v0

    .line 1027
    .local v0, "menuView":Lcom/lenovo/internal/view/menu/MenuView;
    check-cast v0, Landroid/view/View;

    .end local v0    # "menuView":Lcom/lenovo/internal/view/menu/MenuView;
    iput-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1029
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initializePanelDecor(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)V
    .locals 1
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    .line 852
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iput-object v0, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 853
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 854
    return-void
.end method

.method private initializePanelMenu(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 10
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    .prologue
    const v9, 0x1010397

    const/4 v8, 0x1

    .line 973
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 976
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    :cond_0
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v6, :cond_1

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v6, :cond_4

    .line 978
    :cond_1
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 979
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 980
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 983
    const/4 v5, 0x0

    .line 984
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_5

    .line 985
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 986
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 987
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 988
    invoke-virtual {v5, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 995
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_3

    .line 996
    if-nez v5, :cond_2

    .line 997
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 998
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1000
    :cond_2
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1003
    :cond_3
    if-eqz v5, :cond_4

    .line 1004
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1005
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1009
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_4
    new-instance v3, Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1010
    .local v3, "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 1011
    invoke-virtual {p1, v3}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1013
    return v8

    .line 991
    .end local v3    # "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_5
    invoke-virtual {v0, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method private invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1294
    iget v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    .line 1296
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1299
    iput-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    .line 1301
    :cond_0
    return-void
.end method

.method private openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 791
    if-nez p1, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 802
    :goto_0
    return-void

    .line 795
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 798
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/SplitActionBarView;->showOverflowMenu()Z

    goto :goto_0

    .line 800
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 9
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 806
    iget-boolean v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    iget v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-nez v7, :cond_2

    .line 813
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 814
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 815
    .local v1, "config":Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    move v4, v5

    .line 817
    .local v4, "isXLarge":Z
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_4

    move v3, v5

    .line 820
    .local v3, "isHoneycombApp":Z
    :goto_2
    if-eqz v4, :cond_2

    if-nez v3, :cond_0

    .line 825
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "isHoneycombApp":Z
    .end local v4    # "isXLarge":Z
    :cond_2
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 826
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_5

    iget v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iget-object v8, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v7, v8}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 828
    invoke-direct {p0, p1, v5}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_0

    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "context":Landroid/content/Context;
    :cond_3
    move v4, v6

    .line 815
    goto :goto_1

    .restart local v4    # "isXLarge":Z
    :cond_4
    move v3, v6

    .line 817
    goto :goto_2

    .line 833
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "isXLarge":Z
    .restart local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    :cond_5
    invoke-direct {p0, p1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 837
    iget-object v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    iget-boolean v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_7

    .line 838
    :cond_6
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelDecor(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)V

    .line 842
    :cond_7
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelContent(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 846
    iput-boolean v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 848
    iput-boolean v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    goto :goto_0
.end method

.method private preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1033
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return v4

    .line 1038
    :cond_1
    iget-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_2

    move v4, v3

    .line 1039
    goto :goto_0

    .line 1042
    :cond_2
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eq v2, p1, :cond_3

    .line 1044
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-direct {p0, v2, v4}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1047
    :cond_3
    iget v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-eqz v2, :cond_4

    iget v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_a

    :cond_4
    move v0, v3

    .line 1050
    .local v0, "isActionBarMenu":Z
    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_5

    .line 1053
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 1057
    :cond_5
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v2, :cond_e

    .line 1058
    :cond_6
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_7

    .line 1059
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase;->initializePanelMenu(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1072
    :cond_7
    if-eqz v0, :cond_9

    .line 1073
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    if-nez v2, :cond_8

    .line 1074
    new-instance v2, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v7}, Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/app/ActionBarActivityDelegateBase$1;)V

    iput-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    .line 1076
    :cond_8
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_b

    .line 1077
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v6}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 1086
    :cond_9
    :goto_2
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1087
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    iget v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iget-object v6, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1089
    invoke-virtual {p1, v7}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 1096
    if-eqz v0, :cond_0

    .line 1097
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_c

    .line 1098
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v7, v3}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_0

    .end local v0    # "isActionBarMenu":Z
    :cond_a
    move v0, v4

    .line 1047
    goto :goto_1

    .line 1078
    .restart local v0    # "isActionBarMenu":Z
    :cond_b
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_9

    .line 1079
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_2

    .line 1099
    :cond_c
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_0

    .line 1100
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    .line 1108
    :cond_d
    iput-boolean v4, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    .line 1113
    :cond_e
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1117
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v2, :cond_f

    .line 1118
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1119
    iput-object v7, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1123
    :cond_f
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    iget-object v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v4, v7, v5}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1130
    if-eqz v0, :cond_10

    .line 1131
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_11

    .line 1132
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v2, v7, v3}, Lcom/lenovo/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 1138
    :cond_10
    :goto_3
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 1133
    :cond_11
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_10

    .line 1134
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Llenovo/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/lenovo/internal/widget/SplitActionBarView;->initOptionMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_3

    .line 1143
    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    :goto_4
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 1145
    .local v1, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v3, :cond_14

    move v2, v3

    :goto_5
    iput-boolean v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->qwertyMode:Z

    .line 1146
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-boolean v5, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v2, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1147
    iget-object v2, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1150
    iput-boolean v3, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1151
    iput-boolean v4, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 1152
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move v4, v3

    .line 1154
    goto/16 :goto_0

    .line 1143
    .end local v1    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_13
    const/4 v2, -0x1

    goto :goto_4

    .restart local v1    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v2, v4

    .line 1145
    goto :goto_5
.end method

.method private reopenMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 8
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 857
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v2, :cond_5

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 861
    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 863
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_4

    .line 864
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 866
    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_2

    iget v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 868
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 869
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 872
    :cond_2
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 876
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v7, v2}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 878
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 879
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 933
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_3
    :goto_0
    return-void

    .line 883
    .restart local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    :cond_4
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/lenovo/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 884
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 885
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 886
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-object v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v6, v3}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 892
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_5
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowPending()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 896
    :cond_6
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 898
    .restart local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p2, :cond_9

    .line 899
    :cond_7
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 901
    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_8

    iget v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 903
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 904
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 907
    :cond_8
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 911
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v7, v2}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 913
    iget-object v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 914
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->showOverflowMenu()Z

    goto/16 :goto_0

    .line 918
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_9
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/SplitActionBarView;->hideOverflowMenu()Z

    .line 919
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 920
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 921
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-object v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v6, v3}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 927
    .end local v0    # "cb":Lcom/lenovo/internal/app/WindowCallback;
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_a
    invoke-direct {p0, v4, v5}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 929
    .restart local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    iput-boolean v5, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 930
    invoke-direct {p0, v1, v4}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 932
    invoke-direct {p0, v1, v7}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto/16 :goto_0
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v2, 0x0

    .line 937
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 938
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 941
    :cond_0
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 942
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 944
    :cond_1
    return-void
.end method

.method private updateProgressBars(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const/16 v7, 0x8

    const/16 v6, 0x2710

    const/4 v4, 0x0

    .line 752
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 753
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 755
    .local v1, "horizontalProgressBar":Landroid/widget/ProgressBar;
    const/4 v5, -0x1

    if-ne p1, v5, :cond_4

    .line 756
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v5, :cond_1

    .line 757
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    .line 758
    .local v2, "level":I
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v2, v6, :cond_3

    :cond_0
    move v3, v4

    .line 760
    .local v3, "visibility":I
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 762
    .end local v2    # "level":I
    .end local v3    # "visibility":I
    :cond_1
    iget-boolean v5, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v5, :cond_2

    .line 763
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 788
    :cond_2
    :goto_1
    return-void

    .line 758
    .restart local v2    # "level":I
    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    .line 765
    .end local v2    # "level":I
    :cond_4
    const/4 v5, -0x2

    if-ne p1, v5, :cond_6

    .line 766
    iget-boolean v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v4, :cond_5

    .line 767
    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 769
    :cond_5
    iget-boolean v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v4, :cond_2

    .line 770
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 772
    :cond_6
    const/4 v5, -0x3

    if-ne p1, v5, :cond_7

    .line 773
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 774
    :cond_7
    const/4 v5, -0x4

    if-ne p1, v5, :cond_8

    .line 775
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 776
    :cond_8
    if-ltz p1, :cond_2

    if-gt p1, v6, :cond_2

    .line 780
    add-int/lit8 v4, p1, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 782
    if-ge p1, v6, :cond_9

    .line 783
    invoke-direct {p0, v1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 785
    :cond_9
    invoke-direct {p0, v1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 13
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v7, 0x1

    const/4 v12, -0x1

    const/4 v6, 0x0

    .line 1341
    const/4 v5, 0x0

    .line 1343
    .local v5, "showStatusGuard":Z
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_3

    .line 1344
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 1345
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1347
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v3, 0x0

    .line 1349
    .local v3, "mlpChanged":Z
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1350
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 1351
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1353
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1355
    .local v0, "localInsets":Landroid/graphics/Rect;
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v8, p1, v0}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 1356
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    .line 1357
    .local v4, "newMargin":I
    :goto_0
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v4, :cond_1

    .line 1358
    const/4 v3, 0x1

    .line 1359
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v8

    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1361
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-nez v8, :cond_6

    .line 1362
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    .line 1363
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x907005c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1365
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v9, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {v10, v12, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1379
    :cond_1
    :goto_1
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_7

    move v5, v7

    .line 1385
    :goto_2
    iget-boolean v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-nez v8, :cond_8

    if-eqz v5, :cond_8

    :goto_3
    invoke-virtual {p1, v6, v7, v6, v6}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    .line 1393
    .end local v0    # "localInsets":Landroid/graphics/Rect;
    .end local v4    # "newMargin":I
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 1394
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1398
    .end local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "mlpChanged":Z
    :cond_3
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 1399
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v5, :cond_a

    :goto_5
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    :cond_4
    return-object p1

    .restart local v0    # "localInsets":Landroid/graphics/Rect;
    .restart local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v3    # "mlpChanged":Z
    :cond_5
    move v4, v6

    .line 1356
    goto :goto_0

    .line 1369
    .restart local v4    # "newMargin":I
    :cond_6
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1370
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v9, :cond_1

    .line 1371
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1372
    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move v5, v6

    .line 1379
    goto :goto_2

    :cond_8
    move v7, v6

    .line 1385
    goto :goto_3

    .line 1388
    .end local v0    # "localInsets":Landroid/graphics/Rect;
    .end local v4    # "newMargin":I
    :cond_9
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_2

    .line 1389
    const/4 v3, 0x1

    .line 1390
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    .line 1399
    .end local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "mlpChanged":Z
    :cond_a
    const/16 v6, 0x8

    goto :goto_5
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 243
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V

    .line 244
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 245
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 247
    return-void
.end method

.method public createSupportActionBar()Llenovo/app/ActionBar;
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V

    .line 157
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getUiOptions()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Lcom/lenovo/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 159
    new-instance v0, Lcom/lenovo/internal/app/WindowDecorActionBar;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget-boolean v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    iget-boolean v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasEmbeddedTabsSup:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;ZZ)V

    .line 160
    .local v0, "ab":Llenovo/app/ActionBar;
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 161
    return-object v0

    .line 157
    .end local v0    # "ab":Llenovo/app/ActionBar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method createView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 733
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 745
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 733
    :sswitch_0
    const-string v1, "EditText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "Spinner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "CheckBox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "RadioButton"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "CheckedTextView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 735
    :pswitch_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 737
    :pswitch_1
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 739
    :pswitch_2
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 741
    :pswitch_3
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 743
    :pswitch_4
    new-instance v0, Landroid/widget/CheckedTextView;

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 733
    nop

    :sswitch_data_0
    .sparse-switch
        -0x56c015e7 -> :sswitch_4
        -0x1440b607 -> :sswitch_1
        0x2e46a6ed -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getDecorViewLayoutRes()I
    .locals 2

    .prologue
    .line 256
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 257
    const v0, 0x9040023

    .line 269
    .local v0, "layoutRes":I
    :goto_0
    return v0

    .line 259
    .end local v0    # "layoutRes":I
    :cond_0
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSplitNoAcionBar:Z

    if-nez v1, :cond_2

    .line 260
    iget-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-eqz v1, :cond_1

    .line 261
    const v0, 0x9040026

    .restart local v0    # "layoutRes":I
    goto :goto_0

    .line 263
    .end local v0    # "layoutRes":I
    :cond_1
    const v0, 0x9040025

    .restart local v0    # "layoutRes":I
    goto :goto_0

    .line 266
    .end local v0    # "layoutRes":I
    :cond_2
    const v0, 0x9040027

    .restart local v0    # "layoutRes":I
    goto :goto_0
.end method

.method getHomeAsUpIndicatorAttrId()I
    .locals 1

    .prologue
    .line 688
    const v0, 0x101030b

    return v0
.end method

.method protected installSubDecor()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x1020002

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 272
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-nez v7, :cond_6

    .line 273
    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    .line 274
    .local v6, "themedContext":Landroid/content/Context;
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v7, :cond_0

    .line 275
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 276
    .local v4, "outValue":Landroid/util/TypedValue;
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x1010431

    invoke-virtual {v7, v8, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 278
    iget v7, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_0

    .line 279
    new-instance v6, Landroid/view/ContextThemeWrapper;

    .end local v6    # "themedContext":Landroid/content/Context;
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 285
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v6    # "themedContext":Landroid/content/Context;
    :cond_0
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 286
    .local v2, "localViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 287
    .local v1, "localView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 288
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 289
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 290
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getDecorViewLayoutRes()I

    move-result v8

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 292
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v7, :cond_7

    .line 297
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v8, 0x90c0008

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/DecorContentParent;

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    .line 299
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 301
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    if-eqz v7, :cond_1

    .line 302
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/16 v8, 0x9

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 304
    :cond_1
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v7, :cond_2

    .line 305
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 307
    :cond_2
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v7, :cond_3

    .line 308
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/DecorContentParent;->initFeature(I)V

    .line 328
    :cond_3
    :goto_0
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->makeOptionalFitsSystemWindows()V

    .line 329
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v8, 0x90c0002

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, "abcContent":Landroid/view/View;
    invoke-virtual {v0, v11}, Landroid/view/View;->setId(I)V

    .line 332
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v7, :cond_4

    .line 333
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 334
    iput-object v12, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    .line 337
    :cond_4
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->applyFixedSizeWindow()V

    .line 339
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->onSubDecorInstalled()V

    .line 341
    iput-boolean v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    .line 343
    invoke-direct {p0, v9, v9}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v5

    .line 344
    .local v5, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v5, :cond_5

    iget-object v7, v5, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v7, :cond_6

    .line 345
    :cond_5
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Llenovo/app/ActionBarActivityDelegateBase;->invalidatePanelMenu(I)V

    .line 348
    .end local v0    # "abcContent":Landroid/view/View;
    .end local v1    # "localView":Landroid/view/View;
    .end local v2    # "localViewGroup":Landroid/view/ViewGroup;
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .end local v6    # "themedContext":Landroid/content/Context;
    :cond_6
    return-void

    .line 311
    .restart local v1    # "localView":Landroid/view/View;
    .restart local v2    # "localViewGroup":Landroid/view/ViewGroup;
    .restart local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6    # "themedContext":Landroid/content/Context;
    :cond_7
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSplitNoAcionBar:Z

    if-eqz v7, :cond_8

    .line 312
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v8, 0x90c0003

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/SplitActionBarView;

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    .line 313
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/internal/widget/SplitActionBarView;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 314
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    const v8, 0x90c0014

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/BottomBarOverlayout;

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mBottomBarOverlayout:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    .line 315
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mBottomBarOverlayout:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    invoke-virtual {v7}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->initBottomBar()V

    .line 317
    :cond_8
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    new-instance v8, Llenovo/app/ActionBarActivityDelegateBase$2;

    invoke-direct {v8, p0}, Llenovo/app/ActionBarActivityDelegateBase$2;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 650
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_1

    .line 651
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v1}, Llenovo/view/ActionMode;->finish()V

    .line 660
    :cond_0
    :goto_0
    return v0

    .line 656
    :cond_1
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1}, Llenovo/app/ActionBar;->collapseActionView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 191
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 141
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    .line 143
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Llenovo/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-nez v0, :cond_1

    .line 145
    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mEnableDefaultActionBarUp:Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 4
    .param p1, "featureId"    # I

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 449
    .local v1, "panelView":Landroid/view/View;
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-nez v3, :cond_1

    .line 451
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 452
    .local v0, "callback":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0, p1}, Lcom/lenovo/internal/app/WindowCallback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    .line 456
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    if-nez v3, :cond_1

    .line 461
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v2

    .line 462
    .local v2, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Llenovo/app/ActionBarActivityDelegateBase;->openPanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 463
    iget-boolean v3, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-eqz v3, :cond_1

    .line 464
    iget-object v1, v2, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 468
    .end local v0    # "callback":Lcom/lenovo/internal/app/WindowCallback;
    .end local v2    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_1
    return-object v1
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 726
    invoke-virtual {p0, p1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 695
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v4, :cond_1

    .line 696
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v4, v5, p2, v2}, Llenovo/app/ActionBarActivityDelegateBase;->performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 698
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 699
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v3, :cond_0

    .line 700
    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    iput-boolean v2, v3, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 719
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    return v2

    .line 710
    :cond_1
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mPreparedPanel:Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-nez v4, :cond_2

    .line 711
    invoke-direct {p0, v3, v2}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 712
    .local v1, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-direct {p0, v1, p2}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 713
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p0, v1, v4, p2, v2}, Llenovo/app/ActionBarActivityDelegateBase;->performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 714
    .restart local v0    # "handled":Z
    iput-boolean v3, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 715
    if-nez v0, :cond_0

    .end local v0    # "handled":Z
    .end local v1    # "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :cond_2
    move v2, v3

    .line 719
    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 520
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    .line 521
    .local v0, "cb":Lcom/lenovo/internal/app/WindowCallback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-direct {p0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 523
    .local v1, "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 524
    iget v2, v1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Lcom/lenovo/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 527
    .end local v1    # "panel":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 532
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llenovo/app/ActionBarActivityDelegateBase;->reopenMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    .line 533
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    .line 508
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 509
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v0}, Llenovo/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 514
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v0, p1, p2}, Llenovo/app/ActivityBarActivityImpl;->superOnMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 489
    invoke-direct {p0, p1, v2}, Llenovo/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    .line 490
    .local v0, "st":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v0, :cond_0

    .line 492
    invoke-direct {p0, v0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 495
    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 496
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v2}, Llenovo/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 499
    :cond_2
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 502
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1, p1, p2}, Llenovo/app/ActivityBarActivityImpl;->superOnPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 212
    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 481
    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 484
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSplitMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1726
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/SplitActionBarView;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 205
    :cond_0
    return-void
.end method

.method onSubDecorInstalled()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 435
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 442
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 440
    :cond_1
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method final performPanelShortcut(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "st"    # Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1265
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1266
    const/4 v0, 0x0

    .line 1290
    :cond_0
    :goto_0
    return v0

    .line 1269
    :cond_1
    const/4 v0, 0x0

    .line 1273
    .local v0, "handled":Z
    iget-boolean v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Llenovo/app/ActionBarActivityDelegateBase;->preparePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1275
    iget-object v1, p1, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1278
    :cond_3
    if-eqz v0, :cond_0

    .line 1284
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    if-nez v1, :cond_0

    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDecorContentParent:Lcom/lenovo/internal/widget/DecorContentParent;

    if-nez v1, :cond_0

    .line 1285
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Llenovo/app/ActionBarActivityDelegateBase;->closePanel(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 225
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V

    .line 226
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 227
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 228
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 229
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 230
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V

    .line 217
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 218
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 219
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 221
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 234
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->installSubDecor()V

    .line 235
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 236
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 237
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v1}, Llenovo/app/ActivityBarActivityImpl;->onSupportContentChanged()V

    .line 239
    return-void
.end method

.method setSupportActionBar(Llenovo/widget/Toolbar;)V
    .locals 5
    .param p1, "toolbar"    # Llenovo/widget/Toolbar;

    .prologue
    .line 166
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getSupportActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    .line 167
    .local v0, "ab":Llenovo/app/ActionBar;
    instance-of v2, v0, Lcom/lenovo/internal/app/WindowDecorActionBar;

    if-eqz v2, :cond_0

    .line 168
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_0
    instance-of v2, v0, Lcom/lenovo/internal/app/ToolbarActionBar;

    if-eqz v2, :cond_1

    .line 173
    check-cast v0, Lcom/lenovo/internal/app/ToolbarActionBar;

    .end local v0    # "ab":Llenovo/app/ActionBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/app/ToolbarActionBar;->setListMenuPresenter(Lcom/lenovo/internal/view/menu/ListMenuPresenter;)V

    .line 178
    :cond_1
    new-instance v1, Lcom/lenovo/internal/app/ToolbarActionBar;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegateBase;->mDefaultWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/lenovo/internal/app/ToolbarActionBar;-><init>(Llenovo/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;Lcom/lenovo/internal/app/WindowCallback;)V

    .line 180
    .local v1, "tbab":Lcom/lenovo/internal/app/ToolbarActionBar;
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase;->ensureToolbarListMenuPresenter()V

    .line 181
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/app/ToolbarActionBar;->setListMenuPresenter(Lcom/lenovo/internal/view/menu/ListMenuPresenter;)V

    .line 182
    invoke-virtual {p0, v1}, Llenovo/app/ActionBarActivityDelegateBase;->setSupportActionBar(Llenovo/app/ActionBar;)V

    .line 183
    invoke-virtual {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Lcom/lenovo/internal/app/WindowCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Llenovo/app/ActionBarActivityDelegateBase;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 184
    invoke-virtual {v1}, Lcom/lenovo/internal/app/ToolbarActionBar;->invalidateOptionsMenu()Z

    .line 185
    return-void
.end method

.method setSupportProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 683
    add-int/lit8 v0, p1, 0x0

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 684
    return-void
.end method

.method setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 677
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 679
    return-void

    .line 677
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 671
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 673
    return-void

    .line 671
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method setSupportProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 665
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 667
    return-void

    .line 665
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public startSupportActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ActionMode callback can not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    :cond_0
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_1

    .line 542
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v1}, Llenovo/view/ActionMode;->finish()V

    .line 545
    :cond_1
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/view/ActionMode$Callback;)V

    .line 547
    .local v0, "wrappedCallback":Llenovo/view/ActionMode$Callback;
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v1, :cond_2

    .line 548
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v1, v0}, Llenovo/app/ActionBar;->startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 549
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v1, :cond_2

    .line 550
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-interface {v1, v2}, Llenovo/app/ActivityBarActivityImpl;->onSupportActionModeStarted(Llenovo/view/ActionMode;)V

    .line 554
    :cond_2
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-nez v1, :cond_3

    .line 556
    invoke-virtual {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->startSupportActionModeFromWindow(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 559
    :cond_3
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    return-object v1
.end method

.method startSupportActionModeFromWindow(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 11
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 571
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v7, :cond_0

    .line 572
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-virtual {v7}, Llenovo/view/ActionMode;->finish()V

    .line 574
    :cond_0
    new-instance v6, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v6, p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Llenovo/app/ActionBarActivityDelegateBase;Llenovo/view/ActionMode$Callback;)V

    .line 575
    .local v6, "wrappedCallback":Llenovo/view/ActionMode$Callback;
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 577
    .local v0, "context":Landroid/content/Context;
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-nez v7, :cond_1

    .line 578
    iget-boolean v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mIsFloating:Z

    if-eqz v7, :cond_5

    .line 579
    new-instance v7, Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-direct {v7, v0}, Lcom/lenovo/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 582
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 583
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 584
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 586
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 587
    .local v2, "heightValue":Landroid/util/TypedValue;
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v10, 0x10102eb

    invoke-virtual {v7, v10, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 588
    iget v7, v2, Landroid/util/TypedValue;->data:I

    iget-object v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 590
    .local v1, "height":I
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 591
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 592
    new-instance v7, Llenovo/app/ActionBarActivityDelegateBase$3;

    invoke-direct {v7, p0}, Llenovo/app/ActionBarActivityDelegateBase$3;-><init>(Llenovo/app/ActionBarActivityDelegateBase;)V

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 618
    .end local v1    # "height":I
    .end local v2    # "heightValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_3

    .line 619
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/lenovo/internal/widget/ActionBarContextView;->killMode()V

    .line 620
    new-instance v3, Lcom/lenovo/internal/view/StandaloneActionMode;

    iget-object v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v7, :cond_7

    move v7, v8

    :goto_1
    invoke-direct {v3, v0, v10, v6, v7}, Lcom/lenovo/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/lenovo/internal/widget/ActionBarContextView;Llenovo/view/ActionMode$Callback;Z)V

    .line 622
    .local v3, "mode":Llenovo/view/ActionMode;
    invoke-virtual {v3}, Llenovo/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-interface {p1, v3, v7}, Llenovo/view/ActionMode$Callback;->onCreateActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 623
    invoke-virtual {v3}, Llenovo/view/ActionMode;->invalidate()V

    .line 624
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v3}, Lcom/lenovo/internal/widget/ActionBarContextView;->initForMode(Llenovo/view/ActionMode;)V

    .line 625
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v9}, Lcom/lenovo/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 626
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/lenovo/internal/widget/SplitActionBarView;->animateToVisibility(I)V

    .line 627
    iput-object v3, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    .line 628
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_2

    .line 629
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 631
    :cond_2
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 634
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/lenovo/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 635
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/lenovo/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->requestApplyInsets()V

    .line 641
    .end local v3    # "mode":Llenovo/view/ActionMode;
    :cond_3
    :goto_2
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    if-eqz v7, :cond_4

    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_4

    .line 642
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    iget-object v8, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    invoke-interface {v7, v8}, Llenovo/app/ActivityBarActivityImpl;->onSupportActionModeStarted(Llenovo/view/ActionMode;)V

    .line 644
    :cond_4
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    return-object v7

    .line 600
    :cond_5
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    const v10, 0x90c000a

    invoke-virtual {v7, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    .line 602
    .local v5, "stub":Landroid/view/ViewStub;
    if-eqz v5, :cond_1

    .line 604
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 605
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lenovo/internal/widget/ActionBarContextView;

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 606
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mBottomBarOverlayout:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    if-eqz v7, :cond_6

    .line 607
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mBottomBarOverlayout:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    iget-object v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v10}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->setBottomBarOverlayout(Lcom/lenovo/internal/widget/ActionBarContextView;)V

    .line 609
    :cond_6
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x90a0005

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 611
    .local v4, "splitActionMode":Z
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v10, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

    invoke-virtual {v7, v10}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 612
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v4}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 613
    iget-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v8}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    goto/16 :goto_0

    .end local v4    # "splitActionMode":Z
    .end local v5    # "stub":Landroid/view/ViewStub;
    :cond_7
    move v7, v9

    .line 620
    goto/16 :goto_1

    .line 638
    .restart local v3    # "mode":Llenovo/view/ActionMode;
    :cond_8
    const/4 v7, 0x0

    iput-object v7, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionMode:Llenovo/view/ActionMode;

    goto :goto_2
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActionBar:Llenovo/app/ActionBar;

    invoke-virtual {v0}, Llenovo/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llenovo/app/ActionBarActivityDelegateBase;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    const/4 v0, 0x1

    .line 409
    sparse-switch p1, :sswitch_data_0

    .line 429
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 411
    :sswitch_0
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    goto :goto_0

    .line 414
    :sswitch_1
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    goto :goto_0

    .line 417
    :sswitch_2
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    goto :goto_0

    .line 420
    :sswitch_3
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    goto :goto_0

    .line 423
    :sswitch_4
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    goto :goto_0

    .line 426
    :sswitch_5
    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase;->mHasEmbeddedTabsSup:Z

    goto :goto_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_5
    .end sparse-switch
.end method
