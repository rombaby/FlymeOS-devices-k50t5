.class Lcom/lenovo/internal/widget/ActionBarOverlayLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$5;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$5;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mMaskView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->access$800(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 883
    return-void
.end method
