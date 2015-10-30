.class Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;
.super Ljava/util/TimerTask;
.source "AutoSetBrightnessTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->getTimerTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;


# direct methods
.method constructor <init>(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    # getter for: Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;
    invoke-static {v2}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->access$200(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    # getter for: Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mStep:I
    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->access$100(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;->getListData(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 55
    .local v1, "value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    # operator++ for: Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mStep:I
    invoke-static {v2}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->access$108(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)I

    .line 57
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->updateBrightness(I)V
    invoke-static {v2, v3}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->access$300(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;I)V

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    # getter for: Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;
    invoke-static {v2}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->access$200(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$AdjustListData;->getListLastData()I

    move-result v0

    .line 60
    .local v0, "targetValue":I
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    # getter for: Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->mSupportLcdMaxContrast:Z
    invoke-static {v2}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->access$400(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    # invokes: Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->setMaxContrast()V
    invoke-static {v2}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->access$500(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;)V

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;->cancel()Z

    .line 64
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z
    invoke-static {v2, v3}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->access$602(Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;Z)Z

    .line 65
    const-string v2, "AUTOADJUST"

    const-string v3, "---task Finished!---"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
