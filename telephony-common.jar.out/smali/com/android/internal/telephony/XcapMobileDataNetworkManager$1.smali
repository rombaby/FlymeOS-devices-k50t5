.class Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "XcapMobileDataNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->newRequest(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 165
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onAvailable: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # setter for: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$002(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;Landroid/net/Network;)Landroid/net/Network;

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 175
    const-string v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onLost: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # invokes: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v0, p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$100(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # getter for: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$200(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # invokes: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$300(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUnavailable()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 188
    const-string v0, "XcapMobileDataNetworkManager"

    const-string v1, "NetworkCallbackListener.onUnavailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # invokes: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v0, p0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$100(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # getter for: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$200(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    # invokes: Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->access$300(Lcom/android/internal/telephony/XcapMobileDataNetworkManager;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/XcapMobileDataNetworkManager$1;->this$0:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
