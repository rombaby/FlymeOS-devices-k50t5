.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SvlteServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received broadcast, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 44
    const-string v1, "com.mediatek.action.irat.ps.type.changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    const-string v2, "extra_ps_type"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPsType:I
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$002(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;I)I

    .line 47
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received broadcast, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPsType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPsType:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPsType:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)I

    move-result v1

    if-nez v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)Landroid/telephony/ServiceState;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCDMASS:Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 55
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChangedForSvlte(Landroid/telephony/ServiceState;)V

    .line 57
    :cond_1
    return-void

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mPsType:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 52
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mCombinedSS:Landroid/telephony/ServiceState;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)Landroid/telephony/ServiceState;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mGSMSS:Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    goto :goto_0
.end method
