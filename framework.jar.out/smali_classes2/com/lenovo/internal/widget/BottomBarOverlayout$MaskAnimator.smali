.class public Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;
.super Ljava/lang/Object;
.source "BottomBarOverlayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Llenovo/util/AnimatorHelp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/BottomBarOverlayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MaskAnimator"
.end annotation


# instance fields
.field private mHideAnimator:Landroid/animation/ObjectAnimator;

.field private mMaskClickListener:Landroid/view/View$OnClickListener;

.field private mShowAnimator:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/widget/BottomBarOverlayout;Landroid/view/View$OnClickListener;)V
    .locals 9
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 408
    iput-object p1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mMaskClickListener:Landroid/view/View$OnClickListener;

    .line 410
    new-array v1, v8, [F

    .line 411
    .local v1, "toShow":[F
    aput v4, v1, v6

    .line 412
    aput v5, v1, v7

    .line 413
    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;
    invoke-static {p1}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$000(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v2

    const-string v3, "alpha"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 414
    iget-object v2, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 415
    new-array v0, v8, [F

    .line 416
    .local v0, "toHide":[F
    aput v5, v0, v6

    .line 417
    aput v4, v0, v7

    .line 418
    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;
    invoke-static {p1}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$000(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v2

    const-string v3, "alpha"

    invoke-static {v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 419
    iget-object v2, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 420
    return-void
.end method


# virtual methods
.method public hide()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$100(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 446
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$000(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$100(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 436
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$000(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$000(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$000(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 453
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$000(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mActionBarBottom:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$100(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 427
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->bringToFront()V

    .line 428
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$000(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mMaskClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    :cond_0
    return-void
.end method

.method public show()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$MaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method
