.class Lcom/lenovo/internal/widget/BottomBarOverlayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomBarOverlayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/BottomBarOverlayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/BottomBarOverlayout;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$1;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lenovo/internal/widget/BottomBarOverlayout$1;->this$0:Lcom/lenovo/internal/widget/BottomBarOverlayout;

    # getter for: Lcom/lenovo/internal/widget/BottomBarOverlayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/BottomBarOverlayout;->access$000(Lcom/lenovo/internal/widget/BottomBarOverlayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    return-void
.end method
