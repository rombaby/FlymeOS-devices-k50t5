.class abstract Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.super Ljava/lang/Object;
.source "BipChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

.field protected mRun:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mRun:Z

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    return-void
.end method


# virtual methods
.method public sendMessageToChannel(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 744
    const-string v1, "BipRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendMessageToChannel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    if-nez v1, :cond_0

    .line 746
    const-string v1, "BipRunnable"

    const-string v2, " no caller"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 751
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 755
    const-string v0, "BipRunnable"

    const-string v1, " stop"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mRun:Z

    .line 757
    return-void
.end method
