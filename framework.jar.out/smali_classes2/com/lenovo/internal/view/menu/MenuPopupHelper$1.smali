.class Lcom/lenovo/internal/view/menu/MenuPopupHelper$1;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/view/menu/MenuPopupHelper;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$1;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuPopupHelper$1;->this$0:Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 520
    return-void
.end method
