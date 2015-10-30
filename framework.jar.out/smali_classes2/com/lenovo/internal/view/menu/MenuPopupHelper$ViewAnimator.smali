.class public Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Llenovo/util/AnimatorHelp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewAnimator"
.end annotation


# instance fields
.field mHideAnimator:Landroid/animation/ObjectAnimator;

.field mShowAnimator:Landroid/animation/ObjectAnimator;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/view/menu/MenuPopupHelper;Landroid/view/View;)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 432
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mView:Landroid/view/View;

    .line 434
    new-array v1, v5, [F

    .line 435
    .local v1, "toShow":[F
    aput v7, v1, v8

    .line 436
    aput v6, v1, v9

    .line 437
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mView:Landroid/view/View;

    sget-object v3, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->LIST_TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 438
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 440
    new-array v0, v5, [F

    .line 442
    .local v0, "toHide":[F
    aput v6, v0, v8

    .line 443
    aput v7, v0, v9

    .line 444
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mView:Landroid/view/View;

    sget-object v3, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->LIST_TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 445
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    return-void

    .line 437
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public hide()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 472
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 463
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$400(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 465
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$500(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->getActionMenuView(Landroid/view/View;)Llenovo/widget/ActionMenuView;

    move-result-object v0

    .line 466
    .local v0, "actionMenuView":Llenovo/widget/ActionMenuView;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-object v2, v2, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mDissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Llenovo/widget/ActionMenuView;->clickableChild(ZLandroid/view/View$OnClickListener;)V

    .line 468
    .end local v0    # "actionMenuView":Llenovo/widget/ActionMenuView;
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 459
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 450
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$400(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 452
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->access$500(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->getActionMenuView(Landroid/view/View;)Llenovo/widget/ActionMenuView;

    move-result-object v0

    .line 453
    .local v0, "actionMenuView":Llenovo/widget/ActionMenuView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-object v1, v1, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->mDissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3, v1}, Llenovo/widget/ActionMenuView;->clickableChild(ZLandroid/view/View$OnClickListener;)V

    .line 455
    .end local v0    # "actionMenuView":Llenovo/widget/ActionMenuView;
    :cond_0
    return-void
.end method

.method public show()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$ViewAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method
