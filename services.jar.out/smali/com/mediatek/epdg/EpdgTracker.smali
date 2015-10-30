.class Lcom/mediatek/epdg/EpdgTracker;
.super Ljava/lang/Object;
.source "EpdgTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;,
        Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EPDG_LOW_SCORE:I = -0x1

.field private static final FACTORY_NAME:Ljava/lang/String; = "Epdg"

.field private static final NETWORK_TYPE:Ljava/lang/String; = "EpdgNetworkFactory"

.field private static final TAG:Ljava/lang/String; = "EpdgTracker"

.field private static final WIFI_INTERFACE:Ljava/lang/String; = "wifi.interface"

.field private static sEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

.field private static sIface:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

.field private mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInterfaceObserver:Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, ""

    sput-object v0, Lcom/mediatek/epdg/EpdgTracker;->sIface:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/mediatek/epdg/EpdgTracker$1;

    invoke-direct {v0, p0}, Lcom/mediatek/epdg/EpdgTracker$1;-><init>(Lcom/mediatek/epdg/EpdgTracker;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    invoke-static {}, Lcom/mediatek/epdg/EpdgConnector;->getInstance()Lcom/mediatek/epdg/EpdgConnector;

    move-result-object v0

    sput-object v0, Lcom/mediatek/epdg/EpdgTracker;->sEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/epdg/EpdgConnection;

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    .line 77
    const-string v0, "wifi.interface"

    const-string v1, "wlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/epdg/EpdgTracker;->sIface:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgTracker;->initNetworkCapabilities()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/epdg/EpdgTracker;)[Lcom/mediatek/epdg/EpdgConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgTracker;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    return-object v0
.end method

.method private initNetworkCapabilities()V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 278
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 279
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 280
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 281
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 282
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 283
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/epdg/EpdgConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method getAllConfiguration()[Lcom/mediatek/epdg/EpdgConfig;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 310
    new-array v0, v3, [Lcom/mediatek/epdg/EpdgConfig;

    .line 311
    .local v0, "configs":[Lcom/mediatek/epdg/EpdgConfig;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 312
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mediatek/epdg/EpdgConnection;->getConfiguration()Lcom/mediatek/epdg/EpdgConfig;

    move-result-object v2

    aput-object v2, v0, v1

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-object v0
.end method

.method getConfiguration(I)Lcom/mediatek/epdg/EpdgConfig;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mediatek/epdg/EpdgConnection;->getConfiguration()Lcom/mediatek/epdg/EpdgConfig;

    move-result-object v0

    return-object v0
.end method

.method getReasonCode(I)I
    .locals 2
    .param p1, "capabilityType"    # I

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/epdg/EpdgConnection;->getReasonCode()I

    move-result v1

    return v1

    .line 292
    :pswitch_1
    const/4 v0, 0x0

    .line 293
    goto :goto_0

    .line 296
    :pswitch_2
    const/4 v0, 0x1

    .line 297
    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method setAllConfiguration([Lcom/mediatek/epdg/EpdgConfig;)V
    .locals 3
    .param p1, "configs"    # [Lcom/mediatek/epdg/EpdgConfig;

    .prologue
    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->setConfiguration(Lcom/mediatek/epdg/EpdgConfig;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method

.method setConfiguration(ILcom/mediatek/epdg/EpdgConfig;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "config"    # Lcom/mediatek/epdg/EpdgConfig;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/mediatek/epdg/EpdgConnection;->setConfiguration(Lcom/mediatek/epdg/EpdgConfig;)V

    .line 319
    return-void
.end method

.method declared-synchronized start(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 240
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/epdg/EpdgTracker;->mNMService:Landroid/os/INetworkManagementService;

    .line 242
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 243
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    new-instance v5, Lcom/mediatek/epdg/EpdgConnection;

    sget-object v6, Lcom/mediatek/epdg/EpdgTracker;->sEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    sget-object v7, Lcom/mediatek/epdg/EpdgTracker;->sIface:Ljava/lang/String;

    invoke-direct {v5, v2, v6, p2, v7}, Lcom/mediatek/epdg/EpdgConnection;-><init>(ILcom/mediatek/epdg/EpdgConnector;Landroid/os/Handler;Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 245
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgTracker;->mEpdgConnections:[Lcom/mediatek/epdg/EpdgConnection;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1, p2}, Lcom/mediatek/epdg/EpdgConnection;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_0
    new-instance v4, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    const-string v5, "Epdg"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, p0, v5, p1, v6}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;-><init>(Lcom/mediatek/epdg/EpdgTracker;Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    .line 250
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v5}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 251
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->setScoreFilter(I)V

    .line 252
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    invoke-virtual {v4}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->register()V

    .line 254
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgTracker;->mContext:Landroid/content/Context;

    .line 259
    new-instance v4, Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;-><init>(Lcom/mediatek/epdg/EpdgTracker;Lcom/mediatek/epdg/EpdgTracker$1;)V

    iput-object v4, p0, Lcom/mediatek/epdg/EpdgTracker;->mInterfaceObserver:Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :try_start_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgTracker;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgTracker;->mInterfaceObserver:Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :goto_1
    monitor-exit p0

    return-void

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "EpdgTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not register InterfaceObserver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 239
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized stop()V
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    sput-object v0, Lcom/mediatek/epdg/EpdgTracker;->sIface:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgTracker;->mFactory:Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;

    invoke-virtual {v0}, Lcom/mediatek/epdg/EpdgTracker$EpdgNetworkFactory;->unregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
