.class public Lcom/android/internal/telephony/cdma/utk/BipService;
.super Ljava/lang/Object;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BipService"

.field private static sInstance:Lcom/android/internal/telephony/cdma/utk/BipService;


# instance fields
.field private final APN_DEFFAULT:Ljava/lang/String;

.field private final APN_ENABLE_FEATURE:Ljava/lang/String;

.field private final APN_PASSWORD:Ljava/lang/String;

.field private final APN_URI:Landroid/net/Uri;

.field private final APN_USER_NAME:Ljava/lang/String;

.field private final BIPCHANNEL_MAX:I

.field private final DEFAULT_NETWORK_TYPE:I

.field private mBipChannelHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/utk/BipChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mBipChannelLock:Ljava/lang/Object;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

.field private mContext:Landroid/content/Context;

.field private mLocalIps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mUtkService:Landroid/os/Handler;

.field private mWaitConnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstance:Lcom/android/internal/telephony/cdma/utk/BipService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->BIPCHANNEL_MAX:I

    .line 51
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    .line 52
    const-string v1, "ctwap"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_DEFFAULT:Ljava/lang/String;

    .line 53
    const-string v1, "ctwap@mycdma.cn"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_USER_NAME:Ljava/lang/String;

    .line 54
    const-string v1, "vnet.mobi"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_PASSWORD:Ljava/lang/String;

    .line 55
    const-string v1, "enableSUPL"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_ENABLE_FEATURE:Ljava/lang/String;

    .line 56
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->DEFAULT_NETWORK_TYPE:I

    .line 60
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    .line 62
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    .line 64
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    .line 65
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    .line 69
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    .line 74
    const-string v1, "BipService"

    const-string v2, "BipService version 1.3.1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    .line 77
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    .line 78
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method private CreatNewBipChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)Lcom/android/internal/telephony/cdma/utk/BipChannel;
    .locals 9
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 421
    const-string v3, "BipService"

    const-string v5, " CreatNewBipChannel"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v1, 0x0

    .line 427
    .local v1, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    const/4 v2, 0x1

    .local v2, "id":I
    :goto_0
    if-gt v2, v8, :cond_0

    .line 428
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v5

    .line 429
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-object v1, v0

    .line 430
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    if-nez v1, :cond_1

    .line 436
    :cond_0
    if-le v2, v8, :cond_2

    .line 437
    const-string v3, "BipService"

    const-string v5, " no free channel"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 467
    :goto_1
    return-object v3

    .line 430
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 427
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 443
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;

    .end local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .line 445
    .restart local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3, v7, v4}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    .line 463
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v4

    .line 464
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v1

    .line 467
    goto :goto_1

    .line 447
    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 449
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;

    .end local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .line 451
    .restart local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3, v7, v4}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    goto :goto_2

    .line 453
    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 455
    const-string v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " tcp server, immediateLink="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " backgrountMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;

    .end local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .restart local v1    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    goto :goto_2

    .line 459
    :cond_5
    const-string v3, "BipService"

    const-string v5, " channel type not support"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 460
    goto :goto_1

    .line 465
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private FindBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 491
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 493
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FindBipChannelById:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-object v0

    .line 493
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private FindBipChannelToLink()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/BipChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    const-string v3, "BipService"

    const-string v4, " FindBipChannelToLink"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v1, "chs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/utk/BipChannel;>;"
    const/4 v2, 0x1

    .local v2, "id":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 477
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v4

    .line 478
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 479
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->isBackgroudModOrImmediate()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->isLinked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 481
    const-string v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 486
    :cond_1
    return-object v1
.end method

.method private RemoveBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 3
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    const-string v0, "BipService"

    const-string v1, " RemoveBipChannel null ch"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_0
    return-void

    .line 506
    :cond_0
    const-string v0, "BipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RemoveBipChannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/utk/BipService;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/utk/BipService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/utk/BipService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/utk/BipService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/utk/BipService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelToLink()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p1, "x1"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->onNetworkConnected(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/telephony/cdma/utk/BipService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 100
    const-string v0, "BipService"

    const-string v1, " Bip getInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstance:Lcom/android/internal/telephony/cdma/utk/BipService;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "BipService"

    const-string v1, " new BipService"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstance:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 106
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstance:Lcom/android/internal/telephony/cdma/utk/BipService;

    return-object v0
.end method

.method private onNetworkConnected(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 10
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x0

    .line 116
    const-string v5, "BipService"

    const-string v6, " onNetworkConnected"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->linkEstablish()I

    move-result v4

    .line 123
    .local v4, "ret":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelParams()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v2

    .line 125
    .local v2, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    if-nez v4, :cond_4

    .line 126
    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v5, :cond_0

    .line 128
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;-><init>()V

    .line 130
    .local v3, "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 131
    iget-object v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 132
    iget v5, p1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 133
    iget-object v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 135
    :try_start_0
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/utk/OtherAddress;-><init>()V

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 136
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    const/16 v6, 0x21

    iput v6, v5, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->addressType:I

    .line 137
    iget-object v6, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    iput-object v5, v6, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 144
    .local v0, "arg2":I
    iget v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    iget v6, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    if-eq v5, v6, :cond_3

    .line 145
    const/4 v0, 0x4

    .line 148
    :cond_3
    invoke-virtual {p0, v9, v8, v0, v3}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 138
    .end local v0    # "arg2":I
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v5, "BipService"

    const-string v6, " UnknownHostException"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v3    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->RemoveBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 153
    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v5, :cond_0

    .line 154
    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {p0, v9, v5, v6, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setBipApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 515
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setBipApnParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " passwd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v11, 0x0

    .line 518
    .local v11, "numeric":Ljava/lang/String;
    const/4 v9, 0x0

    .line 519
    .local v9, "mcc":Ljava/lang/String;
    const/4 v10, 0x0

    .line 520
    .local v10, "mnc":Ljava/lang/String;
    const-string v7, "supl"

    .line 522
    .local v7, "apnType":Ljava/lang/String;
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 524
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 525
    const/4 v8, 0x0

    .line 526
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 527
    const/4 v1, 0x3

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 529
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = \'BIP\' and numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 534
    if-eqz v8, :cond_0

    .line 535
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 536
    .local v13, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "BIP"

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v1, "apn"

    invoke-virtual {v13, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, "type"

    invoke-virtual {v13, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v1, "mcc"

    invoke-virtual {v13, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v1, "mnc"

    invoke-virtual {v13, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 547
    .local v12, "row":Landroid/net/Uri;
    if-eqz v12, :cond_1

    .line 548
    const-string v1, "BipService"

    const-string v2, " insert a new record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .end local v12    # "row":Landroid/net/Uri;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 559
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 550
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "row":Landroid/net/Uri;
    .restart local v13    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string v1, "BipService"

    const-string v2, " fail to insert a new record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    .end local v12    # "row":Landroid/net/Uri;
    :cond_2
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " record"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v13, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public closeChannel(IZ)V
    .locals 9
    .param p1, "chId"    # I
    .param p2, "listen"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x17

    .line 269
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " closeChannel id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 272
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->linkDisconnect(Z)I

    move-result v1

    if-nez v1, :cond_0

    .line 274
    const-string v1, "BipService"

    const-string v2, " closeChannel OK"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, v4, v6, v6, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 283
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->RemoveBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 288
    :goto_1
    return-void

    .line 278
    :cond_0
    const-string v1, "BipService"

    const-string v2, " closeChannel fail"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v4, v7, v8, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p0, v4, v7, v8, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstance:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 97
    return-void
.end method

.method public getChannelStatus(I)V
    .locals 7
    .param p1, "chId"    # I

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x0

    .line 339
    const-string v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getChannelStatus id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 342
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getChannelStatus()Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    move-result-object v1

    .line 344
    .local v1, "cs":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    invoke-virtual {p0, v6, v5, v5, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 350
    .end local v1    # "cs":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v6, v2, v3, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public openChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)V
    .locals 13
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v9, 0x14

    const/4 v8, 0x1

    .line 161
    const-string v5, "BipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " openChannel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    if-eq v5, v12, :cond_0

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 165
    const-string v5, "BipService"

    const-string v6, " not surpot bearerType"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v5, 0x5

    invoke-virtual {p0, v9, v8, v5, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 266
    :goto_0
    return-void

    .line 172
    :cond_0
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    .line 176
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->CreatNewBipChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v1

    .line 178
    .local v1, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-nez v1, :cond_1

    .line 179
    const-string v5, "BipService"

    const-string v6, " get null channel"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v5, 0x2

    invoke-virtual {p0, v9, v8, v5, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_1
    const/4 v2, -0x1

    .line 186
    .local v2, "netConnected":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 187
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_2

    .line 188
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->RemoveBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 189
    invoke-virtual {p0, v9, v8, v12, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_2
    const-string v5, "BipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " openChannel network tate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    .line 196
    const/4 v2, 0x0

    .line 216
    :cond_3
    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_4

    .line 218
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->RemoveBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 220
    invoke-virtual {p0, v9, v8, v12, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_4
    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-nez v5, :cond_5

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v5, :cond_5

    .line 227
    const-string v5, "BipService"

    const-string v6, " open channel ondemand"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;-><init>()V

    .line 231
    .local v4, "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 232
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 233
    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 235
    invoke-virtual {p0, v9, v10, v10, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 242
    .end local v4    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_5
    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v5, :cond_7

    .line 243
    const-string v5, "BipService"

    const-string v6, " open channel background mode"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;-><init>()V

    .line 247
    .restart local v4    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 248
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 249
    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "arg2":I
    iget v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    if-eq v5, v6, :cond_6

    .line 253
    const-string v5, "BipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " bufferSize chanded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x4

    .line 257
    :cond_6
    invoke-virtual {p0, v9, v10, v0, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 261
    .end local v0    # "arg2":I
    .end local v4    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_7
    if-nez v2, :cond_8

    .line 262
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->onNetworkConnected(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    goto/16 :goto_0

    .line 264
    :cond_8
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    goto/16 :goto_0
.end method

.method public receiveData(II)V
    .locals 5
    .param p1, "chId"    # I
    .param p2, "reqDataLen"    # I

    .prologue
    .line 291
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " receiveData id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqDataLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 294
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_1

    .line 295
    const/16 v1, 0xe4

    if-le p2, v1, :cond_0

    .line 296
    const/16 p2, 0xe4

    .line 297
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " change reqDataLen to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->receiveData(I)V

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_1
    const/16 v1, 0x16

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public sendData(I[BZ)V
    .locals 8
    .param p1, "chId"    # I
    .param p2, "data"    # [B
    .param p3, "sendImmediately"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x15

    const/4 v5, 0x1

    .line 308
    const-string v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sendData chId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sendImmediately:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-nez p2, :cond_0

    .line 310
    const-string v2, "BipService"

    const-string v3, " sendData, but no data"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v2, 0x3

    invoke-virtual {p0, v6, v5, v2, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 336
    :goto_0
    return-void

    .line 316
    :cond_0
    const-string v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sendData length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->FindBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 319
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelParams()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v1

    .line 321
    .local v1, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->isLinked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v2, :cond_1

    .line 324
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->linkEstablish()I

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {p0, v6, v5, v5, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendData([BZ)V

    goto :goto_0

    .line 333
    .end local v1    # "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v6, v5, v2, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public sendResponseToUtk(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 110
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendResponseToUtk:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method
