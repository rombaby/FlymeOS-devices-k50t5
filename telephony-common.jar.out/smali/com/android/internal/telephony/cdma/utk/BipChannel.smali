.class public abstract Lcom/android/internal/telephony/cdma/utk/BipChannel;
.super Landroid/os/Handler;
.source "BipChannel.java"


# static fields
.field private static final CHANNEL_TIMEUPDATE_PERIOD:I = 0x1388

.field public static final EVENT_ACCEPT_REQUEST:I = 0x3

.field public static final EVENT_RECEIVED_DATA:I = 0x1

.field public static final EVENT_SENT_DATA:I = 0x2

.field public static final EVENT_TIMER_TICK:I = 0x4


# instance fields
.field protected mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

.field protected mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

.field protected mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

.field protected mDataAvailableLength:I

.field protected mDataToReceiveTimer:Ljava/util/Timer;

.field protected mReceiveDone:Z

.field protected mReceiveMsgQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

.field protected mRxBuffer:[B

.field protected mRxBufferIndex:I

.field protected mRxBufferSize:I

.field protected mRxLock:Ljava/lang/Object;

.field protected mSocket:Ljava/net/Socket;

.field private mTimerLock:Ljava/lang/Object;

.field protected mTxAvaSize:I

.field protected mTxBuffer:Ljava/io/ByteArrayOutputStream;

.field protected mTxLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V
    .locals 4
    .param p1, "bs"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p2, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .param p3, "id"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mSocket:Ljava/net/Socket;

    .line 57
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxLock:Ljava/lang/Object;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxLock:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveDone:Z

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    .line 66
    const/16 v0, 0x58e

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    .line 67
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    .line 69
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    .line 71
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 73
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTimerLock:Ljava/lang/Object;

    .line 75
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    .line 78
    const-string v0, "BipChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " BipChannel id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iget-object v1, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v1, v1, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    invoke-direct {v0, v1, p3, v3, v3}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 86
    iget v0, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    if-ge v0, v1, :cond_0

    iget v0, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    if-eqz v0, :cond_0

    .line 87
    iget v0, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    .line 90
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    .line 91
    return-void
.end method


# virtual methods
.method protected dataAvailable(I)V
    .locals 8
    .param p1, "dataLength"    # I

    .prologue
    const/4 v5, 0x0

    .line 192
    const-string v1, "BipChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dataAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    .local v6, "buf":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 213
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 214
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 215
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    const/4 v7, -0x1

    .line 216
    .local v7, "len":I
    :goto_0
    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 218
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 219
    .local v4, "additionalInfo":[B
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    const/16 v1, 0x9

    const/16 v2, 0x82

    const/16 v3, 0x81

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;-><init>(III[BZ)V

    .line 222
    .local v0, "resMsg":Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5, v5, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 223
    return-void

    .line 215
    .end local v0    # "resMsg":Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    .end local v4    # "additionalInfo":[B
    .end local v7    # "len":I
    :cond_0
    int-to-byte v7, p1

    goto :goto_0
.end method

.method public getBipChannelId()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->getId()I

    move-result v0

    return v0
.end method

.method public getBipChannelParams()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    return-object v0
.end method

.method public getChannelStatus()Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    .locals 5

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    monitor-enter v3

    .line 402
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;-><init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v0    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    .local v1, "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    const-string v2, "BipChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getChannelStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-object v1

    .line 403
    .end local v1    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    .restart local v0    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    .restart local v1    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    .restart local v0    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x15

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 101
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const-string v4, "BipChannel"

    const-string v5, " handleMessage EVENT_RECEIVED_DATA"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v4, "BipChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mReceiveDone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveDone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveDone:Z

    if-eqz v4, :cond_3

    .line 107
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    .line 108
    const-string v4, "BipChannel"

    const-string v5, " EVENT_RECEIVED_DATA exception"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v5, 0x16

    invoke-virtual {v4, v5, v8, v9, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 115
    .local v1, "data":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxLock:Ljava/lang/Object;

    monitor-enter v5

    .line 116
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    if-eqz v4, :cond_2

    .line 117
    const-string v4, "BipChannel"

    const-string v6, " EVENT_RECEIVED_DATA will overwrite data"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    .line 120
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    .line 121
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    array-length v4, v1

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    .line 124
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->dataAvailable(I)V

    .line 126
    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->startDataToReceiveTimer(Landroid/os/Handler;)V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 128
    .end local v1    # "data":[B
    :cond_3
    const-string v4, "BipChannel"

    const-string v5, " delay msg EVENT_RECEIVED_DATA"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 130
    .local v2, "delayMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    .end local v2    # "delayMsg":Landroid/os/Message;
    :pswitch_1
    const-string v4, "BipChannel"

    const-string v5, " handleMessage EVENT_SENT_DATA"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_4

    .line 139
    const-string v4, "BipChannel"

    const-string v5, " EVENT_SENT_DATA exception"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v4, v10, v8, v9, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 145
    :cond_4
    new-array v0, v8, [I

    .line 146
    .local v0, "avaBufSize":[I
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    aput v4, v0, v7

    .line 147
    const-string v4, "BipChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " response avaBufSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v4, v10, v7, v7, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "avaBufSize":[I
    :pswitch_2
    const-string v4, "BipChannel"

    const-string v5, " handleMessage EVENT_ACCEPT_REQUEST"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/net/Socket;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mSocket:Ljava/net/Socket;

    .line 158
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mSocket:Ljava/net/Socket;

    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    invoke-direct {v4, v5, v6, p0}, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;-><init>(Ljava/net/Socket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 159
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    .local v3, "thd":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 162
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->notifyChannelStatusChanged()V

    goto/16 :goto_0

    .line 167
    .end local v3    # "thd":Ljava/lang/Thread;
    :pswitch_3
    const-string v4, "BipChannel"

    const-string v5, " handleMessage EVENT_TIMER_TICK"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    if-eqz v4, :cond_0

    .line 170
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->dataAvailable(I)V

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isBackgroudModOrImmediate()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLinked()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract linkDisconnect(Z)I
.end method

.method public abstract linkEstablish()I
.end method

.method public notifyChannelStatusChanged()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 257
    const-string v1, "BipChannel"

    const-string v2, " notifyChannelStatusChanged"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 298
    .local v6, "buf":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 300
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v1, :cond_1

    .line 301
    const-string v1, "BipChannel"

    const-string v2, " add bearerDesc & local address"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 312
    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 313
    .local v4, "additionalInfo":[B
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    const/16 v1, 0xa

    const/16 v2, 0x82

    const/16 v3, 0x81

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;-><init>(III[BZ)V

    .line 315
    .local v0, "resMsg":Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5, v5, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 316
    return-void
.end method

.method public receiveData(I)V
    .locals 9
    .param p1, "reqDataLen"    # I

    .prologue
    const/4 v6, 0x0

    .line 323
    const-string v3, "BipChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " receiveData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "remaining":I
    iput v6, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, "reqChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->stopDataToReceiveTimer()V

    .line 331
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxLock:Ljava/lang/Object;

    monitor-enter v4

    .line 332
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    array-length v3, v3

    if-nez v3, :cond_1

    .line 333
    :cond_0
    const-string v3, "BipChannel"

    const-string v5, " mRxBuffer is null"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v5, 0x16

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 337
    monitor-exit v4

    .line 368
    :goto_0
    return-void

    .line 340
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    add-int/2addr v3, p1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    array-length v5, v5

    if-le v3, v5, :cond_2

    .line 341
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    array-length v3, v3

    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    sub-int p1, v3, v5

    .line 342
    const/4 v2, 0x1

    .line 344
    const-string v3, "BipChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " reqDataLen>mRxBuffer.length, changed to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveDone:Z

    .line 349
    new-array v0, p1, [B

    .line 350
    .local v0, "buffer":[B
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v0, v6, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 351
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    .line 352
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    array-length v3, v3

    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    sub-int v1, v3, v5

    .line 354
    const-string v3, "BipChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " receiveData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remaining:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/16 v3, 0xff

    if-le v1, v3, :cond_3

    .line 357
    const/16 v1, 0xff

    .line 359
    :cond_3
    if-eqz v2, :cond_4

    .line 360
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v5, 0x16

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 367
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "buffer":[B
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 364
    .restart local v0    # "buffer":[B
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v5, 0x16

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public sendData([BZ)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "sendImmediately"    # Z

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 371
    const-string v1, "BipChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendData sendImmediately:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->stopDataToReceiveTimer()V

    .line 376
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-virtual {v1, p1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 378
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    array-length v3, p1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    .line 379
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    const-string v1, "BipChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendData mTxAvaSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    if-eqz p2, :cond_0

    .line 397
    :goto_0
    return-void

    .line 379
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 387
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    if-gez v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v6, v2, v3}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 391
    :cond_1
    new-array v0, v6, [I

    .line 392
    .local v0, "avaBufSize":[I
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    aput v1, v0, v5

    .line 393
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v1, v7, v5, v5, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected startDataToReceiveTimer(Landroid/os/Handler;)V
    .locals 7
    .param p1, "caller"    # Landroid/os/Handler;

    .prologue
    .line 226
    const-string v0, "BipChannel"

    const-string v1, "startDataToReceiveTimer"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 234
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/internal/telephony/cdma/utk/BipChannel$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel$1;-><init>(Lcom/android/internal/telephony/cdma/utk/BipChannel;Landroid/os/Handler;)V

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 241
    monitor-exit v6

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected stopDataToReceiveTimer()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "BipChannel"

    const-string v1, "stopDataToReceiveTimer"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    .line 253
    :cond_0
    monitor-exit v1

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BipChannel: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
