.class Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 1351
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbWaitSub:Z
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1900(Lcom/android/internal/telephony/uicc/RuimRecords;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1356
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v2, "SubBroadCastReceiver receive ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1357
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbWaitSub:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1902(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    .line 1358
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1800(Lcom/android/internal/telephony/uicc/RuimRecords;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 1360
    :cond_0
    return-void
.end method
