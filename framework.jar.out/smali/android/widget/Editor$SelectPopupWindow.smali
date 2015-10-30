.class Landroid/widget/Editor$SelectPopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectPopupWindow"
.end annotation


# static fields
.field private static final SHOW_BASIC:I = 0x0

.field private static final SHOW_MORE:I = 0x1

.field private static final SHOW_TRANSLATE:I = 0x2


# instance fields
.field private isExpandFromTop:Z

.field private mAnchor:Landroid/view/View;

.field private mBasicMenuView:Landroid/widget/LinearLayout;

.field private mBottomY:I

.field private mContentView:Landroid/widget/LinearLayout;

.field private mCutMenuItem:Landroid/view/View;

.field private mMenuWidth:I

.field private mMoreMenuView:Landroid/widget/LinearLayout;

.field private mMoreMenuViewHeight:I

.field private mParentPositionX:I

.field private mParentPositionY:I

.field private mPopupWindowAnimationHelper:Landroid/widget/PopupWindowAnimationHelper;

.field private mPositionUpdateListener:Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

.field private mPositionX:I

.field private mShowX:I

.field private mShowY:I

.field private mTopY:I

.field private mTranslateMenuItem:Landroid/view/View;

.field private mTranslationStub:Landroid/view/ViewStub;

.field private mTranslationView:Landroid/widget/LinearLayout;

.field private mTranslationViewHelper:Landroid/widget/TranslationViewHelper;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2442
    iput-object p1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2416
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    .line 2434
    new-instance v5, Landroid/widget/Editor$SelectPopupWindow$1;

    invoke-direct {v5, p0}, Landroid/widget/Editor$SelectPopupWindow$1;-><init>(Landroid/widget/Editor$SelectPopupWindow;)V

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionUpdateListener:Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

    .line 2443
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/widget/Editor$SelectPopupWindow;->setClippingEnabled(Z)V

    .line 2444
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 2451
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x904004a

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    .line 2452
    const v5, 0x9040047

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mCutMenuItem:Landroid/view/View;

    .line 2453
    const v5, 0x9040049

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslateMenuItem:Landroid/view/View;

    .line 2455
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const v6, 0x90c0064

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    .line 2456
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const v6, 0x90c0062

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    .line 2457
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const v6, 0x90c0063

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationStub:Landroid/view/ViewStub;

    .line 2458
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const v6, 0x90c0066

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2459
    .local v4, "paste":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const v6, 0x90c0065

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2461
    .local v1, "copy":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const v6, 0x90c005f

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2463
    .local v0, "all":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const v6, 0x90c0067

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2464
    .local v3, "more":Landroid/view/View;
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2465
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2467
    :cond_0
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2468
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2470
    :cond_1
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2471
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mCutMenuItem:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 2474
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mCutMenuItem:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2475
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslateMenuItem:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2476
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2477
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2479
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2480
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2482
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->setupPopupWindowSizeInfo()V

    .line 2484
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Landroid/widget/Editor$SelectPopupWindow;->setContentView(Landroid/view/View;)V

    .line 2485
    return-void
.end method

.method static synthetic access$1400(Landroid/widget/Editor$SelectPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectPopupWindow;

    .prologue
    .line 2373
    iget v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionX:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/Editor$SelectPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectPopupWindow;

    .prologue
    .line 2373
    iget v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionY:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/Editor$SelectPopupWindow;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$SelectPopupWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 2373
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SelectPopupWindow;->updatePosition(II)V

    return-void
.end method

.method private activateMoreItems(Z)V
    .locals 0
    .param p1, "isAddOnTop"    # Z

    .prologue
    .line 2643
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectPopupWindow;->addMoreItems(Z)V

    .line 2644
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectPopupWindow;->onMoreItemsAdded(Z)V

    .line 2645
    return-void
.end method

.method private addMoreItems(Z)V
    .locals 2
    .param p1, "isAddOnTop"    # Z

    .prologue
    .line 2655
    if-eqz p1, :cond_0

    .line 2656
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslateMenuItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2657
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mCutMenuItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2662
    :goto_0
    return-void

    .line 2659
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mCutMenuItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2660
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslateMenuItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private computeLocalPosition()V
    .locals 6

    .prologue
    .line 2785
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 2786
    .local v1, "offsetEnd":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2787
    .local v2, "offsetStart":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    .line 2789
    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    .line 2791
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2792
    .local v3, "startLine":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    .line 2793
    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    .line 2794
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2795
    .local v0, "endLine":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    .line 2796
    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    .line 2797
    return-void
.end method

.method private getMeasuredViewSize(Landroid/view/View;)[I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x80000000

    .line 2731
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 2733
    .local v1, "result":[I
    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2734
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 2737
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    aput v3, v1, v2

    .line 2738
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    aput v3, v1, v2

    .line 2739
    return-object v1
.end method

.method private handleExpandAnimation(Z)V
    .locals 5
    .param p1, "isAddOnTop"    # Z

    .prologue
    .line 2713
    new-instance v1, Landroid/widget/PopupWindowAnimationHelper;

    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const v4, 0x90c0062

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindowAnimationHelper;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iput-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mPopupWindowAnimationHelper:Landroid/widget/PopupWindowAnimationHelper;

    .line 2716
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 2717
    .local v0, "isFromTopToBottom":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mPopupWindowAnimationHelper:Landroid/widget/PopupWindowAnimationHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/PopupWindowAnimationHelper;->showExpand(ZLandroid/widget/PopupWindowAnimationHelper$AnimationProcessListener;)V

    .line 2718
    return-void

    .line 2716
    .end local v0    # "isFromTopToBottom":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMoreMenuLocation(Z)V
    .locals 11
    .param p1, "isAddOnTop"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2684
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    .line 2685
    .local v7, "hideHeight":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    .line 2687
    if-eqz p1, :cond_1

    .line 2688
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Landroid/widget/Editor$SelectPopupWindow;->getMeasuredViewSize(Landroid/view/View;)[I

    move-result-object v10

    .line 2689
    .local v10, "sizeAnimView":[I
    iget v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    aget v1, v10, v5

    sub-int/2addr v1, v7

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    .line 2708
    .end local v10    # "sizeAnimView":[I
    :cond_0
    :goto_0
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectPopupWindow;->setHeight(I)V

    .line 2709
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mAnchor:Landroid/view/View;

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowX:I

    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$SelectPopupWindow;->showAtLocation(Landroid/view/View;IIII)V

    .line 2710
    return-void

    .line 2691
    :cond_1
    const/16 v8, 0x3c

    .line 2692
    .local v8, "selectHandleHeight":I
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2693
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    .line 2698
    :cond_2
    :goto_1
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 2700
    .local v6, "anchorLocationOnScreen":[I
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 2701
    aget v0, v6, v5

    iget v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    add-int v9, v0, v1

    .line 2703
    .local v9, "selectedTextBottomPosition":I
    iget v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    if-le v9, v0, :cond_0

    .line 2704
    iget v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    add-int/2addr v0, v7

    iget v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    iget v2, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    iput v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    goto :goto_0

    .line 2694
    .end local v6    # "anchorLocationOnScreen":[I
    .end local v9    # "selectedTextBottomPosition":I
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2695
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    goto :goto_1
.end method

.method private onMoreItemsAdded(Z)V
    .locals 0
    .param p1, "isAddOnTop"    # Z

    .prologue
    .line 2679
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectPopupWindow;->handleMoreMenuLocation(Z)V

    .line 2680
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectPopupWindow;->handleExpandAnimation(Z)V

    .line 2681
    return-void
.end method

.method private removeMoreItems()V
    .locals 2

    .prologue
    .line 2668
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2669
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x90c0067

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2670
    return-void
.end method

.method private setupPopupWindowSizeInfo()V
    .locals 2

    .prologue
    .line 2492
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Landroid/widget/Editor$SelectPopupWindow;->getMeasuredViewSize(Landroid/view/View;)[I

    move-result-object v0

    .line 2494
    .local v0, "sizeBasicView":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/Editor$SelectPopupWindow;->setWidth(I)V

    .line 2495
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/widget/Editor$SelectPopupWindow;->setHeight(I)V

    .line 2496
    return-void
.end method

.method private updatePosition(II)V
    .locals 19
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 2800
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    if-gez v17, :cond_1

    .line 2872
    :cond_0
    :goto_0
    return-void

    .line 2804
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectPopupWindow;->measureContent()V

    .line 2805
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionX:I

    .line 2806
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionY:I

    .line 2807
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    move/from16 v17, v0

    add-int v11, p1, v17

    .line 2808
    .local v11, "positionX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    move/from16 v17, v0

    add-int v12, p2, v17

    .line 2811
    .local v12, "positionY":I
    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 2812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v16

    .line 2813
    .local v16, "widthChangeable":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    .line 2814
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectPopupWindow;->setWidth(I)V

    .line 2818
    :goto_1
    move/from16 v15, v16

    .line 2819
    .local v15, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    .line 2820
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHeight()I

    move-result v14

    .line 2821
    .local v14, "textViewHeight":I
    const/4 v13, 0x0

    .line 2822
    .local v13, "sHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 2823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    .line 2827
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    move/from16 v17, v0

    if-gez v17, :cond_a

    .line 2828
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    add-int v17, v17, v6

    add-int v17, v17, v13

    move/from16 v0, v17

    if-le v0, v14, :cond_9

    .line 2829
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    if-lez v17, :cond_8

    .line 2830
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v14, :cond_7

    .line 2831
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    add-int v17, v17, v6

    div-int/lit8 v17, v17, 0x2

    add-int v12, p2, v17

    .line 2849
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2850
    .local v5, "handleRes":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mStatusBarHeight:I
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$2000(Landroid/widget/Editor;)I

    move-result v18

    add-int v9, v17, v18

    .line 2851
    .local v9, "minPositionY":I
    if-ge v12, v9, :cond_4

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v18

    add-int v17, v17, v18

    div-int/lit8 v10, v17, 0x2

    .line 2853
    .local v10, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 2854
    .local v7, "layout":Landroid/text/Layout;
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 2855
    .local v8, "line":I
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v17

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v18

    sub-int v17, v17, v18

    add-int v12, v12, v17

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v17

    add-int v12, v12, v17

    .line 2859
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2860
    .local v4, "handle":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    add-int v12, v12, v17

    .line 2863
    .end local v4    # "handle":Landroid/graphics/drawable/Drawable;
    .end local v7    # "layout":Landroid/text/Layout;
    .end local v8    # "line":I
    .end local v10    # "offset":I
    :cond_4
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v11, v11, v17

    .line 2864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2865
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2866
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    sub-int v17, v17, v15

    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2867
    const/16 v17, 0x0

    sub-int v18, v12, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2868
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11, v12}, Landroid/widget/Editor$SelectPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2871
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v15, v6}, Landroid/widget/Editor$SelectPopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 2816
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "handleRes":Landroid/graphics/drawable/Drawable;
    .end local v6    # "height":I
    .end local v9    # "minPositionY":I
    .end local v13    # "sHeight":I
    .end local v14    # "textViewHeight":I
    .end local v15    # "width":I
    .end local v16    # "widthChangeable":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mMenuWidth:I

    move/from16 v16, v0

    .restart local v16    # "widthChangeable":I
    goto/16 :goto_1

    .line 2824
    .restart local v6    # "height":I
    .restart local v13    # "sHeight":I
    .restart local v14    # "textViewHeight":I
    .restart local v15    # "width":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    goto/16 :goto_2

    .line 2833
    :cond_7
    add-int v17, v14, v6

    div-int/lit8 v17, v17, 0x2

    add-int v12, p2, v17

    goto/16 :goto_3

    .line 2836
    :cond_8
    sub-int v17, p2, v6

    if-gez v17, :cond_3

    .line 2837
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    add-int v17, v17, p2

    add-int v17, v17, v6

    add-int v12, v17, v13

    goto/16 :goto_3

    .line 2841
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    add-int v17, v17, p2

    add-int v17, v17, v6

    add-int v12, v17, v13

    goto/16 :goto_3

    .line 2844
    :cond_a
    sub-int v17, v12, v6

    if-gez v17, :cond_3

    .line 2845
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    move/from16 v17, v0

    add-int v17, v17, p2

    add-int v17, v17, v6

    add-int v12, v17, v13

    goto/16 :goto_3
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2517
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mSelectPopupWindow:Landroid/widget/Editor$SelectPopupWindow;

    .line 2518
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2519
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v0, :cond_0

    .line 2520
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2521
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 2524
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1

    .line 2525
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 2528
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mIsSetHardwareAccelerated:Z

    if-eqz v0, :cond_2

    .line 2529
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iput-boolean v2, v0, Landroid/widget/Editor;->mIsSetHardwareAccelerated:Z

    .line 2530
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHardwareAccelerated(Z)V

    .line 2533
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    .line 2534
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 2512
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2513
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    .line 2514
    return-void
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2885
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2886
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 2891
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2538
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2631
    :goto_0
    :pswitch_0
    return-void

    .line 2540
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020022

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2541
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    goto :goto_0

    .line 2544
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020021

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2545
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    goto :goto_0

    .line 2548
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020020

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2549
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectPopupWindow;->dismiss()V

    goto :goto_0

    .line 2552
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x102001f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2553
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectPopupWindow;->show()V

    goto :goto_0

    .line 2558
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationViewHelper:Landroid/widget/TranslationViewHelper;

    if-nez v1, :cond_0

    .line 2559
    new-instance v1, Landroid/widget/TranslationViewHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TranslationViewHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationViewHelper:Landroid/widget/TranslationViewHelper;

    .line 2560
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    .line 2561
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectPopupWindow;->getWidth()I

    move-result v3

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2563
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectPopupWindow;->removeMoreItems()V

    .line 2564
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2566
    const/16 v9, 0x3c

    .line 2567
    .local v9, "selectHandleHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2568
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    .line 2573
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v21

    .line 2574
    .local v21, "startOffset":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    .line 2576
    .local v13, "endOffset":I
    const/4 v1, 0x0

    move/from16 v0, v21

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 2577
    .local v22, "startOffsetFixed":I
    const/4 v1, 0x0

    move/from16 v0, v21

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2579
    .local v14, "endOffsetFixed":I
    move/from16 v21, v22

    .line 2580
    move v13, v14

    .line 2583
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move/from16 v0, v21

    invoke-interface {v1, v0, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2584
    .local v4, "selectedStr":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2585
    const-string v4, ""

    .line 2588
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v20

    .line 2589
    .local v20, "startLine":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 2590
    .local v12, "endLine":I
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v18, v0

    .line 2591
    .local v18, "locationOnScreen":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 2593
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 2594
    .local v7, "topY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    add-int/2addr v7, v1

    .line 2595
    const/4 v1, 0x1

    aget v1, v18, v1

    add-int/2addr v7, v1

    .line 2597
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    .line 2598
    .local v8, "bottomY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    add-int/2addr v8, v1

    .line 2599
    const/4 v1, 0x1

    aget v1, v18, v1

    add-int/2addr v8, v1

    .line 2601
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2603
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mParentPositionX:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    add-int v6, v1, v2

    .line 2605
    .local v6, "positionX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationViewHelper:Landroid/widget/TranslationViewHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Editor$SelectPopupWindow;->mAnchor:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/Editor$SelectPopupWindow;->mPositionUpdateListener:Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v10}, Landroid/widget/TranslationViewHelper;->showTranslatePopupWindow(Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View;IIIILandroid/widget/TranslationViewHelper$OnPositionUpdateListener;)V

    goto/16 :goto_0

    .line 2569
    .end local v4    # "selectedStr":Ljava/lang/String;
    .end local v6    # "positionX":I
    .end local v7    # "topY":I
    .end local v8    # "bottomY":I
    .end local v12    # "endLine":I
    .end local v13    # "endOffset":I
    .end local v14    # "endOffsetFixed":I
    .end local v18    # "locationOnScreen":[I
    .end local v20    # "startLine":I
    .end local v21    # "startOffset":I
    .end local v22    # "startOffsetFixed":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2570
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    goto/16 :goto_1

    .line 2609
    .end local v9    # "selectHandleHeight":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const v2, 0x90c0067

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2611
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mCutMenuItem:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectPopupWindow;->getMeasuredViewSize(Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v15, v1, v2

    .line 2612
    .local v15, "heightCut":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mTranslateMenuItem:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectPopupWindow;->getMeasuredViewSize(Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v16, v1, v2

    .line 2613
    .local v16, "heightTranslate":I
    add-int v1, v15, v16

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuViewHeight:I

    .line 2614
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v17

    .line 2615
    .local v17, "hideHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 2616
    .local v23, "statusBarHeight":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuViewHeight:I

    sub-int/2addr v1, v2

    sub-int v1, v1, v23

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/widget/Editor$SelectPopupWindow;->isExpandFromTop:Z

    .line 2618
    const/4 v1, 0x2

    new-array v11, v1, [I

    .line 2620
    .local v11, "anchorLocationOnScreen":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 2621
    const/4 v1, 0x1

    aget v1, v11, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    add-int v19, v1, v2

    .line 2622
    .local v19, "selectedTextBottomPosition":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    move/from16 v0, v19

    if-gt v0, v1, :cond_4

    .line 2623
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/widget/Editor$SelectPopupWindow;->isExpandFromTop:Z

    .line 2626
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/Editor$SelectPopupWindow;->isExpandFromTop:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectPopupWindow;->activateMoreItems(Z)V

    goto/16 :goto_0

    .line 2616
    .end local v11    # "anchorLocationOnScreen":[I
    .end local v19    # "selectedTextBottomPosition":I
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 2538
    :pswitch_data_0
    .packed-switch 0x90c005e
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public show()V
    .locals 3

    .prologue
    .line 2502
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2503
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 2505
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->computeLocalPosition()V

    .line 2507
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 2508
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$SelectPopupWindow;->updatePosition(II)V

    .line 2509
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 2747
    iput-object p1, p0, Landroid/widget/Editor$SelectPopupWindow;->mAnchor:Landroid/view/View;

    .line 2748
    iput p3, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowX:I

    .line 2749
    iput p4, p0, Landroid/widget/Editor$SelectPopupWindow;->mShowY:I

    .line 2751
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2752
    return-void
.end method

.method public showAtLocation(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2755
    packed-switch p5, :pswitch_data_0

    .line 2781
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/Editor$SelectPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2782
    return-void

    .line 2757
    :pswitch_0
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2758
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2759
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2760
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2764
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2765
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2766
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2771
    :pswitch_2
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mBasicMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2772
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMoreMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2773
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2774
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mTranslationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 2877
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2878
    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->computeLocalPosition()V

    .line 2879
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SelectPopupWindow;->updatePosition(II)V

    .line 2883
    :goto_0
    return-void

    .line 2881
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->hide()V

    goto :goto_0
.end method
