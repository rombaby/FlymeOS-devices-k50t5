.class public Llenovo/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/lenovo/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/ActionMenuView$1;,
        Llenovo/widget/ActionMenuView$LayoutParams;,
        Llenovo/widget/ActionMenuView$ActionMenuChildView;,
        Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Llenovo/widget/ActionMenuView$MenuBuilderCallback;,
        Llenovo/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x40


# instance fields
.field private mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field mFormatItems:Z

.field mFormatItemsWidth:I

.field private mLandlIconColor:Landroid/content/res/ColorStateList;

.field private mLandlTextColor:Landroid/content/res/ColorStateList;

.field mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

.field private mOnMenuItemClickListener:Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPortIconColor:Landroid/content/res/ColorStateList;

.field private mPortTextColor:Landroid/content/res/ColorStateList;

.field private mPresenter:Llenovo/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0, v4}, Llenovo/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 89
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 90
    iput v4, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    .line 91
    const/4 v1, 0x0

    sget-object v2, Lcom/lenovo/internal/R$styleable;->Theme:[I

    const/high16 v3, 0x1010000

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "ac":Landroid/content/res/TypedArray;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Llenovo/widget/ActionMenuView;->mPortTextColor:Landroid/content/res/ColorStateList;

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Llenovo/widget/ActionMenuView;->mPortIconColor:Landroid/content/res/ColorStateList;

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-static {p1}, Lcom/lenovo/internal/widget/ViewUtils;->getActionBarTitleColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Llenovo/widget/ActionMenuView;->mLandlTextColor:Landroid/content/res/ColorStateList;

    .line 100
    invoke-static {p1}, Lcom/lenovo/internal/widget/ViewUtils;->getActionBarDrawableColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Llenovo/widget/ActionMenuView;->mLandlIconColor:Landroid/content/res/ColorStateList;

    .line 101
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Llenovo/widget/ActionMenuView;->setGravity(I)V

    .line 102
    return-void
.end method

.method static synthetic access$200(Llenovo/widget/ActionMenuView;)Llenovo/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuView;

    .prologue
    .line 52
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mOnMenuItemClickListener:Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Llenovo/widget/ActionMenuView;)Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/ActionMenuView;

    .prologue
    .line 52
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static measureChildForCellsSimple(Landroid/view/View;IIII)I
    .locals 12
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 208
    .local v8, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    instance-of v10, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_2

    move-object v10, p0

    check-cast v10, Lcom/lenovo/internal/view/menu/ActionMenuItemView;

    move-object v7, v10

    .line 210
    .local v7, "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->onlyText()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v6, 0x1

    .line 212
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 213
    .local v0, "cellsUsed":I
    const/4 v10, 0x1

    if-le p2, v10, :cond_5

    if-eqz v6, :cond_5

    .line 214
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v2, v10, p4

    .line 217
    .local v2, "childHeightSize":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 218
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 220
    .local v3, "childHeightSpec":I
    mul-int v10, p1, p2

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 222
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 225
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 226
    rem-int v10, v9, p1

    if-eqz v10, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 227
    :cond_0
    const/4 v10, 0x2

    if-ge v0, v10, :cond_1

    const/4 v0, 0x2

    .line 229
    :cond_1
    iget-boolean v10, v8, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v10, :cond_4

    const/4 v5, 0x1

    .line 230
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 231
    iput v0, v8, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 236
    .end local v1    # "childHeightMode":I
    .end local v2    # "childHeightSize":I
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    .end local v5    # "expandable":Z
    .end local v9    # "measuredWidth":I
    :goto_3
    return v0

    .line 208
    .end local v0    # "cellsUsed":I
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 210
    .restart local v7    # "itemView":Lcom/lenovo/internal/view/menu/ActionMenuItemView;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 229
    .restart local v0    # "cellsUsed":I
    .restart local v1    # "childHeightMode":I
    .restart local v2    # "childHeightSize":I
    .restart local v3    # "childHeightSpec":I
    .restart local v4    # "childWidthSpec":I
    .restart local v6    # "hasText":Z
    .restart local v9    # "measuredWidth":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 233
    .end local v1    # "childHeightMode":I
    .end local v2    # "childHeightSize":I
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_5
    const/4 v0, 0x1

    .line 234
    iput v0, v8, Llenovo/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    goto :goto_3
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 285
    if-eqz p1, :cond_0

    instance-of v0, p1, Llenovo/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clickableChild(ZLandroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "clickable"    # Z
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 535
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v0

    .line 536
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 537
    invoke-virtual {p0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 538
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 541
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    if-nez p1, :cond_2

    .line 542
    iput-object p2, p0, Llenovo/widget/ActionMenuView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 546
    :goto_2
    return-void

    .line 544
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Llenovo/widget/ActionMenuView;->mClickListener:Landroid/view/View$OnClickListener;

    goto :goto_2
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 391
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 257
    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 259
    .local v0, "params":Llenovo/widget/ActionMenuView$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->weight:F

    .line 260
    const/16 v1, 0x10

    iput v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 261
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Llenovo/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Llenovo/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Llenovo/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Llenovo/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 266
    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 271
    if-eqz p1, :cond_2

    .line 272
    instance-of v1, p1, Llenovo/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    check-cast p1, Llenovo/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(Llenovo/widget/ActionMenuView$LayoutParams;)V

    .line 275
    .local v0, "result":Llenovo/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 276
    const/16 v1, 0x10

    iput v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 280
    .end local v0    # "result":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 272
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Llenovo/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Llenovo/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public generateOverflowButtonLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->generateDefaultLayoutParams()Llenovo/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 291
    .local v0, "result":Llenovo/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Llenovo/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 292
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 321
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 322
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    new-instance v2, Llenovo/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Llenovo/widget/ActionMenuView$MenuBuilderCallback;-><init>(Llenovo/widget/ActionMenuView;Llenovo/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 323
    new-instance v1, Llenovo/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Llenovo/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 324
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 325
    iget-object v2, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Llenovo/widget/ActionMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 327
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    iget-object v3, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 328
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Llenovo/widget/ActionMenuPresenter;->setMenuView(Llenovo/widget/ActionMenuView;)V

    .line 331
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v1

    .line 325
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Llenovo/widget/ActionMenuView;Llenovo/widget/ActionMenuView$1;)V

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 307
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 308
    return-void
.end method

.method public invokeItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 297
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Llenovo/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 146
    :cond_0
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 148
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 150
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 242
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->dismissPopupMenus()V

    .line 243
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 157
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 158
    .local v1, "childCount":I
    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0, v8, v8}, Llenovo/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 202
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v5, 0x0

    .line 163
    .local v5, "visibilityChild":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v2, v7

    .line 164
    .local v2, "formatItems":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 165
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 166
    invoke-virtual {p0, v3}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 165
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2    # "formatItems":Z
    .end local v3    # "i":I
    :cond_2
    move v2, v8

    .line 163
    goto :goto_1

    .line 168
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "formatItems":Z
    .restart local v3    # "i":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 170
    .local v4, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    iput-boolean v8, v4, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 171
    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mPortTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_1

    instance-of v6, v0, Lcom/lenovo/internal/view/menu/TintMenuIcon;

    if-eqz v6, :cond_1

    move-object v6, v0

    .line 172
    check-cast v6, Landroid/widget/TextView;

    iget-object v9, p0, Llenovo/widget/ActionMenuView;->mPortTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 173
    check-cast v0, Lcom/lenovo/internal/view/menu/TintMenuIcon;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mPortIconColor:Landroid/content/res/ColorStateList;

    invoke-interface {v0, v6}, Lcom/lenovo/internal/view/menu/TintMenuIcon;->tintDrawable(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 176
    .end local v4    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_4
    if-ne v5, v7, :cond_9

    .line 177
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_9

    .line 178
    invoke-virtual {p0, v3}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 177
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 180
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 181
    .restart local v4    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    iput-boolean v7, v4, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    goto :goto_5

    .line 185
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    if-ge v3, v1, :cond_9

    .line 186
    invoke-virtual {p0, v3}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_8

    .line 185
    .end local v0    # "child":Landroid/view/View;
    :cond_7
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 188
    .restart local v0    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 189
    .restart local v4    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    iput-boolean v8, v4, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 190
    add-int/lit8 v5, v5, 0x1

    .line 191
    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mLandlTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_7

    instance-of v6, v0, Lcom/lenovo/internal/view/menu/TintMenuIcon;

    if-eqz v6, :cond_7

    move-object v6, v0

    .line 192
    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Llenovo/widget/ActionMenuView;->mLandlTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    check-cast v0, Lcom/lenovo/internal/view/menu/TintMenuIcon;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Llenovo/widget/ActionMenuView;->mLandlIconColor:Landroid/content/res/ColorStateList;

    invoke-interface {v0, v6}, Lcom/lenovo/internal/view/menu/TintMenuIcon;->tintDrawable(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 197
    .end local v4    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_9
    if-nez v5, :cond_a

    .line 198
    invoke-virtual {p0, v8, v8}, Llenovo/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 201
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/16 :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    .line 504
    if-nez p1, :cond_0

    .line 505
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Llenovo/widget/ActionMenuView;->setChildTranslationY(F)V

    .line 507
    :cond_0
    if-ne p1, v4, :cond_2

    .line 508
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 509
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 510
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 511
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 508
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 516
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 517
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 518
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 515
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 522
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 495
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 496
    mul-float v1, v3, p2

    .line 500
    .local v1, "offset":F
    :goto_0
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v2, v1

    .line 501
    .local v0, "menuTranslationY":F
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuView;->setChildTranslationY(F)V

    .line 502
    return-void

    .line 498
    .end local v0    # "menuTranslationY":F
    .end local v1    # "offset":F
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float v1, v3, v2

    .restart local v1    # "offset":F
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 551
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 553
    const/4 v0, 0x1

    .line 555
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public peekMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setChildTranslationY(F)V
    .locals 4
    .param p1, "translationX"    # F

    .prologue
    .line 525
    invoke-virtual {p0}, Llenovo/widget/ActionMenuView;->getChildCount()I

    move-result v0

    .line 526
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 527
    invoke-virtual {p0, v1}, Llenovo/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 528
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 531
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 399
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Llenovo/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 400
    return-void
.end method

.method public setMenuCallbacks(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 339
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .line 340
    iput-object p2, p0, Llenovo/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    .line 341
    return-void
.end method

.method public setOnMenuItemClickListener(Llenovo/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 153
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mOnMenuItemClickListener:Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    .line 154
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Llenovo/widget/ActionMenuView;->mReserveOverflow:Z

    .line 253
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 113
    iget v0, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 114
    iput p1, p0, Llenovo/widget/ActionMenuView;->mPopupTheme:I

    .line 115
    if-nez p1, :cond_1

    .line 116
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Llenovo/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Llenovo/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Llenovo/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    .line 137
    iput-object p1, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 138
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Llenovo/widget/ActionMenuPresenter;->setMenuView(Llenovo/widget/ActionMenuView;)V

    .line 139
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ActionMenuView;->mPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
