.class public Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Llenovo/util/AnimatorHelp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MaskAnimator"
.end annotation


# instance fields
.field private mHideAnimator:Landroid/animation/ObjectAnimator;

.field private mMaskClickListener:Landroid/view/View$OnClickListener;

.field private mShowAnimator:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V
    .locals 9
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 909
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput-object p2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mMaskClickListener:Landroid/view/View$OnClickListener;

    .line 911
    new-array v1, v8, [F

    .line 912
    .local v1, "toShow":[F
    aput v4, v1, v6

    .line 913
    aput v5, v1, v7

    .line 914
    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mMaskView:Landroid/view/View;
    invoke-static {p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$800(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v2

    const-string v3, "alpha"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 915
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 916
    new-array v0, v8, [F

    .line 917
    .local v0, "toHide":[F
    aput v5, v0, v6

    .line 918
    aput v4, v0, v7

    .line 919
    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mMaskView:Landroid/view/View;
    invoke-static {p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$800(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v2

    const-string v3, "alpha"

    invoke-static {v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 920
    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 921
    return-void
.end method


# virtual methods
.method public hide()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 944
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$800(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 948
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 934
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$800(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$800(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$800(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 953
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$800(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->bringToFront()V

    .line 927
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->bringToFront()V

    .line 928
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$800(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mMaskClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    :cond_0
    return-void
.end method

.method public show()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$MaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method
