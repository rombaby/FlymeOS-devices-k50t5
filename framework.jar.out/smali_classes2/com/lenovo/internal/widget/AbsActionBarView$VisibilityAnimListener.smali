.class public Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/lenovo/internal/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/lenovo/internal/widget/AbsActionBarView;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/lenovo/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 310
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/lenovo/internal/widget/AbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 301
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/lenovo/internal/widget/AbsActionBarView;

    iget v1, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/lenovo/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/lenovo/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/AbsActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/lenovo/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/AbsActionBarView;->mMenuView:Llenovo/widget/ActionMenuView;

    iget v1, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 314
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/lenovo/internal/widget/AbsActionBarView;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/lenovo/internal/widget/AbsActionBarView;

    iput-object p1, v0, Lcom/lenovo/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 293
    iput-boolean v1, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 294
    return-void
.end method

.method public withFinalVisibility(I)Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 285
    iput p1, p0, Lcom/lenovo/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 286
    return-object p0
.end method
