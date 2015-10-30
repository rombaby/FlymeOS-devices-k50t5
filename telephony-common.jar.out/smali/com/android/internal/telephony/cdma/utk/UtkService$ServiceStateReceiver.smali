.class public Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UtkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/UtkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceStateReceiver"
.end annotation


# instance fields
.field mOldState:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V
    .locals 1

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1553
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->mOldState:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1556
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1560
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1561
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1562
    .local v0, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_3

    .line 1563
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$002(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I

    .line 1570
    :cond_2
    :goto_1
    const-string v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service state changed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$000(Lcom/android/internal/telephony/cdma/utk/UtkService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->mOldState:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$000(Lcom/android/internal/telephony/cdma/utk/UtkService;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1572
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$000(Lcom/android/internal/telephony/cdma/utk/UtkService;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->mOldState:I

    .line 1574
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # invokes: Lcom/android/internal/telephony/cdma/utk/UtkService;->checkLocationEvent()V
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$100(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    goto :goto_0

    .line 1564
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 1565
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # setter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$002(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I

    goto :goto_1

    .line 1566
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1567
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # setter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$002(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I

    goto :goto_1
.end method
