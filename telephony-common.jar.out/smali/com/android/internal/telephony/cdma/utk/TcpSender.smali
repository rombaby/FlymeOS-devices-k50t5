.class Lcom/android/internal/telephony/cdma/utk/TcpSender;
.super Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.source "BipChannel.java"


# instance fields
.field private mDataToSend:[B

.field private mOutStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/net/Socket;[BLcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "data"    # [B
    .param p3, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    const/4 v4, 0x0

    .line 974
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;-><init>()V

    .line 971
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpSender;->mOutStream:Ljava/io/OutputStream;

    .line 975
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/TcpSender;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 976
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/TcpSender;->mDataToSend:[B

    .line 980
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpSender;->mOutStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :goto_0
    return-void

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/utk/TcpSender;->sendMessageToChannel(IIILjava/lang/Object;)V

    .line 983
    const-string v1, "TcpSender"

    const-string v2, " get out stream fail"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 989
    const-string v1, "TcpSender"

    const-string v2, " enter TcpSend Thread"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :try_start_0
    const-string v1, "TcpSender"

    const-string v2, " sending"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpSender;->mOutStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/TcpSender;->mDataToSend:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 995
    const-string v1, "TcpSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sent length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpSender;->mDataToSend:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/utk/TcpSender;->sendMessageToChannel(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpSender;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1010
    :goto_1
    const-string v1, "TcpSender"

    const-string v2, " exit TcpSend Thread"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    return-void

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    invoke-virtual {p0, v6, v1, v5, v7}, Lcom/android/internal/telephony/cdma/utk/TcpSender;->sendMessageToChannel(IIILjava/lang/Object;)V

    .line 1001
    const-string v1, "TcpSender"

    const-string v2, " catch IOException"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1006
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method
