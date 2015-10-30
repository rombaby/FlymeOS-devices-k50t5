.class Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/lenovo/internal/view/menu/MenuDialogHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/lenovo/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 779
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Llenovo/widget/ActionMenuPresenter;

    .line 780
    invoke-direct {p0, p3}, Lcom/lenovo/internal/view/menu/MenuDialogHelper;-><init>(Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 781
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 785
    invoke-super {p0, p1}, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->onDismiss(Landroid/content/DialogInterface;)V

    .line 786
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Llenovo/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Llenovo/widget/ActionMenuPresenter;->access$502(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;)Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 787
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Llenovo/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Llenovo/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 788
    return-void
.end method
