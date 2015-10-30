.class public Lcom/mediatek/rns/RnsManager;
.super Ljava/lang/Object;
.source "RnsManager.java"


# static fields
.field public static final ALLOWED_RADIO_DENY:I = 0x2

.field public static final ALLOWED_RADIO_MAX:I = 0x3

.field public static final ALLOWED_RADIO_MOBILE:I = 0x1

.field public static final ALLOWED_RADIO_NONE:I = -0x1

.field public static final ALLOWED_RADIO_WIFI:I = 0x0

.field public static final CONNECTIVITY_ACTION_HANDOVER_END:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

.field public static final CONNECTIVITY_ACTION_HANDOVER_START:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_START"

.field private static final DBG:Z = true

.field public static final EXTRA_HANDOVER_RESULT:Ljava/lang/String; = "handoverResult"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final FACTORY_STATE_CONNECTED:I = 0x1

.field public static final FACTORY_STATE_DISCONNECTED:I = 0x2

.field public static final FACTORY_STATE_UNAVAILABLE:I = 0x3

.field public static final FACTORY_STATE_UNKNOWN:I = 0x0

.field public static final RNS_AGENT_EPDG:Ljava/lang/String; = "RnsAgentEpdg"

.field public static final RNS_AGENT_TELE:Ljava/lang/String; = "RnsAgentTele"

.field public static final STATE_DEFAULT:I = 0x0

.field public static final STATE_ROVEIN:I = 0x1

.field public static final STATE_ROVEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RnsManager"


# instance fields
.field private final mService:Lcom/mediatek/rns/IRnsManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/rns/IRnsManager;)V
    .locals 1
    .param p1, "service"    # Lcom/mediatek/rns/IRnsManager;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "missing IRnsManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/IRnsManager;

    iput-object v0, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    .line 96
    return-void
.end method


# virtual methods
.method public getAllowedRadioList(I)I
    .locals 2
    .param p1, "capability"    # I

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/rns/IRnsManager;->getAllowedRadioList(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRnsState()I
    .locals 2

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    invoke-interface {v1}, Lcom/mediatek/rns/IRnsManager;->getRnsState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTryAnotherRadioType(I)I
    .locals 2
    .param p1, "failedNetType"    # I

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/rns/IRnsManager;->getTryAnotherRadioType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public registerRnsAgent(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/rns/IRnsManager;->registerRnsAgent(Ljava/lang/String;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method
