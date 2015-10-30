.class public Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
.super Landroid/os/Handler;
.source "ViaGpsProcess.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/cdma/IGpsProcess;


# static fields
.field private static final CLOSE_DATA_CONNECTION:I = 0x1

.field private static final DATACALL_CONNECTED:I = 0x1

.field private static final DATACALL_DISCONNECTED:I = 0x0

.field private static final DATACALL_OTHER:I = 0x3

.field private static final DATACALL_WIFI:I = 0x2

.field private static final EVENT_GPS_APPLY_WAP_SRV:I = 0x1

.field private static final EVENT_GPS_MPC_SET_COMPLETE:I = 0x2

.field public static final EXTRAL_VIA_SIMU_REQUEST_PARAM:Ljava/lang/String; = "com.android.internal.telephony.via-simu-request-param"

.field private static final GPS_FIX_RESULT:I = 0x3

.field private static final GPS_START:I = 0x2

.field private static final GPS_STOP:I = 0x4

.field private static final GPS_WAP_SERVICE_STATUS_NO_OPT:I = 0x0

.field private static final GPS_WAP_SERVICE_STATUS_STARTING:I = 0x1

.field private static final GPS_WAP_SERVICE_STATUS_STOPPING:I = 0x2

.field public static final INTENT_VIA_GPS_FIX_RESULT_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-fix-result-notify"

.field public static final INTENT_VIA_GPS_FIX_RESULT_NOTIFY_EXTRA:Ljava/lang/String; = "via-gps-fix-result"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-mpc-setting-notify"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY_IP_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-ip"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY_PORT_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-port"

.field public static final INTENT_VIA_GPS_MPC_SETTING_RESULT_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-mpc-setting-result-notify"

.field public static final INTENT_VIA_GPS_MPC_SETTING_RESULT_NOTIFY_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-result"

.field public static final INTENT_VIA_SIMU_REQUEST:Ljava/lang/String; = "com.android.internal.telephony.via-simu-request"

.field static final LOG_TAG:Ljava/lang/String; = "VIA_GPS"

.field private static final REQUEST_DATA_CONNECTION:I


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataCallState:I

.field private mGpsWapConnConnected:Z

.field private mGpsWapSrvStatus:I

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mSimId:I

.field private mWaitforDataConnecting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "simId"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 297
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;-><init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 122
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 123
    iput p4, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSimId:I

    .line 124
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 41
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mGpsWapConnConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mGpsWapConnConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mWaitforDataConnecting:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mWaitforDataConnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 41
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;ILandroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->startGpsWapService()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p1, "x1"    # [I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->viaGpsEventHandler([I)V

    return-void
.end method

.method private getDataConnectState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 6

    .prologue
    .line 232
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 234
    .local v0, "defaultState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIA] DataCall Connection apn default state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v4, "mms"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    .line 237
    .local v1, "mmsState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIA] DataCall Connection apn MMS state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v4, "supl"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 240
    .local v2, "suplState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIA] DataCall Connection apn supl state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v3, :cond_1

    .line 244
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 250
    :goto_0
    return-object v3

    .line 245
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v3, :cond_3

    .line 248
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 250
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private onFixResultHandler(I)V
    .locals 4
    .param p1, "gpsStatus"    # I

    .prologue
    .line 215
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VIA] onFixResultHandler, gpsStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.via-gps-fix-result-notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "via-gps-fix-result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private onGpsMpcSetComplete(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 289
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VIA] onGpsMpcSetComplete, success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.via-gps-mpc-setting-result-notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "via-gps-mpc-setting-result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 293
    return-void
.end method

.method private requestAGPSTcpConnected(ILandroid/os/Message;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 285
    const-string v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VIA] requestAGPSTcpConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    .line 287
    return-void
.end method

.method private startGpsWapService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 254
    const-string v2, "VIA_GPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VIA] startGpsWapService, mDataCallState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->getDataConnectState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 257
    .local v0, "dataState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v0, :cond_0

    .line 258
    const-string v2, "VIA_GPS"

    const-string v3, "[VIA] data call is connecting, wait for connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mWaitforDataConnecting:Z

    .line 283
    :goto_0
    return-void

    .line 263
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v0, :cond_1

    .line 264
    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I

    invoke-direct {p0, v2, v6}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v3, "enableMMS"

    invoke-virtual {v2, v7, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 274
    .local v1, "result":I
    const-string v2, "VIA_GPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VIA] startGpsWapService() startUsingNetworkFeature(MMS)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-nez v1, :cond_2

    .line 276
    invoke-direct {p0, v5, v6}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    goto :goto_0

    .line 277
    :cond_2
    if-ne v1, v5, :cond_3

    .line 278
    iput v5, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I

    goto :goto_0

    .line 280
    :cond_3
    invoke-direct {p0, v7, v6}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private stopGpsWapService()V
    .locals 3

    .prologue
    .line 221
    const-string v0, "VIA_GPS"

    const-string v1, "[VIA] stopGpsWapService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I

    .line 227
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 230
    return-void
.end method

.method private viaGpsEventHandler([I)V
    .locals 4
    .param p1, "data"    # [I

    .prologue
    .line 192
    const/4 v2, 0x0

    aget v0, p1, v2

    .line 193
    .local v0, "event":I
    const/4 v2, 0x1

    aget v1, p1, v2

    .line 195
    .local v1, "gpsStatus":I
    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    :pswitch_0
    return-void

    .line 197
    :pswitch_1
    const-string v2, "VIA_GPS"

    const-string v3, "[VIA] GPS Request data connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->startGpsWapService()V

    goto :goto_0

    .line 201
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->stopGpsWapService()V

    goto :goto_0

    .line 206
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->onFixResultHandler(I)V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 186
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 189
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 173
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 174
    .local v1, "data":[I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->viaGpsEventHandler([I)V

    goto :goto_0

    .line 179
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "data":[I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 180
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 181
    .local v2, "success":Z
    :goto_1
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->onGpsMpcSetComplete(Z)V

    goto :goto_0

    .line 180
    .end local v2    # "success":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 143
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I

    .line 144
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I

    .line 145
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mGpsWapConnConnected:Z

    .line 147
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForViaGpsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "com.android.internal.telephony.via-gps-mpc-setting-notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "com.android.internal.telephony.via-simu-request"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForViaGpsEvent(Landroid/os/Handler;)V

    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    .line 163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    return-void
.end method
