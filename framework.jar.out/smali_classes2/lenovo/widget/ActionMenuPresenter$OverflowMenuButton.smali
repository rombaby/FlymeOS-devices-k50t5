.class Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Llenovo/widget/ActionMenuView$ActionMenuChildView;
.implements Lcom/lenovo/internal/view/menu/TintMenuIcon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private mChecked:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field mHeight:I

.field final synthetic this$0:Llenovo/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 15
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 632
    move-object/from16 v0, p1

    iput-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Llenovo/widget/ActionMenuPresenter;

    .line 633
    const/4 v11, 0x0

    const v12, 0x10102f6

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 634
    const/4 v11, 0x0

    sget-object v12, Lcom/lenovo/internal/R$styleable;->ActionButton:[I

    const v13, 0x10102f6

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 636
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 637
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 639
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 640
    .local v8, "res":Landroid/content/res/Resources;
    const v11, 0x908006c

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mHeight:I

    .line 641
    const v11, 0x908006e

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 642
    .local v4, "mMaxIconSize":I
    const v11, 0x9080053

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 643
    .local v3, "mHasIconTextSize":I
    const v11, 0x908005e

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 644
    .local v7, "mTopPaddings":I
    const v11, 0x908005f

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 645
    .local v5, "mMiddlePadding":I
    const v11, 0x9080049

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 647
    .local v6, "mPaddings":I
    iget-object v11, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_2

    .line 648
    iget-object v11, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 649
    .local v10, "width":I
    iget-object v11, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 650
    .local v2, "height":I
    if-eq v10, v4, :cond_0

    .line 651
    int-to-float v11, v4

    int-to-float v12, v10

    div-float v9, v11, v12

    .line 652
    .local v9, "scale":F
    move v10, v4

    .line 653
    int-to-float v11, v2

    mul-float/2addr v11, v9

    float-to-int v2, v11

    .line 655
    .end local v9    # "scale":F
    :cond_0
    if-eq v2, v4, :cond_1

    .line 656
    int-to-float v11, v4

    int-to-float v12, v2

    div-float v9, v11, v12

    .line 657
    .restart local v9    # "scale":F
    move v2, v4

    .line 658
    int-to-float v11, v10

    mul-float/2addr v11, v9

    float-to-int v10, v11

    .line 660
    .end local v9    # "scale":F
    :cond_1
    iget-object v11, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 662
    .end local v2    # "height":I
    .end local v10    # "width":I
    :cond_2
    const/4 v11, 0x0

    iget-object v12, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {p0, v11, v12, v13, v14}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 663
    invoke-virtual {p0, v5}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setCompoundDrawablePadding(I)V

    .line 664
    const/4 v11, 0x0

    int-to-float v12, v3

    invoke-virtual {p0, v11, v12}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setTextSize(IF)V

    .line 665
    const v11, 0x9090013

    invoke-virtual {p0, v11}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setText(I)V

    .line 666
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setSingleLine(Z)V

    .line 667
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v11}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 668
    const/4 v11, 0x0

    invoke-virtual {p0, v6, v7, v6, v11}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setPadding(IIII)V

    .line 669
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 670
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 732
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 733
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 734
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawableState()[I

    move-result-object v1

    .line 738
    .local v1, "myDrawableState":[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 740
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->invalidate()V

    .line 742
    .end local v1    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mChecked:Z

    return v0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 724
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 725
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    # getter for: Llenovo/widget/ActionMenuPresenter;->CHECKED_STATE_SET:[I
    invoke-static {}, Llenovo/widget/ActionMenuPresenter;->access$100()[I

    move-result-object v1

    invoke-static {v0, v1}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mergeDrawableStates([I[I)[I

    .line 728
    :cond_0
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 696
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 697
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 699
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 746
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Llenovo/widget/ActionMenuPresenter;

    # getter for: Llenovo/widget/ActionMenuPresenter;->mMinCellSize:I
    invoke-static {v0}, Llenovo/widget/ActionMenuPresenter;->access$200(Llenovo/widget/ActionMenuPresenter;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 747
    iget v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 748
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 749
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 674
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->toggle()V

    .line 675
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    :goto_0
    return v1

    .line 679
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 680
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 712
    iget-boolean v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 713
    iput-boolean p1, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mChecked:Z

    .line 714
    invoke-virtual {p0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->refreshDrawableState()V

    .line 717
    :cond_0
    return-void
.end method

.method public tintDrawable(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 753
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 755
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuPresenter$OverflowMenuButton;->setChecked(Z)V

    .line 720
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
