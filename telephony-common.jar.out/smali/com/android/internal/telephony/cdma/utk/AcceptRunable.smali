.class Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
.super Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.source "BipChannel.java"


# instance fields
.field private mBipChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/BipChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mPort:I

.field private mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method constructor <init>(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;-><init>()V

    .line 821
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    .line 824
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mPort:I

    .line 825
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->addRspHandler(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 829
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AcceptRunable"

    const-string v2, " get server socket fail"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addRspHandler(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 3
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 844
    :goto_0
    return-void

    .line 839
    :cond_0
    const-string v0, "AcceptRunable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " addRspHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeRspHandler(Lcom/android/internal/telephony/cdma/utk/BipChannel;)Z
    .locals 4
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    const/4 v0, 0x0

    .line 847
    if-nez p1, :cond_0

    .line 869
    :goto_0
    return v0

    .line 850
    :cond_0
    const-string v1, "AcceptRunable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " removeRspHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 852
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 853
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 854
    const-string v0, "AcceptRunable"

    const-string v2, " stop listen this port"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 859
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    :cond_1
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public run()V
    .locals 8

    .prologue
    .line 874
    const-string v4, "AcceptRunable"

    const-string v5, " enter AcceptRunable"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mRun:Z

    if-eqz v4, :cond_2

    .line 877
    const/4 v3, 0x0

    .line 881
    .local v3, "socket":Ljava/net/Socket;
    :try_start_0
    const-string v4, "AcceptRunable"

    const-string v5, "linsten..."

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 883
    const-string v4, "AcceptRunable"

    const-string v5, "accepted"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_1
    if-eqz v3, :cond_0

    .line 889
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 890
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 891
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_1

    .line 892
    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v6, v7, v3}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 893
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendMessage(Landroid/os/Message;)Z

    .line 903
    .end local v2    # "m":Landroid/os/Message;
    :goto_2
    monitor-exit v5

    goto :goto_0

    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 884
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "AcceptRunable"

    const-string v5, "catch error, exit AcceptRunable"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 895
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :cond_1
    :try_start_2
    const-string v4, "AcceptRunable"

    const-string v6, "no ch wait socket"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 898
    :try_start_3
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 899
    :catch_1
    move-exception v4

    goto :goto_2

    .line 907
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    .end local v3    # "socket":Ljava/net/Socket;
    :cond_2
    const-string v4, "AcceptRunable"

    const-string v5, " exit AcceptRunable"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    return-void
.end method
