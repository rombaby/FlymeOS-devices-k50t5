.class Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field mCirclePaint:Landroid/graphics/Paint;

.field private mCustomView:Landroid/view/View;

.field private mHasIconTextSize:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMsgNewSize:I

.field private mNormalTextSize:I

.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Landroid/app/ActionBar$Tab;
    .param p4, "forList"    # Z

    .prologue
    const/4 v2, 0x0

    .line 546
    iput-object p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .line 547
    const/4 v0, 0x0

    const v1, 0x10102f3

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 548
    iput-object p3, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 552
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9080053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mHasIconTextSize:I

    .line 553
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9080054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mNormalTextSize:I

    .line 554
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x908005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mMsgNewSize:I

    .line 557
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setOrientation(I)V

    .line 559
    iget v0, p1, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mItemOffset:I

    iget v1, p1, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mItemOffset:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setPadding(IIII)V

    .line 560
    const v0, 0x902007e

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundResource(I)V

    .line 562
    if-eqz p4, :cond_0

    .line 563
    const v0, 0x800013

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 566
    return-void
.end method


# virtual methods
.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 570
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 571
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 738
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 739
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCirclePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mDrawFilter:Landroid/graphics/DrawFilter;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->access$400(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)Landroid/graphics/DrawFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 741
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    iget v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mMsgNewSize:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mMsgNewSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 743
    :cond_0
    return-void
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 591
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 593
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 594
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 598
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 599
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 601
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 715
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 716
    .local v3, "screenPos":[I
    invoke-virtual {p0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getLocationOnScreen([I)V

    .line 718
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 719
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getWidth()I

    move-result v5

    .line 720
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getHeight()I

    move-result v2

    .line 721
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 723
    .local v4, "screenWidth":I
    iget-object v6, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 726
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v6, 0x31

    aget v7, v3, v7

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v7, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 729
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 730
    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 605
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 608
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget v1, v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_1

    .line 609
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget v1, v1, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I

    if-ge v0, v1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 576
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 577
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 578
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 581
    if-eqz p1, :cond_3

    .line 582
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget-object v2, v2, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    :cond_1
    :goto_1
    return-void

    .line 575
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 584
    .restart local v0    # "changed":Z
    :cond_3
    iget-object v1, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget-object v2, v2, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, -0x4e000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setTextViewImageColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 746
    if-eqz p1, :cond_1

    .line 747
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCirclePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 748
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCirclePaint:Landroid/graphics/Paint;

    .line 749
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 756
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->invalidate()V

    .line 757
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 754
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCirclePaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public update()V
    .locals 13

    .prologue
    .line 619
    iget-object v6, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 620
    .local v6, "tab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 621
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 622
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 623
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 624
    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 625
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 627
    :cond_1
    iput-object v0, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 628
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    :cond_2
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_3

    .line 630
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 712
    :cond_3
    :goto_0
    return-void

    .line 634
    :cond_4
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v10, :cond_5

    .line 635
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 636
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 639
    :cond_5
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 640
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 642
    .local v7, "text":Ljava/lang/CharSequence;
    iget v8, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mNormalTextSize:I

    .line 643
    .local v8, "textSize":I
    if-eqz v3, :cond_b

    .line 644
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v10, :cond_6

    .line 645
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 649
    .local v4, "iconView":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x908006e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x908006f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 653
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x11

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 654
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    const/4 v10, 0x0

    invoke-virtual {p0, v4, v10}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 656
    iput-object v4, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 658
    .end local v4    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    iget v8, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mHasIconTextSize:I

    .line 667
    :cond_7
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v2, 0x1

    .line 668
    .local v2, "hasText":Z
    :goto_2
    if-eqz v2, :cond_d

    .line 669
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v10, :cond_8

    .line 672
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 677
    .local v9, "textView":Landroid/widget/TextView;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 678
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 679
    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 680
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 681
    const/4 v10, 0x0

    int-to-float v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 682
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    iget-object v10, v10, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    const v11, 0xffffff

    and-int/2addr v10, v11

    const/high16 v11, -0x4e000000

    or-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 684
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 688
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x11

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 689
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    invoke-virtual {p0, v9}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 691
    iput-object v9, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 693
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "textView":Landroid/widget/TextView;
    :cond_8
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_a

    .line 702
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 705
    :cond_a
    if-nez v2, :cond_e

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 706
    invoke-virtual {p0, p0}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 662
    .end local v2    # "hasText":Z
    :cond_b
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_7

    .line 663
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 667
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 696
    .restart local v2    # "hasText":Z
    :cond_d
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_9

    .line 697
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object v10, p0, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 708
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 709
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/lenovo/internal/widget/ScrollingTabContainerView$TabView;->setLongClickable(Z)V

    goto/16 :goto_0
.end method
