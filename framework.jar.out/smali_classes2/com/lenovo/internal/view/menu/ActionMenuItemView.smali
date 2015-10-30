.class public Lcom/lenovo/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/internal/view/menu/TintMenuIcon;


# instance fields
.field private mAllowTextWithIcon:Z

.field mCheckable:Z

.field private mExpandedFormat:Z

.field private mHasIconTextSize:I

.field private mHeight:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMiddlePadding:I

.field private mMinCellSize:I

.field private mNormalTextSize:I

.field private mPaddings:I

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTopPaddings:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const v0, 0x10102d8

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-boolean v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mCheckable:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x908004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinCellSize:I

    .line 67
    const v1, 0x9080053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHasIconTextSize:I

    .line 68
    const v1, 0x9080054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mNormalTextSize:I

    .line 69
    const v1, 0x908006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 70
    const v1, 0x908005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTopPaddings:I

    .line 71
    const v1, 0x908005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMiddlePadding:I

    .line 72
    const v1, 0x9080049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPaddings:I

    .line 73
    const v1, 0x908006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHeight:I

    .line 75
    invoke-virtual {p0, p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 79
    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setSingleLine(Z)V

    .line 80
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 82
    return-void
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 148
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 150
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v2

    .line 147
    goto :goto_0

    .line 150
    .restart local v0    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getItemData()Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 103
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p1, p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/lenovo/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 107
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setClickable(Z)V

    .line 109
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 110
    return-void

    .line 107
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    .line 117
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 206
    iget v6, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 208
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->onlyText()Z

    move-result v6

    if-nez v6, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/widget/ActionMenuView$LayoutParams;

    .line 210
    .local v2, "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    iget-boolean v6, v2, Llenovo/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v6, :cond_2

    .line 211
    iget v6, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinCellSize:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v6, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 222
    .end local v2    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v1, 0x1

    .line 223
    .local v1, "hasTxt":Z
    :goto_1
    if-nez v1, :cond_1

    iget-object v6, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    .line 227
    .local v3, "w":I
    iget-object v6, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 230
    .local v0, "dw":I
    iget-object v6, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 231
    iget v5, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v8

    invoke-super {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 237
    .end local v0    # "dw":I
    .end local v3    # "w":I
    :cond_1
    :goto_2
    return-void

    .line 213
    .end local v1    # "hasTxt":Z
    .restart local v2    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    :cond_2
    const/high16 v6, -0x80000000

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v6, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 214
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    .line 215
    .local v4, "width":I
    iget v6, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinCellSize:I

    if-ge v4, v6, :cond_0

    .line 216
    iget v6, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMinCellSize:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v6, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0

    .line 220
    .end local v2    # "lp":Llenovo/widget/ActionMenuView$LayoutParams;
    .end local v4    # "width":I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0

    :cond_4
    move v1, v5

    .line 222
    goto :goto_1

    .line 233
    .restart local v0    # "dw":I
    .restart local v1    # "hasTxt":Z
    .restart local v3    # "w":I
    :cond_5
    sub-int v6, v3, v0

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v7

    invoke-super {p0, v6, v5, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2
.end method

.method public onlyText()Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mCheckable:Z

    .line 129
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mCheckable:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setSelected(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 139
    iput-boolean p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 140
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 144
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 154
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    iget v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 161
    .local v0, "text_img":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0, v4, p1, v4, v4}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mHasIconTextSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTextSize(IF)V

    .line 164
    iget v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mMiddlePadding:I

    invoke-virtual {p0, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setCompoundDrawablePadding(I)V

    .line 165
    iget v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPaddings:I

    iget v3, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTopPaddings:I

    iget v4, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mPaddings:I

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setPadding(IIII)V

    .line 171
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 172
    return-void

    .end local v0    # "text_img":Z
    :cond_1
    move v0, v1

    .line 160
    goto :goto_0

    .line 167
    .restart local v0    # "text_img":Z
    :cond_2
    invoke-virtual {p0, p1, v4, v4, v4}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget v2, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mNormalTextSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setTextSize(IF)V

    goto :goto_1
.end method

.method public setItemInvoker(Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/lenovo/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 121
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 190
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 195
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 197
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public tintDrawable(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 244
    return-void
.end method
