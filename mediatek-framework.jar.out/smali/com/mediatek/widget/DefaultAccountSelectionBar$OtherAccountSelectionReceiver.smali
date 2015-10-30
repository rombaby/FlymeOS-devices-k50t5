.class Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultAccountSelectionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/DefaultAccountSelectionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherAccountSelectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;


# direct methods
.method private constructor <init>(Lcom/mediatek/widget/DefaultAccountSelectionBar;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/widget/DefaultAccountSelectionBar;Lcom/mediatek/widget/DefaultAccountSelectionBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/widget/DefaultAccountSelectionBar;
    .param p2, "x1"    # Lcom/mediatek/widget/DefaultAccountSelectionBar$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;-><init>(Lcom/mediatek/widget/DefaultAccountSelectionBar;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "action":Ljava/lang/String;
    const-string v2, "DefaultAccountSelectionBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;
    invoke-static {v2}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$100(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Lcom/mediatek/widget/CustomAccountRemoteViews;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getOtherAccounts()Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "accountItems":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    const-string v2, "SELECT_OTHER_ACCOUNTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$200(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$200(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->build(Landroid/content/Context;)Lcom/mediatek/widget/DefaultAccountPickerDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->setData(Ljava/util/List;)Lcom/mediatek/widget/DefaultAccountPickerDialog;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$200(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v4, "select_other_account"

    invoke-virtual {v3, v2, v4}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    iget-object v3, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    # getter for: Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$200(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/mediatek/widget/DefaultAccountSelectionBar;->hideNotification(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->access$300(Lcom/mediatek/widget/DefaultAccountSelectionBar;Landroid/content/Context;)V

    .line 137
    return-void

    .line 133
    :cond_0
    const-string v2, "DefaultAccountSelectionBar"

    const-string v3, "--- wrong context ---"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
