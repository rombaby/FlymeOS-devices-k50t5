.class Lcom/mediatek/widget/DefaultAccountPickerDialog$3;
.super Ljava/lang/Object;
.source "DefaultAccountPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/widget/DefaultAccountPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/DefaultAccountPickerDialog;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    # getter for: Lcom/mediatek/widget/DefaultAccountPickerDialog;->sAdapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;
    invoke-static {}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->access$100()Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    move-result-object v1

    # getter for: Lcom/mediatek/widget/DefaultAccountPickerDialog;->sSelection:I
    invoke-static {}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->getItem(I)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-virtual {v1}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "DefaultAccountPickerDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/mediatek/widget/DefaultAccountPickerDialog;->sSelection:I
    invoke-static {}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-virtual {v1}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    :cond_0
    return-void
.end method
