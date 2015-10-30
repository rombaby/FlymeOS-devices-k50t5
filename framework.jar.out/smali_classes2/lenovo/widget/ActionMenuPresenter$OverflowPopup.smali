.class Llenovo/widget/ActionMenuPresenter$OverflowPopup;
.super Lcom/lenovo/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "list"    # Landroid/widget/ListView;
    .param p6, "overflowOnly"    # Z

    .prologue
    .line 763
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->this$0:Llenovo/widget/ActionMenuPresenter;

    .line 764
    const v6, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/widget/ListView;ZI)V

    .line 765
    iget-object v0, p1, Llenovo/widget/ActionMenuPresenter;->mPopupPresenterCallback:Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 766
    # getter for: Llenovo/widget/ActionMenuPresenter;->mDropDownList:Landroid/widget/ListView;
    invoke-static {p1}, Llenovo/widget/ActionMenuPresenter;->access$300(Llenovo/widget/ActionMenuPresenter;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->setListView(Landroid/widget/ListView;)V

    .line 767
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 771
    invoke-super {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 772
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$OverflowPopup;->this$0:Llenovo/widget/ActionMenuPresenter;

    # getter for: Llenovo/widget/ActionMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Llenovo/widget/ActionMenuPresenter;->access$400(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->close()V

    .line 774
    return-void
.end method
